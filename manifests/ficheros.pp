class ficheros {

# contenido fichero
$str = "
[main]
certname = ${hostname}
server = perlanegra00
[master]
storeconfigs = true
storeconfigs_backend = puppetdb
report = true
reports = store,puppetdb
"

  # tipo de recurso y nombre de fichero
  file {'/etc/puppetlabs/puppet/puppet.conf':
        ensure  => present,     # se asegura de que exista
        mode    => '0644',      # permisos del fichero
        content => $str,	# contenido declarado previamente
	}

}

