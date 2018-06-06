" Base2Tone_SeaLight (https://github.com/atelierbram/Base2Tone-vim)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

" GUI color definitions
let s:gui00 = "f9fbfa"
let s:gui01 = "e1eae7"
let s:gui02 = "cbd7d3"
let s:gui03 = "b7c2be"
let s:gui04 = "738191"
let s:gui05 = "0fc78a"
let s:gui06 = "0aa370"
let s:gui07 = "067953"
let s:gui08 = "0db57d"
let s:gui09 = "34659d"
let s:gui0A = "0aa370"
let s:gui0B = "717a77"
let s:gui0C = "004a9e"
let s:gui0D = "0db57d"
let s:gui0E = "7eb6f6"
let s:gui0F = "afd4fe"

" Terminal color definitions
let s:cterm00 = "231   "
let s:cterm01 = "254   "
let s:cterm02 = "252   "
let s:cterm03 = "250   "
let s:cterm04 = "245   "
let s:cterm05 = "42    "
let s:cterm06 = "35    "
let s:cterm07 = "22    "
let s:cterm08 = "36    "
let s:cterm09 = "241   "
let s:cterm0A = "35    "
let s:cterm0B = "102   "
let s:cterm0C = "25    "
let s:cterm0D = "36    "
let s:cterm0E = "75    "
let s:cterm0F = "251   "

" Theme setup
hi clear
syntax reset
let g:colors_name = "Base2Tone_SeaLight"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . s:gui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . s:gui(a:guibg)
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Return GUI colorfor light/dark variants
fun s:gui(color)
  return a:color
endfun

