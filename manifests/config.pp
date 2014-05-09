# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::config (
  $ensure           = $slurm::config_ensure,
  $directory        = $slurm::config_directory,
  $options          = $slurm::config_options,
  $nodes            = $slurm::config_nodes,
  $partitions       = $slurm::config_partitions,
  $cgroup_options   = $slurm::cgroup_options,
  $config_file      = 'slurm.conf',
  $cgroup_file      = 'cgroup.conf',
) {

  validate_hash($options)
  validate_hash($cgroup_options)
  validate_array($nodes)
  validate_array($partitions)

  file { "${directory}/${config_file}":
    ensure  => $ensure,
    mode    => '0440',
    content => template('slurm/slurm.conf.erb')
  }

  file { "${directory}/${cgroup_file}":
    ensure  => $ensure,
    mode    => '0444',
    content => template('slurm/cgroup.conf.erb')
  }

  #Release Agent Scripts
  file { "${directory}/release-common.sh":
    ensure  => $ensure,
    mode    => '0555',
    content => template('slurm/release-common.sh.erb'),
  } ->
  file  { "${directory}/release-cpuset.sh":
    ensure  => 'link',
    target  => "${directory}/release-common.sh",
  } ->
  file  { "${directory}/release-freezer.sh":
    ensure  => 'link',
    target  => "${directory}/release-common.sh",
  }
  file  { "${directory}/release-memory.sh":
    ensure  => 'link',
    target  => "${directory}/release-common.sh",
  }
}

