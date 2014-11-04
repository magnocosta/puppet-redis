# -*- mode: ruby -*-
# vi: set ft=ruby :

class redis::install {


    file { "/opt/redis-stable":
        ensure => "directory",
        alias => "create-redis-directory"
     }

     exec { "download-redis":
        command => "/usr/bin/wget http://download.redis.io/redis-stable.tar.gz",
        unless  => "/bin/ls | /bin/grep redis-stable.tar.gz",
        require => "create-redis-directory"
     }

    # exec { "tar-redis-stable":
    #    command => "/bin/tar xvzf redis-stable.tar.gz -C /opt/redis-stable",
    #    creates => "/opt/redis-stable",
    #    require => Exec["download-redis"]
    # }

}
