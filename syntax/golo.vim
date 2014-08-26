if exists("b:current_syntax")
  finish
endif

set nospell

syn keyword goloDefinition module function let var augment struct
syn keyword goloBranching if else case match return
syn keyword goloCase case when then otherwise
syn keyword goloLoop while for foreach
syn keyword goloImport import
syn keyword goloException try catch finally throw
syn keyword goloModifier local
syn keyword goloBreakflow continue break

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
syn keyword goloOperator is isnt and or not oftype in orIfNull

syn match goloComment "#.*$"

syn keyword goloBoolean true false
syn match goloString "\"[^"]*\""
syn match goloClassRef "\.class"
syn match goloClassRef "\.module"

syn match goloDecorator "@\([_a-zA-Z][_a-zA-Z0-9]*\.\)*[_a-zA-Z][_a-zA-Z0-9]*"


syn region goloMultiString start=/"""/ end=/"""/

syn region goloDoc start=/----/ end=/----/

hi def link goloDefinition Type
hi def link goloBranching Conditional
hi def link goloBreakflow Repeat
hi def link goloComment Comment
hi def link goloString String
hi def link goloMultiString String
hi def link goloBoolean Boolean
hi def link goloImport Include
hi def link goloOperator Operator
hi def link goloDelimiter Delimiter
hi def link goloBranching Conditional
hi def link goloCase Conditional
hi def link goloLoop Repeat
hi def link goloException Exception
hi def link goloModifier StorageClass
hi def link goloClassRef Number
hi def link goloDoc Comment
hi def link goloDecorator PreProc

let b:current_syntax = "golo"

