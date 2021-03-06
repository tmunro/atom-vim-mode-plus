# Refactoring status: 100%
_ = require 'underscore-plus'
{getAncestors, getParent} = require './introspection'
settings = require './settings'

class Base
  complete: false
  recodable: false
  canceled: false

  defaultCount: 1
  requireInput: false

  constructor: (@vimState) ->
    {@editor, @editorElement} = @vimState
    if settings.get('showHoverOnOperate')
      @vimState.hover.setPoint() if @hoverText?
      hover =
        switch settings.get('showHoverOnOperateIcon')
          when 'emoji' then @hoverText if @hoverText?
          when 'icon'  then @hoverIcon if @hoverIcon?
          else null
      @vimState.hover.add hover if hover?

    @initialize?()

  # Operation processor execute only when isComplete() return true.
  # If false, operation processor postpone its execution.
  isComplete: ->
    return true if @isCanceled()
    return false if (@requireInput and not @input)

    if @target?
      @target.isComplete()
    else
      @complete

  isCanceled: -> @canceled
  isRecordable: -> @recodable

  cancel: ->
    unless @vimState.isMode('visual') or @vimState.isMode('insert')
      @vimState.activate('reset')

  abort: ->
    throw new OperationAbortedError('Aborted')

  getKind: ->
    @constructor.name

  getCount: ->
    # Setting count as instance variable make operation repeatable with same count.
    @count ?= @vimState?.count.get() ? @defaultCount
    @count

  new: (klassName, properties={}) ->
    obj = new (Base.findClass(klassName))(@vimState)
    _.extend(obj, properties)

  readInput: ({charsMax}={}) ->
    charsMax ?= 1
    @vimState.input.readInput {charsMax},
      onConfirm: (input) =>
        @input = input
        @complete = true
        @vimState.operationStack.process()
      onCancel: =>
        # FIXME
        # Cancelation currently depending on operationStack to call cancel()
        # Should be better to observe cancel event on operationStack side.
        @canceled = true
        @vimState.operationStack.process()

  # Expected to be called by child class.
  # It automatically create typecheck function like
  #
  # e.g.
  #   class Operator extends base
  #     @extends()
  #
  # Above code automatically define following function.
  #
  # Base::isOperator: ->
  #   this instanceof Operator
  #
  children = []
  @extend: ->
    klass = this
    Base::["is#{klass.name}"] = ->
      this instanceof klass
    children.push klass

  @findClass: (klassName) ->
    # [FIXME] currently not care acncesstor's chain.
    # Not accurate if there is different class with same.
    _.detect children, (child) ->
      child.name is klassName

  @getAncestors: ->
    getAncestors(this)

  @getParent: ->
    getParent(this)

class OperationAbortedError extends Base
  @extend()
  constructor: (@message) ->
    @name = 'OperationAborted Error'

module.exports = Base
