# Meus arquivos de configuração do Vim

A idéia aqui é manter o vim o mais enxuto possível e apenas com o que for necessário e produtivo.
Todos os plugin estão instalados através do Pathogen e utilizando submódulos do git com as versões mais recentes no Github.

Crie um link do vimrc controlado pelo git para o seu $HOME, por exemplo:

    ln -s ~/.vim/vimrc ~/.vimrc

## Submódulos

Para atualizar todos os plugins com a última versão no Github:

    git submodule update --init

## Mapas de teclas:

* F5: Toogle do NERDTree
