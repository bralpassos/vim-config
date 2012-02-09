" Minhas configurações pessoais do ~/.vimrc
" Mantido por Bruno Almeida <brunoalmeidapassos@gmail.com>
"
" A idéia é carregar apenas o mínimo necessário e sem plugins ao menos que sejam extremamente úteis
" O vim por si só já faz um excelente trabalho ;)

set nocompatible    " Be IMproved

" -----------------------------------------------
" Opções globais do Pathogen
" -----------------------------------------------
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" -----------------------------------------------
" Opções que afetarão o comportamento visual
" -----------------------------------------------
syntax on           " Todas as opções referentes ao background, por exemplo, ficam no próprio arquivo de cores
set showmode        " Sempre exibir em qual modo esta atualmente
set number          " Mostra o número de linhas
set nowrap          " Não quebre a linha,
set ruler           " Mostra a posição do cursor
set showmatch       " Destaque no parêntese que casa com o parêntese sob o cursor

set nobackup        " Confio no meu controlador de versões :)
set noswapfile      " Commit all the fucking time
set autoread        " Para os casos do arquivo ser alterado após aberto

" -----------------------------------------------
" Opções de pequisa
" -----------------------------------------------
set incsearch       " Pesquisa incremental
set ignorecase      " Auto explicativo...
set hlsearch        " Highligth search :)

" -----------------------------------------------
" Tabs e espaços
" -----------------------------------------------
set autoindent      " Mantém a mesma identação que a linha anterior
set expandtab       " Troca o tab or espaços
set tabstop=4       " Tab equivale a 4 espaços
set shiftwidth=4    " Operações como identação usando o >> também com 4 espaços
set softtabstop=4   " Operações como o backspace também com 4 espaços

" Opção de cor obtida em <bytefluent.com/vivify/> com diversas modificações pessoais
colorscheme darkburn

"-----------------------------------------------
" Mapas das teclas
"-----------------------------------------------
" Quem diabos usa o '\' como tecla de atalho?
let mapleader = ","

" Avisa o vim para identar ou nao o texto ao colar e copiar algo externamente
map <leader>p :set paste<CR>
map <leader>P :set nopaste<CR>

" Mapeamento do NERDTree, simplesmente não consigo mais utilizar nenhuma outra tecla além do F5
noremap <F5> :NERDTreeToggle<CR>

" Desabilidar a marcação das palavras pesquisadas
map <leader>h :set nohlsearch<CR>

" Pula duas linhas por scroll
noremap <C-e> 2<C-e>
noremap <C-y> 2<C-y>

"-----------------------------------------------
" Opções do autocmd
"-----------------------------------------------
" Ao salvar um buffer remover todos os espaços em branco ao final da linha
if has('autocmd')
    autocmd BufWritePre * :call <SID>StripWhite()
    fun! <SID>StripWhite()
        %s/[ \t]\+$//ge
        %s!^\( \+\)\t!\=StrRepeat("\t", 1 + strlen(submatch(1)) / 8)!ge
    endfun
endif
