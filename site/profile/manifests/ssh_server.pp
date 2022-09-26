class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDclSgcqu5aC3C/2y3mnn8vLT7JSmbphOT2zR+yAeVyS+EPZIVfdh5WJu8XvFKw95/Rb65XO3ku6WPItg+uL5cbQ1pVto/iC8ul5r4Olt55MNGpDopvFxfr6G02UBSvHxsWbuaajppBxVKkR5Tu/GB5ATBbXSTD1trWCVyt9Hg7/vy7ukSB0pDfAsvdltPVC7vV7P/oPf+mg/i+avmgz0zc4eWuScDLTIip1gpIv5j3DyLZevp5yAqE72Xxj0gMpmK4Ab2c2eMEdS/b+TwS3EDJJvsNWCpMZ4OtzYUi0Pj8M4924sYY1cQcDmxdseEum30s7DEgx2OcyQIVFUeIRdV1',
    }
}
