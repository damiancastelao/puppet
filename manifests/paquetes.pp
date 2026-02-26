# Paquetes necesarios

# TODO actualizamos/upgrade diariamente
# TODO actualizar el source list de apt en este fichero, para incluir instalaciones como code

class remove_package {
      # remove a package
      package { ['docker-engine', 'docker.io', 'containerd', 'runc']:
              ensure => 'absent',
      }
}

class necesarios_package {
      package { ['wireshark','git', 'emacs', 'virtualbox', 'code']:
              ensure => installed,}

}
class { 'docker':
                 version => 'latest',
            }
#class { 'unattended_upgrades':
#                 origins => ['${distro_id}:${distro_codename}','${distro_id}:${distro_codename#}-security','${distro_id}\
 ${distro_codename}-updates'],
#                 remove_new_unused_deps => true,
#            }
#}

include remove_package
include necesarios_package
