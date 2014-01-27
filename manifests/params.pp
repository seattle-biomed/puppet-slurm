# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::params {
  $package_name = 'slurm'
  $config_file  = 'slurm/etc/slurm.conf'
  $service_name = $::osfamily ? {
    'Debian' => 'slurm',
    'RedHat' => 'slurm',
    default  => fail('unsupported platform')
  }
}
