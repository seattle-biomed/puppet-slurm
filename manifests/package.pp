# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::package (
  $ensure   = $slurm::package_ensure,
  $package  = $slurm::package_name,
) {

  package { $package:
    ensure => $ensure,
  }
}
