# actualizamos/upgrade diariamente

class remove_package {
      # remove a package
      package { ['docker-engine', 'docker.io', 'containerd', 'runc']:
              ensure => 'absent',
          }
}

class snap_package {
      package { ['code','chromium']:
        ensure   => latest,
        provider => snap,
      }
}

class necesarios_package {
      package { ['emacs', 'virtualbox', 'virtualbox-guest-additions-iso']:
      	      ensure => installed,
	      }
      class { 'docker': 
      	         version => 'latest',
	    }
      class { 'unattended_upgrades':
                 origins => ['${distro_id}:${distro_codename}','${distro_id}:${distro_codename}-security','${distro_id} ${distro_codename}-updates'],
                 remove_new_unused_deps => true,
            }
}