# Meus arquivos de configuração do Vim

A ideia aqui é manter o vim o mais enxuto possível e apenas com o que for necessário e produtivo.
Todos os plugin estão instalados através do Pathogen e utilizando submódulos do git com as versões mais recentes no Github.

Crie um link do vimrc controlado pelo git para o seu $HOME, por exemplo:

    $ ln -s ~/.vim/vimrc ~/.vimrc

## Submódulos

Para atualizar todos os plugins com a última versão no Github:

    $ git submodule update --init

Todos os arquivos do plugin, como /doc, /syntax e etc ficam em seu diretório específico dentro do vim/bundle.
Para remover o plugin basta remover o diretório, sem ter que ficar caçando onde tem arquivos do plugin.
Além disso ao rodar o update do submodule todos os plugins estarão com a última versão de desenvolvimento que está no GitHub.

Notas:

Para que o plugin TagList funcione adequadamente é necessário a instação do ctags/exuberant-ctags.

