# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::service (
  $ensure   = $slurm::service_ensure,
  $enable   = $slurm::service_enable,
  $service  = $slurm::service_name,
) {

  service { $service:
    ensure => $ensure,
    enable => $enable,
  }

}
