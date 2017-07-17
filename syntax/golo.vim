" Vim syntax file
" Language:     Golo
"
if exists("b:current_syntax")
  finish
endif

if exists("g:golo_with_markdown") && g:golo_with_markdown
  let s:golo_with_markdown=1
else
  let s:golo_with_markdown=0
endif

syn case match

syn region goloBlock start="{" end="}" transparent fold

"## Errors
" Java keywords that does not exists in Golo
syn keyword goloError class
" trailing semicolon
syn match goloError ";\s*$" display
" trailing white space
syn match goloSpaceError display excludenl"\s\+$"
" mixed spaces and tabs
syn match goloSpaceError display " \+\t"
syn match goloSpaceError display "\t\+ "
hi def link goloError Error
hi def link goloSpaceError Error


" ## Language constructs
syn keyword goloDefinition module let var
syn keyword goloDefinition function macro augmentation struct union nextgroup=goloDefName skipwhite
syn keyword goloAugment augment with
hi def link goloDefinition Type
hi def link goloAugment Type
syn match goloDefName "\%(\%(function\|macro\|augmentation\|union\|struct\)\s\+\)\@<=\h\%(\w\)*" contained display
hi def link goloDefName Function

syn keyword goloMacroQuoting quote unquote
hi def link goloMacroQuoting Statement
syn keyword goloBranching if else case match
syn keyword goloCase case when then otherwise
syn keyword goloLoop while for foreach
syn keyword goloBreakflow continue break
hi def link goloBranching Conditional
hi def link goloCase Conditional
hi def link goloLoop Repeat
hi def link goloBreakflow Repeat

syn keyword goloStatement return
hi def link goloStatement Statement
syn keyword goloImport import
hi def link goloImport Include
syn keyword goloException try catch finally throw
hi def link goloException Exception
syn keyword goloModifier local
hi def link goloModifier StorageClass

syn match goloDecorator "@!\?\([_a-zA-Z][_a-zA-Z0-9]*\.\)*[_a-zA-Z][_a-zA-Z0-9]*" display
hi def link goloDecorator PreProc

syn match goloMacroInvocation "&:\?\([_a-zA-Z][_a-zA-Z0-9]*\.\)*[_a-zA-Z][_a-zA-Z0-9]*"
hi def link goloMacroInvocation PreProc


"## Delimiters and operators
syn match goloDelimiter "{" display
syn match goloDelimiter "}" display
syn match goloDelimiter "|" display
syn match goloDelimiter "(" display
syn match goloDelimiter ")" display
syn match goloDelimiter "map\[" display
syn match goloDelimiter "array\[" display
syn match goloDelimiter "list\[" display
syn match goloDelimiter "set\[" display
syn match goloDelimiter "vector\[" display
syn match goloDelimiter "tuple\[" display
syn match goloDelimiter "\[" display
syn match goloDelimiter "\]" display
syn match goloDelimiter "\.\." display
hi def link goloDelimiter Delimiter

syn match goloOperator "\^" display
syn match goloOperator ":" display
syn match goloOperator "?:" display
syn match goloOperator "=="  display
syn match goloOperator "!=" display
syn match goloOperator "=" display
syn match goloOperator "+" display
syn match goloOperator "-" display
syn match goloOperator "*" display
syn match goloOperator "%" display
syn match goloOperator "/" display
syn match goloOperator "<" display
syn match goloOperator "<=" display
syn match goloOperator ">" display
syn match goloOperator ">=" display
syn match goloOperator "=" display
syn match goloOperator "\.\.\." display
syn keyword goloOperator is isnt and or not oftype in orIfNull
hi def link goloOperator Operator


"## Comments and doc
syn keyword goloTodo contained TODO FIXME XXX NOTE
syn match goloComment "#.*$" display contains=@Spell,goloTodo

if s:golo_with_markdown
  syn include @Markdown syntax/markdown.vim
  syn case match
  syn region goloDoc start=/----/ matchgroup=Comment end=/----/ fold contains=@Spell,goloTodo,markdown[^H].*
else
  syn region goloDoc start=/----/ matchgroup=Comment end=/----/ fold contains=@Spell,goloTodo
  hi def link goloDoc Comment
endif


hi def link goloTodo Todo
hi def link goloComment Comment


"## Literal and Special Values

syn keyword goloBoolean true false
hi def link goloBoolean Boolean
syn keyword goloNull null
hi def link goloNull Statement
syn keyword goloThis this self
hi def link goloThis Statement
syn match goloClassRef "\.class" display
syn match goloClassRef "\.module" display
hi def link goloClassRef Number

"== Strings
syn match goloEscape contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)" display
syn match goloCharacter "'[^']*'" contains=goloEscape display
syn match goloCharacter "'\\''" contains=goloEscape display
syn match goloCharacter "'[^\\]'" display
syn match goloString "\"[^"]*\"" contains=goloEscape,@Spell display
syn region goloMultiString start=/"""/ end=/"""/ fold contains=goloEscape,@Spell
hi def link goloEscape Special
hi def link goloCharacter String
hi def link goloString String
hi def link goloMultiString String

"== Numbers
" integer/long
syn match goloNumber "\<\d\(\d\|_\d\)*\(_L\)\=\>" display
" double/float
syn match goloNumber "\(\<\d\+\.\=\d*\|\.\d\+\)\(e[-+]\=\d\+\)\=\(_F\)\=\>" display
syn match goloNumber "\<\d\+\(e[-+]\=\d\+\)\=\>" display
" Java syntax invalid in golo
syn match goloError "\d\+[lLdDfF]" display
syn match goloError "\<\d\+E[-+]\=\d\+\>" display
hi def link goloNumber Number




syn sync fromstart
syn spell default
" syn case
let b:current_syntax = "golo"
let b:spell_options="contained"
set foldmethod=syntax
set spell
