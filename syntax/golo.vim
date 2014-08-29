" Vim syntax file
" Language:     Golo
"
if exists("b:current_syntax")
  finish
endif

syn region goloBlock start="{" end="}" transparent fold
syn region goloBlock start="{" end="}" transparent fold

"## Errors
" Java keywords that does not exists in Golo
syn keyword goloError class
" trailing semicolon
syn match goloError ";\s*$"
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
syn match goloDefName "\%(\%(function\|macro\|augmentation\|union\|struct\)\s\+\)\@<=\h\%(\w\)*" contained
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

syn match goloDecorator "@\([_a-zA-Z][_a-zA-Z0-9]*\.\)*[_a-zA-Z][_a-zA-Z0-9]*"
hi def link goloDecorator PreProc

syn match goloMacroInvocation "&:\?\([_a-zA-Z][_a-zA-Z0-9]*\.\)*[_a-zA-Z][_a-zA-Z0-9]*"
hi def link goloMacroInvocation PreProc


"## Delimiters and operators
syn match goloDelimiter "{"
syn match goloDelimiter "}"
syn match goloDelimiter "|"
syn match goloDelimiter "("
syn match goloDelimiter ")"
syn match goloDelimiter "map\["
syn match goloDelimiter "array\["
syn match goloDelimiter "list\["
syn match goloDelimiter "set\["
syn match goloDelimiter "vector\["
syn match goloDelimiter "tuple\["
syn match goloDelimiter "\["
syn match goloDelimiter "\]"
syn match goloDelimiter "\.\."
hi def link goloDelimiter Delimiter

syn match goloOperator "\^"
syn match goloOperator ":"
syn match goloOperator "?:"
syn match goloOperator "==" 
syn match goloOperator "!="
syn match goloOperator "="
syn match goloOperator "+"
syn match goloOperator "-"
syn match goloOperator "*"
syn match goloOperator "%"
syn match goloOperator "/"
syn match goloOperator "<"
syn match goloOperator "<="
syn match goloOperator ">"
syn match goloOperator ">="
syn match goloOperator "="
syn match goloOperator "\.\.\."
syn keyword goloOperator is isnt and or not oftype in orIfNull
hi def link goloOperator Operator


"## Comments and doc
syn keyword goloTodo contained TODO FIXME XXX NOTE
syn match goloComment "#.*$" contains=@Spell,goloTodo
syn region goloDoc start=/----/ end=/----/ fold contains=@Spell,goloTodo
hi def link goloTodo Todo
hi def link goloDoc Comment
hi def link goloComment Comment


"## Literal and Special Values

syn keyword goloBoolean true false
hi def link goloBoolean Boolean
syn keyword goloNull null
hi def link goloNull Statement
syn keyword goloThis this self
hi def link goloThis Statement
syn match goloClassRef "\.class"
syn match goloClassRef "\.module"
hi def link goloClassRef Number

"== Strings
syn match goloEscape contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)"
syn match goloCharacter "'[^']*'" contains=goloEscape
syn match goloCharacter "'\\''" contains=goloEscape
syn match goloCharacter "'[^\\]'"
syn match goloString "\"[^"]*\"" contains=goloEscape,@Spell
syn region goloMultiString start=/"""/ end=/"""/ fold contains=goloEscape,@Spell
hi def link goloEscape Special
hi def link goloCharacter String
hi def link goloString String
hi def link goloMultiString String

"== Numbers
" integer/long
syn match goloNumber "\<\d\(\d\|_\d\)*\(_L\)\=\>"
" double/float
syn match goloNumber "\(\<\d\+\.\=\d*\|\.\d\+\)\(e[-+]\=\d\+\)\=\(_F\)\=\>"
syn match goloNumber "\<\d\+\(e[-+]\=\d\+\)\=\>"
" Java syntax invalid in golo
syn match goloError "\d\+[lLdDfF]"
syn match goloError "\<\d\+E[-+]\=\d\+\>"
hi def link goloNumber Number




"syn sync fromstart
let b:current_syntax = "golo"
let b:spell_options="contained"
set foldmethod=syntax
set spell
