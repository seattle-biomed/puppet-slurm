# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm (
  $config_directory   = '/etc/slurm-llnl',
  $config_ensure      = 'present',
  $config_options     = hash([]),
  $config_nodes       = [],
  $config_partitions  = [],
  $cgroup_options     = hash([]),
  $dbd_config_options = hash([]),
  $package_ensure     = 'installed',
  $service_ensure     = 'running',
  $service_enable     = true,
) {
  anchor { 'slurm::begin': } ->
  class  { 'slurm::package': } ->
  class  { 'slurm::config': } ~>
  class  { 'slurm::service': } ->
  anchor { 'slurm::end': }
}
