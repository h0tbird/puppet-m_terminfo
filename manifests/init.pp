class terminfo (

  $purge   = $::terminfo::params::purge,
  $backup  = $::terminfo::params::backup,
  $recurse = $::terminfo::params::recurse,

) inherits terminfo::params {

  file { '/usr/share/terminfo':
    ensure  => directory,
    source  => "puppet:///modules/${module_name}/terminfo",
    recurse => $recurse,
    purge   => $purge,
    backup  => $backup,
  }
}
