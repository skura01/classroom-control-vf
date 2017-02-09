define users::managed_user (
  $user = $title,
  $homedir = "/home/$title",
  $groups = 'users',
  $ssh_dir = "/home/${title}/.ssh",
  $shell = "/bin/bash",
) {
  user { "${user}" :
    ensure  => present,
    name    => "${user}",
    home    => "${homedir}",
    groups  => "${groups}",
    shell   => "${shell}",
    }
  file { "${homedir}":
    ensure => directory,
  }
  file { "${ssh_dir}":
    ensure  => directory,
    mode => '0600',
 }
}
