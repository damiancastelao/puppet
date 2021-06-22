# nodos Aula 9, los perlanegra (incluido servidor)
node /^perlanegra[\d]+/ {
    include usuarios2
    include equipos
    include ficheros
    include nfscliente
    include remove_package
    include necesarios_package
    include snap_package
    }

# nodos Aula 6, los nautilus
node /^nautilus[\d]+/ {
     include usuarios1
     include equipos
     include ficheros
     include remove_package
     include necesarios_package
     include snap_package
     }

# nodos Aula 6 por grupo
# node 'nautilus01','nautilus02' {
#     include usuarios1
#     include equipos
#     include ficheros
#     }
     

# servidor - equipo profe
node 'perlanegra00' {
     include nfsserver
     
     #include usuarios1
     #include usuarios2
     #include equipos
     #include ficheros
     #include unattended_upgrades
     
     #include remove_package
     #include necesarios_package

     # Configure puppetdb and its underlying database
     class { 'puppetdb': }
     # Configure the Puppet master to use puppetdb
     class { 'puppetdb::master::config': }
}

# para hacer pruebas en algun nodo
# en el nodo ejecutamos: puppet agent --test
node 'perlanegra08' {
     include usuarios2
     include equipos
     include ficheros
     include nfscliente
     include remove_package
     include necesarios_package
     include snap_package
     include java
}