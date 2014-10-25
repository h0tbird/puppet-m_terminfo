class terminfo (

  purge  = undef,
  backup = undef,

) {

  # Validate parameters:
  validate_bool($purge)
  validate_bool($backup)

  # Manage the terminfo database:
  file { '/usr/share/terminfo':
    ensure  => directory,
    source  => "puppet:///modules/${module_name}/terminfo",
    recurse => true,
    purge   => $purge,
    backup  => $backup,
  }
}
