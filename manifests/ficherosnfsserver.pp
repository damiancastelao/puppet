class nfsserver {

  class { '::nfs':
      server_enabled => true
    }
    nfs::server::export{ '/home/ISOs':
      ensure  => 'mounted',
      clients => '10.0.9.0/24(ro,insecure,async,no_root_squash) localhost(ro)',
      mount   => '/opt/ISOs',
    }

}