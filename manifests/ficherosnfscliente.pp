class nfscliente {
  class { '::nfs':
      client_enabled => true,
    }
    Nfs::Client::Mount <<| |>>
}