" Bruno Almeida <brunoalmeidapassos@gmail.com>
"
" A idéia é carregar apenas o mínimo necessário e sem plugins ao menos que sejam extremamente úteis
" O vim por si só já faz um excelente trabalho ;)

set nocompatible    " Be IMproved

" Opções globais do Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on           " Todas as opções referentes ao background, por exemplo, ficam no próprio arquivo de cores
set showmode        " Sempre exibir em qual modo esta atualmente
set number          " Mostra o número de linhas
set nowrap          " Não quebre a linha,

set ruler           " Mostra a posição do cursor
set hidden          " Faz com que os buffers sejan escondidos ao invés de fechados ao terminar a edição
set autoindent      " Mantém a mesma identação que a linha anterior
set nobackup        " Confio no meu controlador de versões :)
set noswapfile      " Commit all the fucking time

set incsearch       " Pesquisa incremental
set ignorecase      " Auto explicativo...
set hlsearch        " Highligth search :)

set expandtab       " Troca o tab or espaços
set tabstop=4       " Tab equivale a 4 espaços
set shiftwidth=4    " Operações como identação usando o >> também com 4 espaços
set softtabstop=4   " Operações como o backspace também com 4 espaços

" Opção de cor obtida em <bytefluent.com/vivify/> com diversas modificações pessoais 
colorscheme darkburn

" Mapeamento do NERDTree, simplesmente não consigo mais utilizar nenhuma outra tecla além do F5
map <F5> :NERDTreeToggle<CR>

" Pula duas linhas por scroll 
noremap <C-e> 2<C-e>
noremap <C-y> 2<C-y>

" Ao salvar um buffer remover todos os espaços em branco ao final da linha
if has('autocmd')
    autocmd BufWritePre * :call <SID>StripWhite()

    fun! <SID>StripWhite() 
        %s/[ \t]\+$//ge
        %s!^\( \+\)\t!\=StrRepeat("\t", 1 + strlen(submatch(1)) / 8)!ge
    endfun
endif
