# TOM(TextObject, Operator, Motion) report.

vim-mode-plus version: 0.1.0  
*generated at 2015-09-27T16:01:46.762Z*

- [Base](#base) *Not exported*
  - [InsertMode](#insertmode--base) *Not exported*
    - [CopyFromLineAbove](#copyfromlineabove--insertmode)
      - [CopyFromLineBelow](#copyfromlinebelow--copyfromlineabove)
    - [InsertRegister](#insertregister--insertmode)
  - [Motion](#motion--base) *Not exported*
    - [CurrentSelection](#currentselection--motion)
    - [Find](#find--motion)
      - [FindBackwards](#findbackwards--find)
      - [RepeatFind](#repeatfind--find)
        - [RepeatFindReverse](#repeatfindreverse--repeatfind)
      - [Till](#till--find)
        - [TillBackwards](#tillbackwards--till)
    - [MoveDown](#movedown--motion)
    - [MoveLeft](#moveleft--motion)
    - [MoveRight](#moveright--motion)
    - [MoveToBeginningOfLine](#movetobeginningofline--motion)
    - [MoveToEndOfWord](#movetoendofword--motion)
      - [MoveToEndOfWholeWord](#movetoendofwholeword--movetoendofword)
    - [MoveToFirstCharacterOfLine](#movetofirstcharacterofline--motion)
      - [MoveToFirstCharacterOfLineDown](#movetofirstcharacteroflinedown--movetofirstcharacterofline)
        - [MoveToFirstCharacterOfLineAndDown](#movetofirstcharacteroflineanddown--movetofirstcharacteroflinedown)
      - [MoveToFirstCharacterOfLineUp](#movetofirstcharacteroflineup--movetofirstcharacterofline)
    - [MoveToFirstLine](#movetofirstline--motion)
      - [MoveToLastLine](#movetolastline--movetofirstline)
    - [MoveToLastCharacterOfLine](#movetolastcharacterofline--motion)
    - [MoveToLastNonblankCharacterOfLineAndDown](#movetolastnonblankcharacteroflineanddown--motion)
    - [MoveToMark](#movetomark--motion)
      - [MoveToMarkLine](#movetomarkline--movetomark)
    - [MoveToNextParagraph](#movetonextparagraph--motion)
    - [MoveToNextWord](#movetonextword--motion)
      - [MoveToNextWholeWord](#movetonextwholeword--movetonextword)
    - [MoveToPreviousParagraph](#movetopreviousparagraph--motion)
    - [MoveToPreviousWholeWord](#movetopreviouswholeword--motion)
    - [MoveToPreviousWord](#movetopreviousword--motion)
    - [MoveToRelativeLine](#movetorelativeline--motion)
    - [MoveToTopOfScreen](#movetotopofscreen--motion)
      - [MoveToBottomOfScreen](#movetobottomofscreen--movetotopofscreen)
      - [MoveToMiddleOfScreen](#movetomiddleofscreen--movetotopofscreen)
    - [MoveUp](#moveup--motion)
    - [ScrollFullScreenDown](#scrollfullscreendown--motion)
      - [ScrollFullScreenUp](#scrollfullscreenup--scrollfullscreendown)
      - [ScrollHalfScreenDown](#scrollhalfscreendown--scrollfullscreendown)
        - [ScrollHalfScreenUp](#scrollhalfscreenup--scrollhalfscreendown)
    - [SearchBase](#searchbase--motion) *Not exported*
      - [BracketMatchingMotion](#bracketmatchingmotion--searchbase)
      - [RepeatSearch](#repeatsearch--searchbase)
        - [RepeatSearchReverse](#repeatsearchreverse--repeatsearch)
      - [Search](#search--searchbase)
        - [SearchBackwards](#searchbackwards--search)
      - [SearchCurrentWord](#searchcurrentword--searchbase)
        - [SearchCurrentWordBackwards](#searchcurrentwordbackwards--searchcurrentword)
  - [Operator](#operator--base)
    - [Delete](#delete--operator)
      - [DeleteLeft](#deleteleft--delete)
      - [DeleteRight](#deleteright--delete)
      - [DeleteToLastCharacterOfLine](#deletetolastcharacterofline--delete)
    - [Increase](#increase--operator)
      - [Decrease](#decrease--increase)
    - [Indent](#indent--operator)
      - [AutoIndent](#autoindent--indent)
      - [Outdent](#outdent--indent)
    - [Insert](#insert--operator)
    - [Insert](#insert--operator)
      - [Change](#change--insert)
        - [ChangeToLastCharacterOfLine](#changetolastcharacterofline--change)
        - [Substitute](#substitute--change)
        - [SubstituteLine](#substituteline--change)
      - [InsertAboveWithNewline](#insertabovewithnewline--insert)
        - [InsertBelowWithNewline](#insertbelowwithnewline--insertabovewithnewline)
      - [InsertAfter](#insertafter--insert)
      - [InsertAfterEndOfLine](#insertafterendofline--insert)
      - [InsertAtBeginningOfLine](#insertatbeginningofline--insert)
      - [ReplaceMode](#replacemode--insert)
      - [ReplaceMode](#replacemode--insert)
    - [Join](#join--operator)
    - [Mark](#mark--operator)
    - [PutBefore](#putbefore--operator)
      - [PutAfter](#putafter--putbefore)
    - [Repeat](#repeat--operator)
    - [Replace](#replace--operator)
    - [ReplaceWithRegister](#replacewithregister--operator)
    - [Select](#select--operator)
    - [ToggleLineComments](#togglelinecomments--operator)
    - [TransformString](#transformstring--operator) *Not exported*
      - [CamelCase](#camelcase--transformstring)
      - [DashCase](#dashcase--transformstring)
      - [LowerCase](#lowercase--transformstring)
      - [SnakeCase](#snakecase--transformstring)
      - [Surround](#surround--transformstring)
        - [DeleteSurround](#deletesurround--surround)
          - [ChangeSurround](#changesurround--deletesurround)
            - [ChangeSurroundAnyPair](#changesurroundanypair--changesurround)
          - [DeleteSurroundAnyPair](#deletesurroundanypair--deletesurround)
        - [SurroundWord](#surroundword--surround)
      - [ToggleCase](#togglecase--transformstring)
        - [ToggleCaseAndMoveRight](#togglecaseandmoveright--togglecase)
      - [UpperCase](#uppercase--transformstring)
    - [Yank](#yank--operator)
      - [YankLine](#yankline--yank)
  - [OperatorError](#operatorerror--base)
  - [Scroll](#scroll--base) *Not exported*
    - [ScrollCursor](#scrollcursor--scroll) *Not exported*
      - [ScrollCursorToBottom](#scrollcursortobottom--scrollcursor)
        - [ScrollCursorToBottomLeave](#scrollcursortobottomleave--scrollcursortobottom)
      - [ScrollCursorToMiddle](#scrollcursortomiddle--scrollcursor)
        - [ScrollCursorToMiddleLeave](#scrollcursortomiddleleave--scrollcursortomiddle)
      - [ScrollCursorToTop](#scrollcursortotop--scrollcursor)
        - [ScrollCursorToTopLeave](#scrollcursortotopleave--scrollcursortotop)
    - [ScrollDown](#scrolldown--scroll)
      - [ScrollUp](#scrollup--scrolldown)
    - [ScrollHorizontal](#scrollhorizontal--scroll) *Not exported*
      - [ScrollCursorToLeft](#scrollcursortoleft--scrollhorizontal)
      - [ScrollCursorToRight](#scrollcursortoright--scrollhorizontal)
  - [TextObject](#textobject--base) *Not exported*
    - [CurrentLine](#currentline--textobject)
    - [Entire](#entire--textobject)
    - [Fold](#fold--textobject)
      - [Function](#function--fold)
    - [Pair](#pair--textobject) *Not exported*
      - [AngleBracket](#anglebracket--pair)
      - [AnyPair](#anypair--pair)
      - [BackTick](#backtick--pair)
      - [CurlyBracket](#curlybracket--pair)
      - [DoubleQuote](#doublequote--pair)
      - [Parenthesis](#parenthesis--pair)
      - [SingleQuote](#singlequote--pair)
      - [SquareBracket](#squarebracket--pair)
      - [Tag](#tag--pair)
    - [Paragraph](#paragraph--textobject)
      - [Comment](#comment--paragraph)
      - [Indentation](#indentation--paragraph)
    - [Word](#word--textobject)
      - [WholeWord](#wholeword--word)
  - [VisualBlockwise](#visualblockwise--base)
    - [BlockwiseDeleteToLastCharacterOfLine](#blockwisedeletetolastcharacterofline--visualblockwise)
      - [BlockwiseChangeToLastCharacterOfLine](#blockwisechangetolastcharacterofline--blockwisedeletetolastcharacterofline)
    - [BlockwiseEscape](#blockwiseescape--visualblockwise)
    - [BlockwiseInsertAtBeginningOfLine](#blockwiseinsertatbeginningofline--visualblockwise)
      - [BlockwiseInsertAfterEndOfLine](#blockwiseinsertafterendofline--blockwiseinsertatbeginningofline)
    - [BlockwiseMoveDown](#blockwisemovedown--visualblockwise)
      - [BlockwiseMoveUp](#blockwisemoveup--blockwisemovedown)
    - [BlockwiseOtherEnd](#blockwiseotherend--visualblockwise)
    - [BlockwiseRestoreCharacterwise](#blockwiserestorecharacterwise--visualblockwise)
    - [BlockwiseSelect](#blockwiseselect--visualblockwise)

## Base
*Not exported*
- ::complete: ```false```
- ::recodable: ```false```
- ::canceled: ```false```
- ::defaultCount: ```1```
- ::requireInput: ```false```
- ::isComplete`()`
- ::isCanceled`()`
- ::isRecordable`()`
- ::cancel`()`
- ::abort`()`
- ::getKind`()`
- ::getCount`()`
- ::new`(klassName, properties)`
- ::readInput`(_arg)`
- ::isOperationAbortedError`()`
- ::isOperatorError`()`
- ::isOperator`()`
- ::isSelect`()`
- ::isDelete`()`
- ::isDeleteRight`()`
- ::isDeleteLeft`()`
- ::isDeleteToLastCharacterOfLine`()`
- ::isTransformString`()`
- ::isToggleCase`()`
- ::isToggleCaseAndMoveRight`()`
- ::isUpperCase`()`
- ::isLowerCase`()`
- ::isCamelCase`()`
- ::isSnakeCase`()`
- ::isDashCase`()`
- ::isSurround`()`
- ::isDeleteSurround`()`
- ::isDeleteSurroundAnyPair`()`
- ::isChangeSurround`()`
- ::isChangeSurroundAnyPair`()`
- ::isYank`()`
- ::isYankLine`()`
- ::isJoin`()`
- ::isRepeat`()`
- ::isMark`()`
- ::isIncrease`()`
- ::isDecrease`()`
- ::isIndent`()`
- ::isOutdent`()`
- ::isAutoIndent`()`
- ::isPutBefore`()`
- ::isPutAfter`()`
- ::isReplaceWithRegister`()`
- ::isToggleLineComments`()`
- ::isInsert`()`
- ::isReplaceMode`()`
- ::isInsertAfter`()`
- ::isInsertAfterEndOfLine`()`
- ::isInsertAtBeginningOfLine`()`
- ::isInsertAboveWithNewline`()`
- ::isInsertBelowWithNewline`()`
- ::isChange`()`
- ::isSubstitute`()`
- ::isSubstituteLine`()`
- ::isChangeToLastCharacterOfLine`()`
- ::isReplace`()`
- ::isMotion`()`
- ::isCurrentSelection`()`
- ::isMoveLeft`()`
- ::isMoveRight`()`
- ::isMoveUp`()`
- ::isMoveDown`()`
- ::isMoveToPreviousWord`()`
- ::isMoveToPreviousWholeWord`()`
- ::isMoveToNextWord`()`
- ::isMoveToNextWholeWord`()`
- ::isMoveToEndOfWord`()`
- ::isMoveToEndOfWholeWord`()`
- ::isMoveToNextParagraph`()`
- ::isMoveToPreviousParagraph`()`
- ::isMoveToBeginningOfLine`()`
- ::isMoveToLastCharacterOfLine`()`
- ::isMoveToLastNonblankCharacterOfLineAndDown`()`
- ::isMoveToFirstCharacterOfLine`()`
- ::isMoveToFirstCharacterOfLineUp`()`
- ::isMoveToFirstCharacterOfLineDown`()`
- ::isMoveToFirstCharacterOfLineAndDown`()`
- ::isMoveToFirstLine`()`
- ::isMoveToLastLine`()`
- ::isMoveToRelativeLine`()`
- ::isMoveToTopOfScreen`()`
- ::isMoveToBottomOfScreen`()`
- ::isMoveToMiddleOfScreen`()`
- ::isScrollFullScreenDown`()`
- ::isScrollFullScreenUp`()`
- ::isScrollHalfScreenDown`()`
- ::isScrollHalfScreenUp`()`
- ::isFind`()`
- ::isFindBackwards`()`
- ::isTill`()`
- ::isTillBackwards`()`
- ::isRepeatFind`()`
- ::isRepeatFindReverse`()`
- ::isMoveToMark`()`
- ::isMoveToMarkLine`()`
- ::isSearchBase`()`
- ::isSearch`()`
- ::isSearchBackwards`()`
- ::isSearchCurrentWord`()`
- ::isSearchCurrentWordBackwards`()`
- ::isRepeatSearch`()`
- ::isRepeatSearchReverse`()`
- ::isBracketMatchingMotion`()`
- ::isTextObject`()`
- ::isWord`()`
- ::isWholeWord`()`
- ::isPair`()`
- ::isAnyPair`()`
- ::isDoubleQuote`()`
- ::isSingleQuote`()`
- ::isBackTick`()`
- ::isCurlyBracket`()`
- ::isAngleBracket`()`
- ::isTag`()`
- ::isSquareBracket`()`
- ::isParenthesis`()`
- ::isParagraph`()`
- ::isComment`()`
- ::isIndentation`()`
- ::isFold`()`
- ::isFunction`()`
- ::isCurrentLine`()`
- ::isEntire`()`
- ::isInsertMode`()`
- ::isInsertRegister`()`
- ::isCopyFromLineAbove`()`
- ::isCopyFromLineBelow`()`
- ::isScroll`()`
- ::isScrollDown`()`
- ::isScrollUp`()`
- ::isScrollCursor`()`
- ::isScrollCursorToTop`()`
- ::isScrollCursorToBottom`()`
- ::isScrollCursorToMiddle`()`
- ::isScrollCursorToTopLeave`()`
- ::isScrollCursorToBottomLeave`()`
- ::isScrollCursorToMiddleLeave`()`
- ::isScrollHorizontal`()`
- ::isScrollCursorToLeft`()`
- ::isScrollCursorToRight`()`
- ::isVisualBlockwise`()`
- ::isBlockwiseOtherEnd`()`
- ::isBlockwiseMoveDown`()`
- ::isBlockwiseMoveUp`()`
- ::isBlockwiseDeleteToLastCharacterOfLine`()`
- ::isBlockwiseChangeToLastCharacterOfLine`()`
- ::isBlockwiseInsertAtBeginningOfLine`()`
- ::isBlockwiseInsertAfterEndOfLine`()`
- ::isBlockwiseEscape`()`
- ::isBlockwiseSelect`()`
- ::isBlockwiseRestoreCharacterwise`()`

### InsertMode < Base
*Not exported*

### CopyFromLineAbove < InsertMode
- command: `vim-mode-plus:copy-from-line-above`
- keymaps
  - atom-text-editor.vim-mode-plus.insert-mode: <kbd>ctrl-y</kbd>
- ::complete: ```true```: **Overridden**
- ::rowTranslation: ```-1```
- ::getTextInScreenRange`(range)`
- ::execute`()`

### CopyFromLineBelow < CopyFromLineAbove
- command: `vim-mode-plus:copy-from-line-below`
- ::rowTranslation: ```1```: **Overridden**

### InsertRegister < InsertMode
- command: `vim-mode-plus:insert-register`
- keymaps
  - atom-text-editor.vim-mode-plus.insert-mode: <kbd>ctrl-r</kbd>
- ::hoverText: ```'"'```
- ::requireInput: ```true```: **Overridden**
- ::initialize`()`
- ::execute`()`

### Motion < Base
*Not exported*
- ::complete: ```true```: **Overridden**
- ::inclusive: ```false```
- ::linewise: ```false```
- ::options: ```null```
- ::setOptions`(@options)`
- ::isLinewise`()`
- ::isInclusive`()`
- ::execute`()`
- ::select`()`
- ::getTailRange`(selection)`
- ::withKeepingGoalColumn`(cursor, fn)`
- ::selectInclusive`(selection)`
- ::countTimes`(fn)`
- ::at`(where, cursor)`
- ::moveToFirstCharacterOfLine`(cursor)`
- ::getLastRow`()`
- ::getFirstVisibleScreenRow`()`
- ::getLastVisibleScreenRow`()`
- ::status`()`

### CurrentSelection < Motion
- ::selectedRange: ```null```
- ::initialize`()`
- ::execute`()`: **Overridden**
- ::select`()`: **Overridden**
- ::selectCharacters`()`

### Find < Motion
- command: `vim-mode-plus:find`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>f</kbd>
- ::backwards: ```false```
- ::complete: ```false```: **Overridden**
- ::requireInput: ```true```: **Overridden**
- ::inclusive: ```true```: **Overridden**
- ::hoverText: ```':mag_right:'```
- ::hoverIcon: ```':find:'```
- ::offset: ```0```
- ::initialize`()`
- ::isBackwards`()`
- ::find`(cursor)`
- ::getCount`()`: **Overridden**
- ::moveCursor`(cursor)`

### FindBackwards < Find
- command: `vim-mode-plus:find-backwards`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>F</kbd>
- ::backwards: ```true```: **Overridden**
- ::hoverText: ```':mag:'```: **Overridden**
- ::hoverIcon: ```':find:'```: **Overridden**

### RepeatFind < Find
- command: `vim-mode-plus:repeat-find`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>;</kbd>
- ::initialize`()`: **Overridden**

### RepeatFindReverse < RepeatFind
- command: `vim-mode-plus:repeat-find-reverse`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>,</kbd>
- ::isBackwards`()`: **Overridden**

### Till < Find
- command: `vim-mode-plus:till`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>t</kbd>
- ::offset: ```1```: **Overridden**
- ::find`()`: `super`: **Overridden**
- ::selectInclusive`(selection)`: `super`: **Overridden**

### TillBackwards < Till
- command: `vim-mode-plus:till-backwards`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>T</kbd>
- ::backwards: ```true```: **Overridden**

### MoveDown < Motion
- command: `vim-mode-plus:move-down`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>j</kbd>
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>down</kbd>
- ::linewise: ```true```: **Overridden**
- ::moveCursor`(cursor)`

### MoveLeft < Motion
- command: `vim-mode-plus:move-left`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>h</kbd>
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>left</kbd>
- ::moveCursor`(cursor)`

### MoveRight < Motion
- command: `vim-mode-plus:move-right`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>l</kbd>
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>space</kbd>
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>right</kbd>
- ::composed: ```false```
- ::onDidComposeBy`(operation)`
- ::isOperatorPending`()`
- ::moveCursor`(cursor)`

### MoveToBeginningOfLine < Motion
- command: `vim-mode-plus:move-to-beginning-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>0</kbd>
- ::defaultCount: ```null```: **Overridden**
- ::initialize`()`
- ::moveCursor`(cursor)`

### MoveToEndOfWord < Motion
- command: `vim-mode-plus:move-to-end-of-word`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>e</kbd>
- ::wordRegex: ```null```
- ::inclusive: ```true```: **Overridden**
- ::getNext`(cursor)`
- ::moveCursor`(cursor)`

### MoveToEndOfWholeWord < MoveToEndOfWord
- command: `vim-mode-plus:move-to-end-of-whole-word`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>E</kbd>
- ::wordRegex: ```/\S+/```: **Overridden**

### MoveToFirstCharacterOfLine < Motion
- command: `vim-mode-plus:move-to-first-character-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>^</kbd>
- ::moveCursor`(cursor)`

### MoveToFirstCharacterOfLineDown < MoveToFirstCharacterOfLine
- command: `vim-mode-plus:move-to-first-character-of-line-down`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>+</kbd>
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>enter</kbd>
- ::linewise: ```true```: **Overridden**
- ::moveCursor`(cursor)`: `super`: **Overridden**

### MoveToFirstCharacterOfLineAndDown < MoveToFirstCharacterOfLineDown
- command: `vim-mode-plus:move-to-first-character-of-line-and-down`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>\_</kbd>
- ::defaultCount: ```0```: **Overridden**
- ::getCount`()`: **Overridden**

### MoveToFirstCharacterOfLineUp < MoveToFirstCharacterOfLine
- command: `vim-mode-plus:move-to-first-character-of-line-up`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>-</kbd>
- ::linewise: ```true```: **Overridden**
- ::moveCursor`(cursor)`: `super`: **Overridden**

### MoveToFirstLine < Motion
- command: `vim-mode-plus:move-to-first-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g g</kbd>
- ::linewise: ```true```: **Overridden**
- ::defaultCount: ```null```: **Overridden**
- ::getRow`()`
- ::getDefaultRow`()`
- ::moveCursor`(cursor)`

### MoveToLastLine < MoveToFirstLine
- command: `vim-mode-plus:move-to-last-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>G</kbd>
- ::getDefaultRow`()`: **Overridden**

### MoveToLastCharacterOfLine < Motion
- command: `vim-mode-plus:move-to-last-character-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>$</kbd>
- ::moveCursor`(cursor)`

### MoveToLastNonblankCharacterOfLineAndDown < Motion
- command: `vim-mode-plus:move-to-last-nonblank-character-of-line-and-down`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g \_</kbd>
- ::inclusive: ```true```: **Overridden**
- ::skipTrailingWhitespace`(cursor)`
- ::getCount`()`: **Overridden**
- ::moveCursor`(cursor)`

### MoveToMark < Motion
- command: `vim-mode-plus:move-to-mark`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>\`</kbd>
- ::complete: ```false```: **Overridden**
- ::requireInput: ```true```: **Overridden**
- ::hoverText: ```':round_pushpin:`'```
- ::hoverIcon: ```':move-to-mark:`'```
- ::initialize`()`
- ::moveCursor`(cursor)`

### MoveToMarkLine < MoveToMark
- command: `vim-mode-plus:move-to-mark-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>'</kbd>
- ::linewise: ```true```: **Overridden**
- ::hoverText: ```':round_pushpin:\''```: **Overridden**
- ::hoverIcon: ```':move-to-mark:\''```: **Overridden**

### MoveToNextParagraph < Motion
- command: `vim-mode-plus:move-to-next-paragraph`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>}</kbd>
- ::moveCursor`(cursor)`

### MoveToNextWord < Motion
- command: `vim-mode-plus:move-to-next-word`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>w</kbd>
- ::wordRegex: ```null```
- ::getNext`(cursor)`
- ::moveCursor`(cursor)`

### MoveToNextWholeWord < MoveToNextWord
- command: `vim-mode-plus:move-to-next-whole-word`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>W</kbd>
- ::wordRegex: ```/^\s*$|\S+/```: **Overridden**

### MoveToPreviousParagraph < Motion
- command: `vim-mode-plus:move-to-previous-paragraph`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>{</kbd>
- ::moveCursor`(cursor)`

### MoveToPreviousWholeWord < Motion
- command: `vim-mode-plus:move-to-previous-whole-word`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>B</kbd>
- ::wordRegex: ```/^\s*$|\S+/```
- ::moveCursor`(cursor)`

### MoveToPreviousWord < Motion
- command: `vim-mode-plus:move-to-previous-word`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>b</kbd>
- ::moveCursor`(cursor)`

### MoveToRelativeLine < Motion
- ::linewise: ```true```: **Overridden**
- ::moveCursor`(cursor)`
- ::getCount`()`: **Overridden**

### MoveToTopOfScreen < Motion
- command: `vim-mode-plus:move-to-top-of-screen`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>H</kbd>
- ::linewise: ```true```: **Overridden**
- ::scrolloff: ```2```
- ::defaultCount: ```0```: **Overridden**
- ::moveCursor`(cursor)`
- ::getRow`()`
- ::getCount`()`: **Overridden**

### MoveToBottomOfScreen < MoveToTopOfScreen
- command: `vim-mode-plus:move-to-bottom-of-screen`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>L</kbd>
- ::getRow`()`: **Overridden**

### MoveToMiddleOfScreen < MoveToTopOfScreen
- command: `vim-mode-plus:move-to-middle-of-screen`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>M</kbd>
- ::getRow`()`: **Overridden**

### MoveUp < Motion
- command: `vim-mode-plus:move-up`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>k</kbd>
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>up</kbd>
- ::linewise: ```true```: **Overridden**
- ::moveCursor`(cursor)`

### ScrollFullScreenDown < Motion
- command: `vim-mode-plus:scroll-full-screen-down`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>ctrl-f</kbd>
- ::scrolledRows: ```0```
- ::direction: ```1```
- ::withScroll`(fn)`
- ::select`()`: `super(_)`: **Overridden**
- ::execute`()`: `super(_)`: **Overridden**
- ::moveCursor`(cursor)`
- ::scroll`()`
- ::getAmountInPixel`()`

### ScrollFullScreenUp < ScrollFullScreenDown
- command: `vim-mode-plus:scroll-full-screen-up`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>ctrl-b</kbd>
- ::direction: ```-1```: **Overridden**

### ScrollHalfScreenDown < ScrollFullScreenDown
- command: `vim-mode-plus:scroll-half-screen-down`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>ctrl-d</kbd>
- ::getAmountInPixel`()`: **Overridden**

### ScrollHalfScreenUp < ScrollHalfScreenDown
- command: `vim-mode-plus:scroll-half-screen-up`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>ctrl-u</kbd>
- ::direction: ```-1```: **Overridden**

### SearchBase < Motion
*Not exported*
- ::saveCurrentSearch: ```true```
- ::complete: ```false```: **Overridden**
- ::backwards: ```false```
- ::escapeRegExp: ```false```
- ::initialize`()`
- ::isBackwards`()`
- ::getCount`()`: `super`: **Overridden**
- ::flash`(range, _arg)`
- ::finish`()`
- ::moveCursor`(cursor)`
- ::visit`(match, cursor)`
- ::isIncrementalSearch`()`
- ::scan`(cursor)`
- ::getPattern`(term)`
- ::updateEscapeRegExpOption`(input)`
- ::updateUI`(options)`

### BracketMatchingMotion < SearchBase
- command: `vim-mode-plus:bracket-matching-motion`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>%</kbd>
- ::inclusive: ```true```: **Overridden**
- ::complete: ```true```: **Overridden**
- ::searchForMatch`(startPosition, reverse, inCharacter, outCharacter)`
- ::characterAt`(position)`
- ::getSearchData`(position)`
- ::moveCursor`(cursor)`: **Overridden**

### RepeatSearch < SearchBase
- command: `vim-mode-plus:repeat-search`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>n</kbd>
- ::complete: ```true```: **Overridden**
- ::saveCurrentSearch: ```false```: **Overridden**
- ::initialize`()`: `super`: **Overridden**

### RepeatSearchReverse < RepeatSearch
- command: `vim-mode-plus:repeat-search-reverse`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>N</kbd>
- ::isBackwards`()`: **Overridden**

### Search < SearchBase
- command: `vim-mode-plus:search`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>/</kbd>
- ::initialize`()`: `super`: **Overridden**
- ::isRepeatLastSearch`(input)`
- ::finish`()`: `super`: **Overridden**
- ::onConfirm`(@input)`
- ::onCancel`()`
- ::onChange`(@input)`
- ::onCommand`(command)`

### SearchBackwards < Search
- command: `vim-mode-plus:search-backwards`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>?</kbd>
- ::backwards: ```true```: **Overridden**

### SearchCurrentWord < SearchBase
- command: `vim-mode-plus:search-current-word`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>*</kbd>
- ::wordRegex: ```null```
- ::complete: ```true```: **Overridden**
- ::initialize`()`: `super`: **Overridden**
- ::getPattern`(text)`: **Overridden**
- ::getCurrentWord`()`

### SearchCurrentWordBackwards < SearchCurrentWord
- command: `vim-mode-plus:search-current-word-backwards`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>#</kbd>
- ::backwards: ```true```: **Overridden**

### Operator < Base
- ::constructor`()`: `super`: **Overridden**
- ::recodable: ```true```: **Overridden**
- ::target: ```null```
- ::flashTarget: ```true```
- ::isSameOperatorRepeated`()`
- ::compose`(@target)`
- ::setTextToRegister`(text)`
- ::markCursorBufferPositions`()`
- ::restoreMarkedCursorPositions`(markerByCursor)`
- ::markSelections`()`
- ::flash`(range, fn)`
- ::eachSelection`(fn)`

### Delete < Operator
- command: `vim-mode-plus:delete`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>d</kbd>
  - atom-text-editor.vim-mode-plus.visual-mode: <kbd>x</kbd>
- ::hoverText: ```':scissors:'```
- ::hoverIcon: ```':delete:'```
- ::flashTarget: ```false```: **Overridden**
- ::execute`()`

### DeleteLeft < Delete
- command: `vim-mode-plus:delete-left`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>X</kbd>
- ::initialize`()`

### DeleteRight < Delete
- command: `vim-mode-plus:delete-right`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>x</kbd>
- ::initialize`()`

### DeleteToLastCharacterOfLine < Delete
- command: `vim-mode-plus:delete-to-last-character-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>D</kbd>
- ::initialize`()`

### Increase < Operator
- command: `vim-mode-plus:increase`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>ctrl-a</kbd>
- ::complete: ```true```: **Overridden**
- ::step: ```1```
- ::execute`()`
- ::increaseNumber`(cursor, pattern)`

### Decrease < Increase
- command: `vim-mode-plus:decrease`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>ctrl-x</kbd>
- ::step: ```-1```: **Overridden**

### Indent < Operator
- command: `vim-mode-plus:indent`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>></kbd>
- ::hoverText: ```':point_right:'```
- ::hoverIcon: ```':indent:'```
- ::execute`()`
- ::indent`(s)`

### AutoIndent < Indent
- command: `vim-mode-plus:auto-indent`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>=</kbd>
- ::hoverText: ```':open_hands:'```: **Overridden**
- ::hoverIcon: ```':auto-indent:'```: **Overridden**
- ::indent`(s)`: **Overridden**

### Outdent < Indent
- command: `vim-mode-plus:outdent`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd><</kbd>
- ::hoverText: ```':point_left:'```: **Overridden**
- ::hoverIcon: ```':outdent:'```: **Overridden**
- ::indent`(s)`: **Overridden**

### Insert < Operator
- ::complete: ```true```: **Overridden**
- ::typedText: ```null```
- ::flashTarget: ```false```: **Overridden**
- ::confirmChanges`(changes)`
- ::execute`()`

### Insert < Operator
- ::complete: ```true```: **Overridden**
- ::typedText: ```null```
- ::flashTarget: ```false```: **Overridden**
- ::confirmChanges`(changes)`
- ::execute`()`

### Change < Insert
- command: `vim-mode-plus:change`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>c</kbd>
  - atom-text-editor.vim-mode-plus.visual-mode: <kbd>s</kbd>
- ::complete: ```false```: **Overridden**
- ::execute`()`: `super`: **Overridden**

### ChangeToLastCharacterOfLine < Change
- command: `vim-mode-plus:change-to-last-character-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>C</kbd>
- ::initialize`()`

### Substitute < Change
- command: `vim-mode-plus:substitute`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>s</kbd>
- ::initialize`()`

### SubstituteLine < Change
- command: `vim-mode-plus:substitute-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>S</kbd>
- ::initialize`()`

### InsertAboveWithNewline < Insert
- command: `vim-mode-plus:insert-above-with-newline`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>O</kbd>
- ::direction: ```'above'```
- ::execute`()`: `super`: **Overridden**

### InsertBelowWithNewline < InsertAboveWithNewline
- command: `vim-mode-plus:insert-below-with-newline`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>o</kbd>
- ::direction: ```'below'```: **Overridden**

### InsertAfter < Insert
- command: `vim-mode-plus:insert-after`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>a</kbd>
- ::execute`()`: `super`: **Overridden**

### InsertAfterEndOfLine < Insert
- command: `vim-mode-plus:insert-after-end-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>A</kbd>
- ::execute`()`: `super`: **Overridden**

### InsertAtBeginningOfLine < Insert
- command: `vim-mode-plus:insert-at-beginning-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>I</kbd>
- ::execute`()`: `super`: **Overridden**

### ReplaceMode < Insert
- ::execute`()`: **Overridden**
- ::countChars`(char, string)`

### ReplaceMode < Insert
- ::execute`()`: **Overridden**
- ::countChars`(char, string)`

### Join < Operator
- command: `vim-mode-plus:join`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>J</kbd>
- ::complete: ```true```: **Overridden**
- ::execute`()`

### Mark < Operator
- command: `vim-mode-plus:mark`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>m</kbd>
- ::hoverText: ```':round_pushpin:'```
- ::hoverIcon: ```':mark:'```
- ::requireInput: ```true```: **Overridden**
- ::initialize`()`
- ::execute`()`

### PutBefore < Operator
- command: `vim-mode-plus:put-before`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>P</kbd>
- ::complete: ```true```: **Overridden**
- ::location: ```'before'```
- ::execute`()`
- ::pasteLinewise`(selection, text)`
- ::pasteCharacterwise`(selection, text)`

### PutAfter < PutBefore
- command: `vim-mode-plus:put-after`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>p</kbd>
- ::location: ```'after'```: **Overridden**

### Repeat < Operator
- command: `vim-mode-plus:repeat`
- keymaps
  - atom-text-editor.vim-mode-plus.normal-mode: <kbd>.</kbd>
- ::complete: ```true```: **Overridden**
- ::recodable: ```false```: **Overridden**
- ::execute`()`

### Replace < Operator
- command: `vim-mode-plus:replace`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>r</kbd>
- ::input: ```null```
- ::hoverText: ```':tractor:'```
- ::requireInput: ```true```: **Overridden**
- ::initialize`()`
- ::isComplete`()`: `super`: **Overridden**
- ::execute`()`

### ReplaceWithRegister < Operator
- command: `vim-mode-plus:replace-with-register`
- ::hoverText: ```':pencil:'```
- ::hoverIcon: ```':replace-with-register:'```
- ::execute`()`

### Select < Operator
- ::execute`()`

### ToggleLineComments < Operator
- command: `vim-mode-plus:toggle-line-comments`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g /</kbd>
- ::hoverText: ```':mute:'```
- ::hoverIcon: ```':toggle-line-comment:'```
- ::execute`()`

### TransformString < Operator
*Not exported*
- ::adjustCursor: ```true```
- ::execute`()`

### CamelCase < TransformString
- command: `vim-mode-plus:camel-case`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g c</kbd>
- ::hoverText: ```':camel:'```
- ::hoverIcon: ```':camel-case:'```
- ::getNewText`(text)`

### DashCase < TransformString
- command: `vim-mode-plus:dash-case`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g -</kbd>
- ::hoverText: ```':dash:'```
- ::hoverIcon: ```':dash-case:'```
- ::getNewText`(text)`

### LowerCase < TransformString
- command: `vim-mode-plus:lower-case`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g u</kbd>
  - atom-text-editor.vim-mode-plus.operator-pending-mode, atom-text-editor.vim-mode-plus.visual-mode: <kbd>u</kbd>
- ::hoverText: ```':point_down:'```
- ::hoverIcon: ```':lower-case:'```
- ::getNewText`(text)`

### SnakeCase < TransformString
- command: `vim-mode-plus:snake-case`
- ::hoverText: ```':snake:'```
- ::hoverIcon: ```':snake-case:'```
- ::getNewText`(text)`

### Surround < TransformString
- command: `vim-mode-plus:surround`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g s s</kbd>
- ::pairs: ```[ '[]', '()', '{}', '<>' ]```
- ::input: ```null```
- ::charsMax: ```1```
- ::hoverText: ```':two_women_holding_hands:'```
- ::hoverIcon: ```':surround:'```
- ::requireInput: ```true```: **Overridden**
- ::initialize`()`
- ::getInputHandler`()`
- ::onConfirm`(@input)`
- ::getPair`(input)`
- ::surround`(text, pair)`
- ::getNewText`(text)`

### DeleteSurround < Surround
- command: `vim-mode-plus:delete-surround`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g s d</kbd>
- ::onConfirm`(@input)`: **Overridden**
- ::getNewText`(text)`: **Overridden**

### ChangeSurround < DeleteSurround
- command: `vim-mode-plus:change-surround`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g s c</kbd>
- ::charsMax: ```2```: **Overridden**
- ::char: ```null```
- ::onConfirm`(input)`: `super(from)`: **Overridden**
- ::getNewText`(text)`: **Overridden**

### ChangeSurroundAnyPair < ChangeSurround
- command: `vim-mode-plus:change-surround-any-pair`
- ::charsMax: ```1```: **Overridden**
- ::initialize`()`: `super`: **Overridden**
- ::preSelect`()`
- ::onConfirm`(@char)`: **Overridden**

### DeleteSurroundAnyPair < DeleteSurround
- command: `vim-mode-plus:delete-surround-any-pair`
- ::requireInput: ```false```: **Overridden**
- ::initialize`()`: `super`: **Overridden**

### SurroundWord < Surround
- command: `vim-mode-plus:surround-word`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g s w</kbd>
- ::initialize`()`: `super`: **Overridden**

### ToggleCase < TransformString
- command: `vim-mode-plus:toggle-case`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g ~</kbd>
  - atom-text-editor.vim-mode-plus.operator-pending-mode, atom-text-editor.vim-mode-plus.visual-mode: <kbd>~</kbd>
- ::hoverText: ```':clap:'```
- ::hoverIcon: ```':toggle-case:'```
- ::toggleCase`(char)`
- ::getNewText`(text)`

### ToggleCaseAndMoveRight < ToggleCase
- command: `vim-mode-plus:toggle-case-and-move-right`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>~</kbd>
- ::hoverText: ```null```: **Overridden**
- ::hoverIcon: ```null```: **Overridden**
- ::adjustCursor: ```false```: **Overridden**
- ::initialize`()`

### UpperCase < TransformString
- command: `vim-mode-plus:upper-case`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>g U</kbd>
  - atom-text-editor.vim-mode-plus.operator-pending-mode, atom-text-editor.vim-mode-plus.visual-mode: <kbd>U</kbd>
- ::hoverText: ```':point_up:'```
- ::hoverIcon: ```':upper-case:'```
- ::getNewText`(text)`

### Yank < Operator
- command: `vim-mode-plus:yank`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>y</kbd>
- ::hoverText: ```':clipboard:'```
- ::hoverIcon: ```':yank:'```
- ::execute`()`

### YankLine < Yank
- command: `vim-mode-plus:yank-line`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>Y</kbd>
- ::initialize`()`

### OperatorError < Base
- ::constructor`(@message)`: **Overridden**

### Scroll < Base
*Not exported*
- ::complete: ```true```: **Overridden**
- ::scrolloff: ```2```
- ::getFirstVisibleScreenRow`()`
- ::getLastVisibleScreenRow`()`
- ::getLastScreenRow`()`
- ::getPixelCursor`(which)`

### ScrollCursor < Scroll
*Not exported*
- ::execute`()`
- ::moveToFirstCharacterOfLine`()`
- ::getOffSetPixelHeight`(lineDelta)`

### ScrollCursorToBottom < ScrollCursor
- command: `vim-mode-plus:scroll-cursor-to-bottom`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>z -</kbd>
- ::isScrollable`()`
- ::getScrollTop`()`

### ScrollCursorToBottomLeave < ScrollCursorToBottom
- command: `vim-mode-plus:scroll-cursor-to-bottom-leave`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>z b</kbd>
- ::moveToFirstCharacterOfLine: ```null```: **Overridden**

### ScrollCursorToMiddle < ScrollCursor
- command: `vim-mode-plus:scroll-cursor-to-middle`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>z .</kbd>
- ::isScrollable`()`
- ::getScrollTop`()`

### ScrollCursorToMiddleLeave < ScrollCursorToMiddle
- command: `vim-mode-plus:scroll-cursor-to-middle-leave`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>z z</kbd>
- ::moveToFirstCharacterOfLine: ```null```: **Overridden**

### ScrollCursorToTop < ScrollCursor
- command: `vim-mode-plus:scroll-cursor-to-top`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>z enter</kbd>
- ::isScrollable`()`
- ::getScrollTop`()`

### ScrollCursorToTopLeave < ScrollCursorToTop
- command: `vim-mode-plus:scroll-cursor-to-top-leave`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>z t</kbd>
- ::moveToFirstCharacterOfLine: ```null```: **Overridden**

### ScrollDown < Scroll
- command: `vim-mode-plus:scroll-down`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>ctrl-e</kbd>
- ::direction: ```'down'```
- ::execute`()`
- ::keepCursorOnScreen`()`

### ScrollUp < ScrollDown
- command: `vim-mode-plus:scroll-up`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>ctrl-y</kbd>
- ::direction: ```'up'```: **Overridden**

### ScrollHorizontal < Scroll
*Not exported*
- ::putCursorOnScreen`()`

### ScrollCursorToLeft < ScrollHorizontal
- command: `vim-mode-plus:scroll-cursor-to-left`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>z s</kbd>
- ::execute`()`

### ScrollCursorToRight < ScrollHorizontal
- command: `vim-mode-plus:scroll-cursor-to-right`
- keymaps
  - atom-text-editor.vim-mode-plus:not(.insert-mode): <kbd>z e</kbd>
- ::execute`()`

### TextObject < Base
*Not exported*
- ::complete: ```true```: **Overridden**
- ::isLinewise`()`
- ::eachSelection`(fn)`
- ::status`()`

### CurrentLine < TextObject
- ::select`()`

### Entire < TextObject
- ::select`()`

### Fold < TextObject
- ::getRowRangeForBufferRow`(bufferRow)`
- ::select`()`

### Function < Fold
- ::indentScopedLanguages: ```[ 'python', 'coffee' ]```
- ::omitingClosingCharLanguages: ```[ 'go' ]```
- ::getScopesForRow`(row)`
- ::isIncludeFunctionScopeForRow`(row)`
- ::getRowRangeForBufferRow`(bufferRow)`: **Overridden**
- ::adjustRowRange`(startRow, endRow)`

### Pair < TextObject
*Not exported*
- ::inclusive: ```false```
- ::pair: ```null```
- ::isStartingPair`(str, char)`
- ::needStopSearch`(pair, cursorRow, row)`
- ::findPair`(cursorPoint, fromPoint, pair, backward)`
- ::getRange`(selection, pair)`
- ::select`()`

### AngleBracket < Pair
- ::pair: ```'<>'```: **Overridden**

### AnyPair < Pair
- ::pairs: ```[ '""', '\'\'', '``', '{}', '<>', '><', '[]', '()' ]```
- ::getNearestRange`(selection, pairs)`
- ::select`()`: **Overridden**

### BackTick < Pair
- ::pair: ```'``'```: **Overridden**

### CurlyBracket < Pair
- ::pair: ```'{}'```: **Overridden**

### DoubleQuote < Pair
- ::pair: ```'""'```: **Overridden**

### Parenthesis < Pair
- ::pair: ```'()'```: **Overridden**

### SingleQuote < Pair
- ::pair: ```'\'\''```: **Overridden**

### SquareBracket < Pair
- ::pair: ```'[]'```: **Overridden**

### Tag < Pair
- ::pair: ```'><'```: **Overridden**

### Paragraph < TextObject
- ::getStartRow`(startRow, fn)`
- ::getEndRow`(startRow, fn)`
- ::getRange`(startRow)`
- ::selectParagraph`(selection)`
- ::selectExclusive`(selection)`
- ::selectInclusive`(selection)`
- ::select`()`

### Comment < Paragraph
- ::selectInclusive`(selection)`: **Overridden**
- ::getRange`(startRow)`: **Overridden**

### Indentation < Paragraph
- ::selectInclusive`(selection)`: **Overridden**
- ::getRange`(startRow)`: **Overridden**

### Word < TextObject
- ::select`()`
- ::selectExclusive`(s, wordRegex)`
- ::selectInclusive`(selection)`

### WholeWord < Word
- ::wordRegExp: ```/\S+/```

### VisualBlockwise < Base
- ::constructor`()`: `super`: **Overridden**
- ::complete: ```true```: **Overridden**
- ::clearTail`()`
- ::clearHead`()`
- ::updateProperty`(selection, prop)`
- ::getTop`()`
- ::getBottom`()`
- ::isReversed`()`
- ::isSingle`()`
- ::getHead`()`
- ::getTail`()`
- ::setTail`(newTail)`
- ::setHead`(newHead)`
- ::reverse`()`

### BlockwiseDeleteToLastCharacterOfLine < VisualBlockwise
- command: `vim-mode-plus:blockwise-delete-to-last-character-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>D</kbd>
- ::delegateTo: ```'DeleteToLastCharacterOfLine'```
- ::execute`()`

### BlockwiseChangeToLastCharacterOfLine < BlockwiseDeleteToLastCharacterOfLine
- command: `vim-mode-plus:blockwise-change-to-last-character-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>C</kbd>
- ::delegateTo: ```'ChangeToLastCharacterOfLine'```: **Overridden**

### BlockwiseEscape < VisualBlockwise
- command: `vim-mode-plus:blockwise-escape`
- keymaps
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>escape</kbd>
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>ctrl-[</kbd>
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>ctrl-c</kbd>
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>ctrl-v</kbd>
- ::execute`()`

### BlockwiseInsertAtBeginningOfLine < VisualBlockwise
- command: `vim-mode-plus:blockwise-insert-at-beginning-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>I</kbd>
- ::command: ```'I'```
- ::execute`()`

### BlockwiseInsertAfterEndOfLine < BlockwiseInsertAtBeginningOfLine
- command: `vim-mode-plus:blockwise-insert-after-end-of-line`
- keymaps
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>A</kbd>
- ::command: ```'A'```: **Overridden**

### BlockwiseMoveDown < VisualBlockwise
- command: `vim-mode-plus:blockwise-move-down`
- keymaps
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>j</kbd>
- ::direction: ```'Below'```
- ::isForward`()`
- ::execute`()`

### BlockwiseMoveUp < BlockwiseMoveDown
- command: `vim-mode-plus:blockwise-move-up`
- keymaps
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>k</kbd>
- ::direction: ```'Above'```: **Overridden**
- ::isForward`()`: **Overridden**

### BlockwiseOtherEnd < VisualBlockwise
- command: `vim-mode-plus:blockwise-other-end`
- keymaps
  - atom-text-editor.vim-mode-plus.visual-mode.blockwise: <kbd>o</kbd>
- ::execute`()`

### BlockwiseRestoreCharacterwise < VisualBlockwise
- ::execute`()`

### BlockwiseSelect < VisualBlockwise
- ::execute`()`
