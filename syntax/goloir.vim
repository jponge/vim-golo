" Vim syntax file
" Language: Golo Intermediate representation dump
"
if exists("b:current_syntax")
  finish
endif

syn keyword goloIrNodeType Block Assignment Return LocalReference

syn match goloIrNodeType "Function \([^:]\+\)\@="
syn match goloIrFunctionName "\%(Function \)\@<=<\=\h[a-zA-Z0-9$_]\+>\=\(\s\+\)\@="
syn keyword goloIrNodeType Augmentation nextgroup=goloIrTarget
syn match goloIrTarget "\%(Augmentation on \)\@<=\h[a-zA-Z0-9_.]\+"

syn match goloIrNodeType "Reference lookup"
syn match goloIrNodeType "Binary operator"
syn match goloIrNodeType "Method invocation"
syn match goloIrNodeType "Function call\(:\)\@="
syn match goloIrNodeType "Closure reference"

syn match goloIrDelimiter "{"
syn match goloIrDelimiter "}"
syn match goloIrDelimiter "|"
syn match goloIrDelimiter "("
syn match goloIrDelimiter ")"

syn keyword goloIrNodeProperty capture
syn match goloIrNodeProperty "synthetic\( parameters\)\="
syn match goloIrNodeProperty "null safe?"
syn match goloIrNodeProperty "on reference?"
syn match goloIrNodeProperty "on module state?"
syn match goloIrNodeProperty "anonymous?"
syn match goloIrNodeProperty "named arguments?"

syn match goloIrNodeProperty "kind=" nextgroup=goloIrConstant
syn match goloIrNodeProperty "name=" nextgroup=goloIrString
syn match goloIrNodeProperty "index=" nextgroup=goloIrNumber
syn match goloIrNodeProperty "regular arguments at index" nextgroup=goloIrNumber skipwhite

syn keyword goloIrConstant true false CONSTANT MODULE_CONSTANT 
syn match goloIrString "'[^']*'"


"== Numbers
syn match goloIrNumber "\<\d\(\d\|_\d\)*\(_L\)\=\>"
syn match goloIrNumber "\(\<\d\+\.\=\d*\|\.\d\+\)\(e[-+]\=\d\+\)\=\(_F\)\=\>"
syn match goloIrNumber "\<\d\+\(e[-+]\=\d\+\)\=\>"


" Other comment-like informations
syn match goloIrComment "^>>>.*$"
syn match goloIrLinePrefix "^#"
syn match goloIrModule "\%(# \)\@<=\h[a-zA-Z0-9_.]\+"

let b:current_syntax = "goloir"

hi def link goloIrFunctionName Identifier
hi def link goloIrTarget Identifier
hi def link goloIrNodeType Type
hi def link goloIrDelimiter Delimiter
hi def link goloIrNodeProperty Keyword
hi def link goloIrConstant Constant
hi def link goloIrString String
hi def link goloIrNumber Number
hi def link goloIrComment Comment
hi def link goloIrLinePrefix Comment
hi def link goloIrModule Identifier
