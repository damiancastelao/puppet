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