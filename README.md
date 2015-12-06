puppet-redis
============

Um simples módulo Puppet para a instalação e configuração do serviço de banco de dados Redis.

####O que ele faz?
  * Instala o seviço Redis;
  
####Como Utilizar
  Para utilizar esse módulo basta criar o projeto Vagrant na estrutura abaixo:
  
  <pre>
    --root
      |-- manifests
      |-- modules
      |-- vagranfile
  </pre>
  
  No diretório root do projeto Vagrant, utilize o comando abaixo para baixar e adicionar o módulo a sua pasta de módulos.
    
    git clone https://github.com/magnocosta/puppet-redis.git modules/redis
    
  Adicione a linha abaixo no seu Vagrantfile, para dizer ao Puppet que a pasta modules possui módulos de extensão para seu projetos.
    
    puppet.module_path = "modules"
    
  Feito isso basta usar o módulo nos seu arquivo de provisionamento com a linha abaixo:
  
    include redis::install
    
  E pronto, seu serviço Redis será instalado no proximo provisionamento.  \o/ \o/
