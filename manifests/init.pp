# == Class: slurm
#
# This manages both the slurmd and slurmctld services
# Slurm is smart enough to know which to start on a host.
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
  $package_name       = 'slurm-llnl',
  $package_ensure     = 'installed',
  $service_name       = 'slurm-llnl',
  $service_ensure     = 'running',
  $service_enable     = true,
  $service_account    = 'slurm',
) {
  anchor { 'slurm::begin': } ->
  class  { 'slurm::package': } ->
  class  { 'slurm::config': } ~>
  class  { 'slurm::service': } ->
  anchor { 'slurm::end': }
}
