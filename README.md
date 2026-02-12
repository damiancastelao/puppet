# Bitácora Puppet Aulas Informáticas

## Instalación

Por los repositorios de debian 12

## Master
- IP: 10.0.9.253
- nombre: aula09-profesor (Cuidado! todo con minúscula)

- Nombres en `/etc/hosts`
`10.0.9.253      aula09-profesor puppet`

Inicar servicio

`# systemctl start puppetserver`

## Agente

Crear certificado

`puppet agent -t --server aula09-profesor`

Comprobar certificado en el Master

`puppetserver ca list`

Firmarlo en el Master

puppetserver ca sign --certname *nombre_agente*



