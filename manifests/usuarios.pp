class usuarios2 {
      user { ['dam2a','dam2b','asir2a','asir2b','sparrow']:
        ensure     => present,
        groups     => ['sudo','kvm','docker'],
        # password   => '$1$b315WMYZ$orxZi0hokZR8eoGNVk/yL1',  # castelao
        shell      => '/bin/bash',
        comment    => '',
        managehome => true
  }
}
class usuarios1 {
      user { ['dam1a','dam1b','asir1a','asir1b','nemo']:
        ensure     => present,
        groups     => ['sudo','kvm','docker'],
        password   => '$1$b315WMYZ$orxZi0hokZR8eoGNVk/yL1',  # castelao
        shell      => '/bin/bash',
        comment    => '',
        managehome => true
  }
}
