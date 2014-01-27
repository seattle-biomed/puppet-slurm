# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm (
  $config_ensure  = 'present',
  $config_options = hash([]),
  $package_ensure = 'installed',
  $service_ensure = 'running',
  $service_enable = true,
) {
  anchor { "${module_name}::begin": } ->
  class {"${module_name}::package": } ->
  class {"${module_name}::config": } ~>
  class {"${module_name}::service": } ~>
  anchor { "${module_name}::end": }
}
