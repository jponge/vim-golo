# Golo Vim syntax

This bundle adds a basic syntax support for the [Golo programming language](http://golo-lang.org/).

It works best when used in combination with [Pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone git://github.com/jponge/vim-golo.git

If you're using Vim without Pathogen:

- On a Unix derivative operating system:

    - Copy [`syntax/golo.vim`](https://raw.github.com/jponge/vim-golo/master/syntax/golo.vim) to `~/.vim/syntax/golo.vim` 
    - Copy [`ftdetect/golo.vim`](https://raw.github.com/jponge/vim-golo/master/ftdetect/golo.vim) to `~/.vim/ftdetect/golo.vim`

- On Windows:

    - Copy [`syntax/golo.vim`](https://raw.github.com/jponge/vim-golo/master/syntax/golo.vim) to `$HOME/vimfiles/syntax/golo.vim` 
    - Copy [`ftdetect/golo.vim`](https://raw.github.com/jponge/vim-golo/master/ftdetect/golo.vim) to `$HOME/vimfiles/ftdetect/golo.vim`

You can see value of `$HOME` by entering the following command in Vim : `:echo $HOME`.

## Status

The current form brings basic syntax highlighting in Vim, which is already better than monochrome text.

I am no Vim tuning expert, so feel-free to contribute improvements! **(pull requests only)**

## Legalese

Copyright (C) 2013 Julien Ponge.

This Vim bundle is published under a MIT-style license: see the `LICENSE` file.

