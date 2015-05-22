class ssh::params {
    $ensure             = 'present'
    $ensure_running     = true
    $ensure_enabled     = true
    $manage_hostkey     = false
    $manage_known_hosts = true
    $manage_users       = false
    $manage_groups      = false
    $permit_root_login  = 'no'
    $listen_address     = "0.0.0.0"
    $hostaliases        = undef

    $users              = {}
    $users_default      = {}
    $groups             = {}

    $options            = {}

    case $::osfamily {
        'Debian': {
            $service_name = 'ssh'
        }
        'RedHat': {
            $service_name = 'sshd'
        }
        default: {
            fail('unsupported platform')
        }
    }

}
