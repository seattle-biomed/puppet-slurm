# slurm

This is the slurm module.

# Requirements

* Puppetlabs/stdlib

# Installation

  puppet module install seattle-biomed/slurm

# Synopsis

  Install and manage slurm service.

# Parameters

- *config_ensure* (Default: 'present')
- *config_options* (Default: Empty)
- *package_ensure* (Default: 'true')
- *service_ensure* (Default: 'running')
- *service_enable* (Default: 'true')

# Examples

Basic Installation

  include '::slurm'

Parameterized Installation

  $config_options = {
    option => value
  }

  class { '::slurm':
    config_ensure  => 'present',
    config_options => $config_options,
    package_ensure => 'true',
    service_ensure => 'running',
    service_enable => 'true',
  }

Installation with Hiera

  ---
  class:  - slurm
  slurm::config::ensure:  'present'
  slurm::config::options:
    option: value
  slurm::package::ensure:  'true'
  slurm::service::ensure:  'running'
  slurm::service::enable:  'true'

# License

  See LICENSE

# Contact


# Support

Please log tickets and issues at our [Projects site](https://github.com/seattle-biomed/slurm)
