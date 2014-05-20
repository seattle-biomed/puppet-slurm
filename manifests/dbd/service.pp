# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::dbd::service (
  $ensure       = $slurm::dbd::service_ensure,
  $enable       = $slurm::dbd::service_enable,
  $service      = 'slurm-llnl-slurmdbd',
) {

  service { $service:
    ensure      => $ensure,
    enable      => $enable,
    hasstatus   => true,
    hasrestart  => true,
    status      => "/usr/bin/service ${service} status",
    start       => "/usr/bin/service ${service} start",
    stop        => "/usr/bin/service ${service} stop",
    restart     => "/usr/bin/service ${service} restart",
  }
}
