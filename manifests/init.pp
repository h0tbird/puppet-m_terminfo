class terminfo (

  $purge   = undef,
  $backup  = undef,
  $recurse = undef,

) {

  file { '/usr/share/terminfo':
    ensure  => directory,
    source  => "puppet:///modules/${module_name}/terminfo",
    recurse => $recurse,
    purge   => $purge,
    backup  => $backup,
  }
}
