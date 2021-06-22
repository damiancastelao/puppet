class test {
      file {'/tmp/example-ip':        # tipo de recurso y nombre de fichero
        ensure  => present,     # se asegura de que exista
        mode    => '0644',      # permisos del fichero
        content => "Esta es mi direccion publica: ${ipaddress_enp1s0}\n",  # direccion publica
	}
}

include test

