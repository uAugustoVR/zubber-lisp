README

Passo a passo de como baixar e instalar o clisp, para rodar a aplica��o.

No Windows

- Primeiro passo: Acesse o link: <https://sourceforge.net/projects/clisp/>, ao acessar o link clique no bot�o �Download� aguarde cinco segundos e o download ser� iniciado.
- Segundo passo: Ap�s fazer o download, vamos precisar descompactar o arquivo que foi baixado, por padr�o o arquivo vem no formato .zip, ent�o o Windows consegue descompactar o download sem precisar baixar algum programa que fa�a essa fun��o, caso o usu�rio tenha algum programa que descompacte arquivos ele pode ser usado sem problemas.
- Terceiro passo: Ap�s descompactarmos os arquivos uma pasta � gerada, dentro dessa pasta o arquivo �clisp� � o aplicativo que ir� executar os programas.
- Terceiro passo: Assim que o aplicativo for aberto, para executar o programa iremos usar o seguinte comando (load "...zubber/main.lisp"). No lugar da retic�ncia iremos colocar o endere�o onde est� salvo os arquivos do programa. Exemplo: (load ".../zubber/main.lisp") usando esse exemplo tamb�m � necess�rio que seja mudado dentro do c�digo o caminho onde os arquivos do programa est�o salvos no seu computador, no arquivo Main, Warrior e Motorista o programa puxa esses 3 arquivos, segue um exemplo das linhas onde o programa puxa os arquivos.

Main

(load "/zubber/motorista.lisp")
(load "/zubber/usuario.lisp")
(load "/zubber/warrior.lisp")
(Ler_comercio "/zubber/arquivos/Itens_restaurantes.txt" 5)
(Ler_comercio "/zubber/arquivos/Itens_farmacias.txt" 4)
(Ler_comercio "/zubber/arquivos/Itens_supermercados.txt" 3)
(Ler_comercio "/zubber/arquivos/Itens_livrarias.txt" 2)

Warrior

(Escrever\_item "/zubber/arquivos/Itens\_restaurantes.txt" 5))
(Escrever\_item "/zubber/arquivos/Itens\_farmacias.txt" 4))
(Escrever\_item "/zubber/arquivos/Itens\_supermercados.txt" 3))
(Escrever\_item "/zubber/arquivos/Itens\_livrarias.txt" 2))

Motorista

(with-open-file (stream "/zubber/arquivos/Locais.txt")
(with-open-file (stream "/zubber/arquivos/Motoristas.txt")
(with-open-file (f "/zubber/arquivos/Motoristas.txt":direction :output :if-exists :append :if-does-not-exist :create)
(with-open-file (f "/zubber/arquivos/Locais.txt":direction :output :if-exists :append :if-does-not-exist :create)

Para que n�o ocorra erro, � necess�rio que seja alterado dentro do c�digo para o local onde est� salvo o programa dentro do computador do usu�rio.

No Linux

- Primeiro passo: Para baixar e instalar o clisp no seu Linux, abra o terminal, usaremos o seguinte comando sudo apt-get install clisp.
- Segundo passo: Para executarmos o programa iremos abrir o terminal e usar o comando clisp, com isso o programa ir� executar em seu computador.
- Terceiro passo: Assim que o aplicativo for aberto, para executar o programa iremos usar o seguinte comando (load "...zubber/main.lisp"). No lugar da retic�ncia iremos colocar o endere�o onde est� salvo os arquivos do programa. Exemplo: (load "...zubber/main.lisp") usando esse exemplo tamb�m � necess�rio que seja mudado dentro do c�digo o caminho onde os arquivos do programa est�o salvos no seu computador, no arquivo Main, Warrior e Motorista o programa puxa esses 3 arquivos, segue um exemplo das linhas onde o programa puxa os arquivos.

Main

(load "/zubber/motorista.lisp")
(load "/zubber/usuario.lisp")
(load "/zubber/warrior.lisp")
(Ler_comercio "/zubber/arquivos/Itens_restaurantes.txt" 5)
(Ler_comercio "/zubber/arquivos/Itens_farmacias.txt" 4)
(Ler_comercio "/zubber/arquivos/Itens_supermercados.txt" 3)
(Ler_comercio "/zubber/arquivos/Itens_livrarias.txt" 2)

Warrior

(Escrever\_item "/zubber/arquivos/Itens\_restaurantes.txt" 5))
(Escrever\_item "/zubber/arquivos/Itens\_farmacias.txt" 4))
(Escrever\_item "/zubber/arquivos/Itens\_supermercados.txt" 3))
(Escrever\_item "/zubber/arquivos/Itens\_livrarias.txt" 2))

Motorista

(with-open-file (stream "/zubber/arquivos/Locais.txt")
(with-open-file (stream "/zubber/arquivos/Motoristas.txt")
(with-open-file (f "/zubber/arquivos/Motoristas.txt":direction :output :if-exists :append :if-does-not-exist :create)
(with-open-file (f "/zubber/arquivos/Locais.txt":direction :output :if-exists :append :if-does-not-exist :create)

Para que n�o ocorra erro, � necess�rio que seja alterado dentro do c�digo para o local onde est� salvo o programa dentro do computador do usu�rio.

- Caso tenha dificuldade ou mais d�vidas sobre o processo de instala��o do clisp, segue um link que poder� auxiliar no processo. <https://howtoinstall.co/pt/clisp> 

Executando o programa

- Assim que o programa for usado execute o comando (Pedir_servico), ap�s executar esse comando iremos escolher o tipo do servi�o que pode ser de entrega ou viagem. Caso seja escolhido o servi�o de entrega, o usu�rio ir� fornecer o local da compra, o local de entrega e escolher os itens da lista que ser�o comprados. Caso o usu�rio escolha o servi�o de viagem, dever� fornecer a sua localiza��o e o endere�o de destino. Os nomes de locais solicitados pelo programa devem corresponder os descrito no arquivo txt �Locais� para que a execu��o ocorra corretamente, n�o encontrando a localiza��o fornecida o programa solicitara a inclus�o desse local e seus respectivos dados. Em ambos os servi�os o programa ir� escolher o motorista mais pr�ximo do usu�rio e o status do motorista ir� ser atualizado de �livre� para �ocupado�. Durante a execu��o do programa todos os motoristas, locais e itens est�o em nossos arquivos TXT que vem junto com o c�digo.

Finalizando um servi�o

- Para finalizar o servi�o devemos usar o comando (Finalizar ID), o motorista ir� fornecer o seu ID de registro para o sistema, supondo que temos um ID igual a 5 que acaba de encerrar um servi�o e o motorista deseja finaliz�-lo ser� usada a fun��o "(Finalizar 5)" dessa forma sua localiza��o ser� atualizada para a atual e seu status estar� dispon�vel para novos servi�os, finalizando assim o servi�o.

