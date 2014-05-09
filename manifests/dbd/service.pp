# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::dbd::service (
  $ensure       = $slurm::dbd::service_ensure,
  $enable       = $slurm::dbd::service_enable,
  $service      = 'slurmdbd',
  $service_cmd  = 'slurm-llnl-slurmdbd',
) {

  service { $service:
    ensure      => $ensure,
    enable      => $enable,
    hasstatus   => true,
    hasrestart  => true,
    status      => "/usr/bin/service ${service_cmd} status",
    start       => "/usr/bin/service ${service_cmd} start",
    stop        => "/usr/bin/service ${service_cmd} stop",
    restart     => "/usr/bin/service ${service_cmd} restart",
  }
}