" Return terminal color
fun s:cterm(color)
  return a:color
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:gui08, "", s:cterm08, "", "")
call <sid>hi("Directory",     s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("ErrorMsg",      s:gui08, s:gui00, s:cterm08, s:cterm00, "")
call <sid>hi("Exception",     s:gui08, "", s:cterm08, "", "")
call <sid>hi("FoldColumn",    "", s:gui01, "", s:cterm01, "")
call <sid>hi("Folded",        s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <sid>hi("IncSearch",     s:gui00, s:gui0E, s:cterm00, s:cterm0E, "none")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:gui08, "", s:cterm08, "", "")
call <sid>hi("MatchParen",    s:gui00, s:gui03, s:cterm00, s:cterm03,  "")
call <sid>hi("ModeMsg",       s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("MoreMsg",       s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("Question",      s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("Search",        s:gui00, s:gui09, s:cterm00, s:cterm09,  "")
call <sid>hi("TooLong",       s:gui08, "", s:cterm08, "", "")
call <sid>hi("Underlined",    s:gui08, "", s:cterm08, "", "")
call <sid>hi("Visual",        "", s:gui02, "", s:cterm02, "")
call <sid>hi("VisualNOS",     s:gui08, "", s:cterm08, "", "")
call <sid>hi("WarningMsg",    s:gui08, "", s:cterm08, "", "")
call <sid>hi("WildMenu",      s:gui08, "", s:cterm08, "", "")
call <sid>hi("Title",         s:gui0D, "", s:cterm0D, "", "none")
call <sid>hi("Conceal",       s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <sid>hi("Cursor",        s:gui00, s:gui0E, s:cterm00, s:cterm0E, "")
call <sid>hi("NonText",       s:gui03, "", s:cterm03, "", "")
call <sid>hi("Normal",        s:gui06, s:gui00, s:cterm06, s:cterm00, "")
call <sid>hi("LineNr",        s:gui02, s:gui00, s:cterm02, s:cterm00, "")
call <sid>hi("SignColumn",    s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <sid>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "")
call <sid>hi("StatusLine",    s:gui04, s:gui02, s:cterm04, s:cterm02, "none")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <sid>hi("VertSplit",     s:gui01, s:gui01, s:cterm01, s:cterm01, "none")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:cterm01, "none")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none")
call <sid>hi("CursorLine",    "", s:gui01, "", s:cterm01, "none")
call <sid>hi("CursorLineNr",  s:gui02, s:gui01, s:cterm02, s:cterm01, "")
call <sid>hi("PMenu",         s:gui04, s:gui01, s:cterm04, s:cterm01, "none")
call <sid>hi("PMenuSel",      s:gui01, s:gui04, s:cterm01, s:cterm04, "")
call <sid>hi("TabLine",       s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineFill",   s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineSel",    s:gui0B, s:gui01, s:cterm0B, s:cterm01, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("Character",    s:gui08, "", s:cterm08, "", "")
call <sid>hi("Comment",      s:gui03, "", s:cterm03, "", "")
call <sid>hi("Conditional",  s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("Constant",     s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("Define",       s:gui0E, "", s:cterm0E, "", "none")
call <sid>hi("Delimiter",    s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("Float",        s:gui09, "", s:cterm09, "", "")
call <sid>hi("Function",     s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("Identifier",   s:gui07, "", s:cterm07, "", "none")
call <sid>hi("Include",      s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("Keyword",      s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("Label",        s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Number",       s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("Operator",     s:gui0A, "", s:cterm0A, "", "none")
call <sid>hi("PreProc",      s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Repeat",       s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Special",      s:gui06, "", s:cterm06, "", "")
call <sid>hi("SpecialChar",  s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("Statement",    s:gui07, "", s:cterm07, "none", "none")
call <sid>hi("StorageClass", s:gui06, "", s:cterm06, "", "")
call <sid>hi("String",       s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("Structure",    s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("Tag",          s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Todo",         s:gui0A, s:gui01, s:cterm0A, s:cterm01, "")
call <sid>hi("Type",         s:gui06, "", s:cterm06, "", "none")
call <sid>hi("Typedef",      s:gui0A, "", s:cterm0A, "", "")

" C highlighting
call <sid>hi("cType",         s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("cOperator",     s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("cPreCondit",    s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("cStorageClass", s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("cConditional",  s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("cRepeat",       s:gui0E, "", s:cterm0E, "", "")

" C# highlighting
call <sid>hi("csClass",                 s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("csAttribute",             s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("csModifier",              s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("csType",                  s:gui08, "", s:cterm08, "", "")
call <sid>hi("csUnspecifiedStatement",  s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("csContextualStatement",   s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("csNewDecleration",        s:gui08, "", s:cterm08, "", "")

" CSS highlighting
call <sid>hi("cssBraces",          s:gui03, "", s:cterm03, "", "")
call <sid>hi("cssClassName",       s:gui07, "", s:cterm07, "", "")
call <sid>hi("cssClassNameDot",    s:gui04, "", s:cterm04, "", "")
call <sid>hi("cssInclude",         s:gui04, "", s:cterm04, "", "")
call <sid>hi("cssColor",           s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("cssUnitDecorators",  s:gui09, "", s:cterm09, "", "")
call <sid>hi("cssMediaKeyword",    s:gui09, "", s:cterm09, "", "")
call <sid>hi("cssImportant",       s:gui08, "", s:cterm08, "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:gui0B, s:gui01,  s:cterm0B, s:cterm01, "")
call <sid>hi("DiffChange",   s:gui03, s:gui01,  s:cterm03, s:cterm01, "")
call <sid>hi("DiffDelete",   s:gui08, s:gui01,  s:cterm08, s:cterm01, "")
call <sid>hi("DiffText",     s:gui0D, s:gui01,  s:cterm0D, s:cterm01, "")
call <sid>hi("DiffAdded",    s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "")
call <sid>hi("DiffFile",     s:gui08, s:gui00,  s:cterm08, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "")
call <sid>hi("DiffLine",     s:gui0D, s:gui00,  s:cterm0D, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:gui08, s:gui00,  s:cterm08, s:cterm00, "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:gui08, "", s:cterm08, "", "")
call <sid>hi("gitCommitSummary",   s:gui0B, "", s:cterm0B, "", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "")
call <sid>hi("GitGutterChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "")
call <sid>hi("GitGutterDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "")
call <sid>hi("GitGutterChangeDelete",  s:gui0E, s:gui01, s:cterm0E, s:cterm01, "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("htmlItalic",  s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("htmlEndTag",  s:gui04, "", s:cterm04, "", "")
call <sid>hi("htmlTag",     s:gui03, "", s:cterm03, "", "")
call <sid>hi("htmlTagN",     s:gui07, "", s:cterm07, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",            s:gui06, "", s:cterm06, "", "")
call <sid>hi("javaScriptBraces",      s:gui03, "", s:cterm03, "", "")
call <sid>hi("javaScriptNumber",      s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("javaScriptParens",      s:gui03, "", s:cterm03, "", "")
call <sid>hi("JavaScriptIdentifier",  s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("JavaScriptConditional", s:gui09, "", s:cterm09, "", "")
call <sid>hi("JavaScriptExceptions",  s:gui09, "", s:cterm09, "", "")
call <sid>hi("JavaScriptOperator",    s:gui09, "", s:cterm09, "", "")
call <sid>hi("JavaScriptOpSymbols",   s:gui09, "", s:cterm09, "", "")
call <sid>hi("JavaScriptRepeat",      s:gui09, "", s:cterm09, "", "")
call <sid>hi("JavaScriptStatement",   s:gui09, "", s:cterm09, "", "")
call <sid>hi("JavaScriptFuncArg",     s:gui06, "", s:cterm06, "", "")
call <sid>hi("JavaScriptFuncComma",   s:gui03, "", s:cterm03, "", "")
call <sid>hi("JavaScriptEndColons",   s:gui03, "", s:cterm03, "", "")
call <sid>hi("JavaScriptIdentifier",  s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("JavaScriptDeprecated",  s:gui06, "", s:cterm06, "", "")
call <sid>hi("JavaScriptFuncDef",     s:gui07, "", s:cterm07, "", "")
call <sid>hi("JavaScriptFunctionKey", s:gui07, "", s:cterm07, "", "")
call <sid>hi("JavaScriptString",      s:gui07, "", s:cterm07, "", "")
call <sid>hi("JavaScriptFuncExp",     s:gui07, "", s:cterm07, "", "")
call <sid>hi("JavaScriptPrototype",   s:gui0C, "", s:cterm0C, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("markdownError",             s:gui06, s:gui00, s:cterm06, s:cterm00, "")
call <sid>hi("markdownCodeBlock",         s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui0D, "", s:cterm0D, "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("NERDTreeExecFile",  s:gui06, "", s:cterm06, "", "")

" PHP highlighting
call <sid>hi("phpVarSelector",     s:gui09, "", s:cterm09, "", "")
call <sid>hi("phpMemberSelector",  s:gui06, "", s:cterm06, "", "")
call <sid>hi("phpComparison",      s:gui06, "", s:cterm06, "", "")
call <sid>hi("phpParent",          s:gui06, "", s:cterm06, "", "")
call <sid>hi("phpKeyword",         s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("phpRepeat",          s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("phpConditional",     s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("phpStatement",       s:gui0E, "", s:cterm0E, "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("pythonRepeat",    s:gui0E, "", s:cterm0E, "", "")
exe 'hi link pythonInclude Include'
exe 'hi link pythonStatement Statement'
exe 'hi link pythonConditional Conditional'
exe 'hi link pythonRepeat Repeat'
exe 'hi link pythonException Exception'
exe 'hi link pythonFunction Function'

" Go Highlighting
exe 'hi link goStatement Statement'
exe 'hi link goConditional Conditional'
exe 'hi link goRepeat Repeat'
exe 'hi link goException Exception'
call <sid>hi("goDeclaration",  s:gui08, "", s:cterm08, "", "")
exe 'hi link goConstants Constant'
call <sid>hi("goBuiltins",  s:gui09, "", s:cterm09, "", "")

" CoffeeScript Highlighting
exe 'hi link coffeeKeyword Keyword'
exe 'hi link coffeeConditional Conditional'

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("rubyInclude",                 s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("rubyLocalVariableOrMethod",   s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("rubyCurlyBlock",              s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("rubyConstant",                s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("rubyInterpolation",           s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("rubyRegexp",                  s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("rubySymbol",                  s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("rubyStringDelimiter",         s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("rubyConditional",             s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("rubyRepeat",                  s:gui0E, "", s:cterm0E, "", "")

" SASS highlighting
call <sid>hi("sassidChar",        s:gui08, "", s:cterm08, "", "")
call <sid>hi("sassClassChar",     s:gui09, "", s:cterm09, "", "")
call <sid>hi("sassInclude",       s:gui07, "", s:cterm07, "", "")
call <sid>hi("scssInclude",       s:gui07, "", s:cterm07, "", "")
call <sid>hi("sassMixing",        s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("sassMixinName",     s:gui09, "", s:cterm09, "", "")
call <sid>hi("scssMixinName",     s:gui09, "", s:cterm09, "", "")
call <sid>hi("scssVariable",      s:gui06, "", s:cterm06, "", "")
call <sid>hi("scssSelectorChar",  s:gui04, "", s:cterm04, "", "")
call <sid>hi("cssIncludeKeyword", s:gui07, "", s:cterm07, "", "")
call <sid>hi("scssMixinParams",   s:gui03, "", s:cterm03, "", "")
call <sid>hi("scssFunctionName",  s:gui06, "", s:cterm06, "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "")
call <sid>hi("SignifySignChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "")
call <sid>hi("SignifySignDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellCap",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellRare",    "", s:gui00, "", s:cterm00, "undercurl")

" fugitive higlighthing
call <sid>hi("gitCommitSummary",  s:gui07, "", s:cterm07, "none", "none")

" neovim terminal
if has('nvim')
hi! link TermCursor Cursor
hi TermCursorNC ctermfg=231    ctermbg=247    guifg=s:gui00 guibg=s:gui09 guisp=NONE cterm=NONE gui=NONE
  let g:terminal_color_0  = "#" . s:gui00
  let g:terminal_color_1  = "#" . s:gui0F
  let g:terminal_color_2  = "#" . s:gui02
  let g:terminal_color_3  = "#" . s:gui03
  let g:terminal_color_4  = "#" . s:gui04
  let g:terminal_color_5  = "#" . s:gui05
  let g:terminal_color_6  = "#" . s:gui06
  let g:terminal_color_7  = "#" . s:gui07
  let g:terminal_color_8  = "#" . s:gui08
  let g:terminal_color_9  = "#" . s:gui09
  let g:terminal_color_10 = "#" . s:gui0A
  let g:terminal_color_11 = "#" . s:gui0B
  let g:terminal_color_12 = "#" . s:gui0C
  let g:terminal_color_13 = "#" . s:gui0D
  let g:terminal_color_14 = "#" . s:gui0E
  let g:terminal_color_15 = "#" . s:gui01
endif

" Remove functions
delf <sid>hi
delf <sid>gui
delf <sid>cterm

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F

