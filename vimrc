set nocompatible    " Be IMproved

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax on               " Todas as opções referentes ao background, por exemplo, ficam no próprio arquivo de cores
filetype plugin on      " Comporta-se adquadamente de acordo com o formato do arquivo sendo editado

"colorscheme darkburn

" -----------------------------------------------
" Opções gerais
" -----------------------------------------------
set number
set nowrap                  " Não quebre a linha
set wildmenu                " Opção de autocompletar com o tab as opções do vim em comand-line
set visualbell t_vb=        " Desabilita o barulho irritante do speaker, e ao invés de piscar a tela não faz nada
set directory=~/.vim/tmp,   " Salva os arquivos de sessão do vim em um diretório à parte
set backupdir=~/.vim/tmp,   " Salva os arquivos de sessão do vim em um diretório à parte

" -----------------------------------------------
" Opções de pequisa
" -----------------------------------------------
set incsearch           " Pesquisa incremental
set ignorecase          " Auto explicativo...
set hlsearch            " Highligth search :)
set smartcase           " Se a pesquisa for tudo minúsculo, ignora o case, mas se houver pelo menos um caractere maiúsculo, o case será levado em consideração

" -----------------------------------------------
" Tabs e espaços
" -----------------------------------------------
set smartindent                     " Mantém a mesma identação que a linha anterior
set expandtab                       " Troca o tab or espaços
set tabstop=4                       " Tab equivale a 4 espaços
set shiftwidth=4                    " Operações como identação usando o >> também com 4 espaços
set softtabstop=4                   " Operações como o backspace também com 4 espaços
set list listchars=tab:→\ ,trail:·  " Exibe o caractere tab para o caso de alguém cometer o sacrilégio de misturar espaços com tabs


"-----------------------------------------------
" Mapas das teclas
"-----------------------------------------------
" Quem diabos usa o '\' como tecla de atalho?
let mapleader = ","

" Pula duas linhas por scroll
noremap <C-e> 2<C-e>
noremap <C-y> 2<C-y>

" Desabilidar a marcação das palavras pesquisadas no momento
map <leader>h :nohlsearch<CR>

" Para para exibir/ocultar o NERDTree e para atualizar o NERDTree com o arquivo aberto
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<CR>

" Avisa o vim para identar ou nao o texto ao colar e copiar algo externamente
map <leader>p :set paste<CR>
map <leader>P :set nopaste<CR>

" Define a linha atual como a linha zero na régua
map <leader>r :set relativenumber<CR>
map <leader>R :set norelativenumber<CR>

map <leader>t :TlistToggle<CR>

" Mapas para exibir/ocultar a barra com a limitação da 80ª coluna
map <leader>8 :set colorcolumn=81<CR>
map <leader>0 :set colorcolumn=0<CR>

"-----------------------------------------------
" Opções para o TagList
"-----------------------------------------------
let Tlist_Use_Right_Window=1            " Lista de tags à direita
let Tlist_GainFocus_On_ToggleOpen=1     " Ganhar foco ao abrir a janela
let Tlist_File_Fold_Auto_Close=1        " Não exibe tags de buffers inativos
let Tlist_Close_On_Select=1             " Fecha o TagList ao selecionar alguma opção

let tlist_php_settings='php;c:Classes;f:Functions' " Escondendo variáveis no TagList para PHP

"-----------------------------------------------
" Opções para o NERDTree
"-----------------------------------------------
let NERDTreeShowHidden=1                            " Exibe os arquivos ocultos
let NERDChristmasTree=1                             " Algumas cores a mais, se disponível
let NERDTreeHighlightCursorline=1                   " Tudo bem que esse é o padrão...
let NERDTreeShowLineNumbers=1                       " TODO: Alterar pelo relativenumber, apenas para o NERDTree
let NERDTreeIgnore=['\.*pyc$', '\.git$', '\.hg$']   " Arquivos ignorados pelo NERDTree
