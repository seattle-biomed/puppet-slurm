# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::package (
  $ensure = $slurm::package_ensure
) {
  include slurm::params
  package { $slurm::params::package_name:
    ensure => $ensure,
  }
}
