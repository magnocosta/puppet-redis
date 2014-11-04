# -*- mode: ruby -*-
# vi: set ft=ruby :

class redis::install {

     exec { "download-redis":
        command => "/usr/bin/wget http://download.redis.io/redis-stable.tar.gz",
        unless  => "/bin/ls | /bin/grep redis-stable.tar.gz"
     }

     exec { "tar-redis-stable":
        command => "/bin/tar xvzf redis-stable.tar.gz",
        creates => "redis-stable",
        require => Exec["download-redis"]
     }

     exec { "make-redis":
        command => "cd redis-stable && /usr/bin/make",
        require => Exec["tar-redis-stable"]
     }

}
