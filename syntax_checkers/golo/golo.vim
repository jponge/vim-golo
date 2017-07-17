"
" Syntastic Golo syntax checker
"

if exists("g:loaded_syntastic_golo_golo_checker")
   finish
endif

let g:loaded_syntastic_golo_golo_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_golo_golo_IsAvailable()
   return executable('golo')
endfunction

function! SyntaxCheckers_golo_golo_GetLocList() dict
   let makeprg = self.makeprgBuild({
       \ 'args': 'check --exit' })

   let errorformat =
       \ '%-P[error] In Golo module: %f,' .
       \ '[%t%*[^]]] %m at%*[ {]line%.%l\, column%.%c%.%#,' .
       \ '%-Q'

       " \ '[%t%*[^]]] %m at%*[ {]line%.%l\, column%.%c%.,' .
   return SyntasticMake({
       \ 'makeprg': makeprg,
       \ 'errorformat': errorformat,
       \ 'returns': [0, 1]})
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
   \ 'filetype': 'golo',
   \ 'name': 'golo'})

let &cpo = s:save_cpo
unlet s:save_cpo


