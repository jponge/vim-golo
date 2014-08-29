# Golo Vim plugin

This bundle adds a basic syntax support for the [Golo programming language](http://golo-lang.org/), 
as well as some default customisations and plugins configurations.

It works best when used in combination with [Pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone git://github.com/jponge/vim-golo.git

If you're using Vim without Pathogen:

- On a Unix derivative operating system:

    - Copy [`syntax/golo.vim`](https://raw.github.com/jponge/vim-golo/master/syntax/golo.vim) to `~/.vim/syntax/golo.vim` 
    - Copy [`ftdetect/golo.vim`](https://raw.github.com/jponge/vim-golo/master/ftdetect/golo.vim) to `~/.vim/ftdetect/golo.vim`
    - Copy [`indent/golo.vim`](https://raw.github.com/jponge/vim-golo/master/indent/golo.vim) to `~/.vim/indent/golo.vim`
    - Copy [`compiler/golo.vim`](https://raw.github.com/jponge/vim-golo/master/compiler/golo.vim) to `~/.vim/compiler/golo.vim`
    - Copy [`ftplugin/golo.vim`](https://raw.github.com/jponge/vim-golo/master/ftplugin/golo.vim) to `~/.vim/ftplugin/golo.vim`
    - If you use the Snipmate plugin, 
      copy [`snippets/golo.snippets`](https://raw.github.com/jponge/vim-golo/master/snippets/golo.snippets) to its `snippets` directory
    - If you use the syntastic plugin
      copy [`syntax_checkers/golo/golo.vim`](https://raw.github.com/jponge/vim-golo/master/syntax_checkers/golo/golo.vim) to its `syntax_checkers/golo` directory

- On Windows:

    - Copy [`syntax/golo.vim`](https://raw.github.com/jponge/vim-golo/master/syntax/golo.vim) to `$HOME/vimfiles/syntax/golo.vim` 
    - Copy [`ftdetect/golo.vim`](https://raw.github.com/jponge/vim-golo/master/ftdetect/golo.vim) to `$HOME/vimfiles/ftdetect/golo.vim`
    - Copy [`indent/golo.vim`](https://raw.github.com/jponge/vim-golo/master/indent/golo.vim) to `$HOME/vimfiles/indent/golo.vim`
    - Copy [`compiler/golo.vim`](https://raw.github.com/jponge/vim-golo/master/compiler/golo.vim) to `$HOME/vimfiles/compiler/golo.vim`
    - Copy [`ftplugin/golo.vim`](https://raw.github.com/jponge/vim-golo/master/ftplugin/golo.vim) to `$HOME/vimfiles/ftplugin/golo.vim`
    - If you use the Snipmate plugin, 
      copy [`snippets/golo.snippets`](https://raw.github.com/jponge/vim-golo/master/snippets/golo.snippets) to its `snippets` directory
    - If you use the syntastic plugin
      copy [`syntax_checkers/golo/golo.vim`](https://raw.github.com/jponge/vim-golo/master/syntax_checkers/golo/golo.vim) to its `syntax_checkers/golo` directory

You can see value of `$HOME` by entering the following command in Vim : `:echo $HOME`.


## Status

The current form brings basic syntax highlighting in Vim, which is already better than monochrome text.

The Tagbar plugin configuration in `ftplugin/golo.vim` needs a Golo version that can generate ctags.

I am no Vim tuning expert, so feel-free to contribute improvements! **(pull requests only)**

## Legalese

Copyright (C) 2013 Julien Ponge.

This Vim bundle is published under a MIT-style license: see the `LICENSE` file.

### Contributors

- [Philippe Charrière](http://www.k33g.org)
- [Yannick Loiseau](http://yloiseau.net)
