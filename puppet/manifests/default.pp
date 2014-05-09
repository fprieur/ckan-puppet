Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

#file { '/etc/bash.bashrc':
#          ensure => present,
#          source => "/bootstrap_files/bash.bashrc",
#}

include apache
include system-update
include locales
