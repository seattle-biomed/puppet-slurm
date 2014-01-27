# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::service (
  $ensure = $slurm::service_ensure,
  $enable = $slurm::service_enable
) {
  include slurm::params
  service { $slurm::params::service_name:
    ensure => $ensure,
    enable => $enable,
  }
}
