# Manager
Esta é uma aplicação destinada ao gerenciamento de um evento.
### Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

- Java
- MySQL

### Requisitos
Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:

- [JDK](https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html)
- [MySQL Workbench](https://dev.mysql.com/downloads/installer/)
- [JDBC - Java Database Connectivity 5.1.23](https://dev.mysql.com/downloads/connector/j/)
- [rs2xml](https://sourceforge.net/projects/finalangelsanddemons/)

### Instalação
**Certifique-se de possuir uma IDE compatível com JAVA, eu recomendo o [Netbeans](https://netbeans.org/downloads/6.1/index.html?pagelang=pt_BR).**
- Primeiramente, faça o download do código-fonte na [página do repositório Github](https://github.com/mayaracsimoes/Manager). Ou então, use $ git clone https://github.com/mayaracsimoes/Manager.
- Após o download, abra o projeto clonado na IDE.
- Inicie o MySQL Workbench e abra o arquivo Manager.sql, execute o código e certifique-se de que houve a importação do banco de dados.
- Na sua IDE, abra o projeto e execute
- Ok, agora o projeto deve estar rodando em sua máquina.

### Utilização
Ao iniciar o projeto, você irá se deparar com uma tela inicial, nela aparecerá as seguintes opções:
<p> Cadastrar participante → Informe o nome e o sobrenome do participante e clique em 'Cadastrar'.</p> 
<p> Cadastrar sala → Informe o nome da sala e sua lotação máxima e clique em 'Cadastrar'.</p> 
<p> Cadastrar café → Informe o nome do espaço de café e sua lotação máxima e clique em 'Cadastrar'.</p> 
<p> Consultar participante → Informe se a consulta será através do ID, nome ou sobrenome do participante. Em seguida, digite os dados na barra de pesquisa.</p> 
<p> Consultar sala → Informe o número sala que deseja consultar, a lista mostrará todos os participantes cadastrados naquela sala.</p> 
<p> Consultar café → Informe o número do espaço de café que deseja consultar, a lista mostrará todos os participantes cadastrados naquele espaço de café.</p>

### Licença 
Este projeto esta sob a licença [MIT](https://github.com/mayaracsimoes/Manager/blob/master/LICENSE).
