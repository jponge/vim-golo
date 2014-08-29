"
" Vim configuration for Golo
"

" Set the compiler
compiler golo

" Tagbar configuration
if exists(':Tagbar')
    if !exists('g:tagbar_type_golo')
        let g:tagbar_type_golo = {
            \ 'ctagsbin'  : 'golo',
            \ 'ctagsargs' : 'doc --format ctags --output -',
            \ 'kinds' : [
                \ 'p:Module',
                \ 'i:Imports',
                \ 'a:Augments',
                \ 'na:Named Augmentations',
                \ 's:Structs',
                \ 'v:Module States',
                \ 'f:Functions',
                \ 'm:fields',
                \ 'g:Union',
                \ 'e:value',
            \ ],
            \ 'sro' : ' ',
            \ 'kind2scope' : {
                \ 's' : 'struct',
                \ 'g' : 'union',
                \ 'a' : 'augment',
                \ 'na' : 'augmentation',
                \ 'e' : 'value',
            \ },
            \ 'scope2kind' : {
                \ 'union': 'g',
                \ 'struct' : 's',
                \ 'augment' : 'a',
                \ 'augmentation' : 'na',
                \ 'value': 'e',
            \}
        \ }
    endif
endif
