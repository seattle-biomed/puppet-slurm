# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::config (
    $ensure   = $slurm::config_ensure,
    $options  = $slurm::config_options,
) {
  include slurm::params
  file { $slurm::params::config_file:
    ensure  => $ensure,
    mode    => '0440',
    content => template('slurm/slurm.conf.erb')
  }
}

