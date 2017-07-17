" Vim compiler file
" Compiler: Golo

if exists("current_compiler")
  finish
endif
let current_compiler = "golo"

CompilerSet makeprg=golo\ compile\ \%

CompilerSet errorformat=
            \%-P[error]\ In\ Golo\ module:\ %f,
            \[%t%*[^]]]\ %m\ at%*[\ {]line%.%l\\,\ column%.%c%.,
            \%-Q

