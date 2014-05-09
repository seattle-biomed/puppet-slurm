# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::service (
  $ensure       = $slurm::service_ensure,
  $enable       = $slurm::service_enable,
  $service      = $slurm::service_name,
  $service_cmd  = 'slurm-llnl',
) {

  service { $service:
    ensure      => $ensure,
    enable      => $enable,
    hasstatus   => true,
    hasrestart  => true,
    status      => "/usr/bin/service ${service_cmd} status",
    start       => "/usr/bin/service ${service_cmd} start",
    stop        => "/usr/bin/service ${service_cmd} stop",
    restart     => "/usr/bin/service ${service_cmd} restart",  }

}
