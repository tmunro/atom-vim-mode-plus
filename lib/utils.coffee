# Refactoring status: 100%
fs = require 'fs-plus'
settings = require './settings'
{Range, Point} = require 'atom'
_ = require 'underscore-plus'

# Include module(object which normaly provides set of methods) to klass
include = (klass, module) ->
  for key, value of module
    klass::[key] = value

debug = (message) ->
  return unless settings.get('debug')
  msg += "\n"
  switch settings.get('debugOutput')
    when 'console'
      console.log message
    when 'file'
      filePath = fs.normalize settings.get('debugOutputFilePath')
      if fs.existsSync(filePath)
        fs.appendFileSync filePath, msg

selectLines = (selection, rowRange=null) ->
  {editor} = selection
  [startRow, endRow] = if rowRange? then rowRange else selection.getBufferRowRange()
  range = editor.bufferRangeForBufferRow(startRow, includeNewline: true)
  range = range.union(editor.bufferRangeForBufferRow(endRow, includeNewline: true))
  selection.setBufferRange(range)

getNonBlankCharPositionForRow = (editor, row) ->
  scanRange = editor.bufferRangeForBufferRow(row)
  point = null
  editor.scanInBufferRange /^[ \t]*/, scanRange, ({range}) ->
    point = range.end.translate([0, +1])
  point

# Return function to restore editor's scrollTop and fold state.
saveEditorState = (editor) ->
  scrollTop = editor.getScrollTop()
  foldStartRows = editor.displayBuffer.findFoldMarkers().map (m) ->
    editor.displayBuffer.foldForMarker(m).getStartRow()
  ->
    for row in foldStartRows.reverse() when not editor.isFoldedAtBufferRow(row)
      editor.foldBufferRow row
    editor.setScrollTop scrollTop

getKeystrokeForEvent = (event) ->
  keyboardEvent = event.originalEvent.originalEvent ? event.originalEvent
  atom.keymaps.keystrokeForKeyboardEvent(keyboardEvent)

isLinewiseRange = (range) ->
  (range.start.column is 0) and (range.end.column is 0) and (not range.isEmpty())

rangeToBeginningOfFileFromPoint = (point) ->
  new Range(Point.ZERO, point)

rangeToEndOfFileFromPoint = (point) ->
  new Range(point, Point.INFINITY)

isIncludeNonEmptySelection = (selections) ->
  selections.some((s) -> not s.isEmpty())

sortRanges = (ranges) ->
  ranges.sort((a, b) -> a.compare(b))

setSelectionBufferRangeSafely = (selection, range) ->
  if range
    selection.setBufferRange(range)

# return adjusted index fit whitin length
# return -1 if list is empty.
getIndex = (index, list) ->
  return -1 unless list.length
  index = index % list.length
  if (index >= 0) then index else (list.length + index)

getVisibleBufferRange = (editor) ->
  [startRow, endRow] = editor.getVisibleRowRange().map (row) ->
    editor.bufferRowForScreenRow row
  new Range([startRow, 0], [endRow, Infinity])

# NOTE: depending on getVisibleRowRange
selectVisibleBy = (editor, entries, fn) ->
  range = getVisibleBufferRange.bind(this)(editor)
  (e for e in entries when range.containsRange(fn(e)))

swrap = (selection) ->
  scope = 'vimModePlus'
  get: ->
    selection.marker.getProperties()[scope] ? {}

  set: (newProp) ->
    prop = {}
    prop[scope] = newProp
    selection.marker.setProperties prop

  update: (value) ->
    # @get() get result of getProperties() which is safe to extend.
    # So OK to directly extend.
    @set _.deepExtend(@get(), value)

  clear: ->
    @set null

  preserveCharacterwise: ->
    @update
      characterwise:
        range: selection.getBufferRange()
        reversed: selection.isReversed()

  restoreCharacterwise: ->
    {characterwise} = @get()
    return unless characterwise
    {range: {start, end}, reversed} = characterwise
    rows = selection.getBufferRowRange()

    reversedChanged = (selection.isReversed() isnt reversed) # reverse status changed
    rows.reverse() if reversedChanged

    [startRow, endRow] = rows
    start.row = startRow
    end.row = endRow
    range = new Range(start, end)

    if reversedChanged
      rangeTaranslation = [[0, +1], [0, -1]]
      rangeTaranslation.reverse() if selection.isReversed()
      range = range.translate(rangeTaranslation...)

    selection.setBufferRange(range)
    # [NOTE] Important! reset to null after restored.
    @clear()

module.exports = {
  include
  debug
  selectLines
  getNonBlankCharPositionForRow
  saveEditorState
  getKeystrokeForEvent
  isLinewiseRange
  rangeToBeginningOfFileFromPoint
  rangeToEndOfFileFromPoint
  isIncludeNonEmptySelection
  sortRanges
  setSelectionBufferRangeSafely
  getIndex
  getVisibleBufferRange
  selectVisibleBy
  swrap
}
