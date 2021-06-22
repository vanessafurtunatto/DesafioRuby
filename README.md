# DesafioRuby
Repositório para desafios em Ruby referentes a capítulo "Base é tudo".



#ComandosGit

Esses foram os comandos git solicitados ao longo do curso: 

#Configuração

$ Git config —global user.name “<nome do usuário>”
$ Git config —global user.email “<email do usuário”


#Criando um Repositório

$Git init - Inicia 
$Git status - Verifica o Status 
$Git Add <file> -Adiciona determinado file 
$Git Add . - Adiciona todos os arquivos criados/modificados
$Git Add *txt - Adiciona pela extensão do Arquivo

#Commit
  
$Git commit -m “”

#ignorar arquivos
  Para ignorar arquivos basta adicioná-los em  .gitignore
  

#Visualizar Alterações
  
$Git diff 
$Git diff  -staged

#Reverter Commit
  
$Git log —pretty=oneline #mostra o hash e o commit
$Git add .
$Git commit —amend -m “ nome da branch que eu quero editar”

#Remover file do staged

$Git reset HEAD <file> 

#Descartar alterações

$Git checkout — <file> 
  

#conflitos de delete

$Git rm <file> #remove o arquivo


#Adicionar tags

$Git tag

$Git tag -a v1.0 -m “”
-a #tag anotada com inf de usuario

#tag recente


#tag commit antigo 

$Git tag -a v0.0 <hash> 

#Mais detalhes 

$Git show <tag>


Altera para o commit da <tag> 
$Git checkout <tag>

#Delete tag

$Git tag
$Git tag -d <tag> 


#Criação de branch

$Git branch <nome>
$Git checkout <nome b>
$Git checkout -b <nome> 

#Merge 

$Git merge <nomeB>

#Deletar branch
$Git branch -d <nomeB>

#Listar todos as branchs 
$Git branch

