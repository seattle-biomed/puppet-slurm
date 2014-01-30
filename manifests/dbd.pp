# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::dbd (
  $config_ensure      = 'present',
  $config_options     = hash([]),
  $package_ensure     = 'installed',
  $service_ensure     = 'running',
  $service_enable     = true,
) {
  anchor { 'slurm::dbd::begin': } ->
  class  { 'slurm::dbd::package': } ->
  class  { 'slurm::dbd::config': } ~>
  class  { 'slurm::dbd::service': } ->
  anchor { 'slurm::dbd::end': }
}
