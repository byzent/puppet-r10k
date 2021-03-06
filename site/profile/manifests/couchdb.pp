# == Class: profile::couchdb
#
#  Install and configure couchdb
#
# === Parameters
#
# === Authors
#
# Vincent Aguillaume
#
# === Copyright
#
# Copyright 2018 Alliander B.V.
#
class profile::couchdb(String $version = lookup({'name' => 'profiles::couchdb::version', 'default_value' => '1.6.1'})
) {

  contain ::couchdb

  couchdb::instance{ 'main':
    version        => $version,
    port           => '5984',
    www_auth       => false,
    admin_login    => 'admin',
    admin_password => 'admin',
  }

  couchdb::db{ 'cmdb': }

  # couchdb::tools { 'couchdb-tools':
  #   ensure => 'present',
  # }

  # couchdb::install { 'couchdb-master':
  #   data => {
  #     '_id'                  => 'couchdb-dev',
  #     'puppet'               => {
  #       'type'     => 'define',
  #       'manifest' => 'install',
  #       'module'   => 'couchdb',
  #     },
  #     'managed_from_couchdb' => false,
  #     'version'              => '1.6.1',
  #     'type'                 => 'configuration',
  #     'otap_environment'     => 'dev',
  #     'configuration_type'   => 'couchdb',
  #     'sub_configurations'   => [
  #       'vm-couchdb',
  #     ],
  #     'ensure'               => 'present',
  #   },
  # }

  # vagrant::couchdb::database { 'couchdb-cmdb':
  #   ensure   => 'present',
  #   database => 'cmdb',
  # }

  # firewall { '001 Couchdb':
  #   proto  => 'tcp',
  #   action => 'accept',
  #   dport  => 5984,
  # }

}
