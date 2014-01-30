# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::dbd::service (
  $ensure   = $slurm::dbd::service_ensure,
  $enable   = $slurm::dbd::service_enable,
  $service  = 'slurm-llnl-slurmdbd'
) {

  service { $service:
    ensure => $ensure,
    enable => $enable,
  }
}
