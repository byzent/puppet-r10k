# == Class: role::couchdb
# Include profiles for a basic agent role (base and agent)
#
class role::agent {
  include ::profile::base
  include ::profile::couchdb
}
