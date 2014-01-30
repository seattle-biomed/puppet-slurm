# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::dbd::config (
  $config_file  = 'slurmdbd.conf',
  $ensure       = $slurm::dbd::config_ensure,
  $directory    = $slurm::config_directory,
  $options      = $slurm::dbd::dbd_config_options,
) {

  file { "${directory}/${config_file}":
    ensure  => $ensure,
    mode    => '0440',
    content => template('slurm/slurmdbd.conf.erb')
  }
}

