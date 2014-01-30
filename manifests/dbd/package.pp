# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::dbd::package (
  $ensure   = $slurm::dbd::package_ensure,
  $package  = 'slurm-llnl-slurmdbd'
) {

  package { $package:
    ensure => $ensure,
  }
}
