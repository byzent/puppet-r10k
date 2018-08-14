# == Class: role::couchdb
# Include profiles for a basic agent role (base and agent)
#
class role::couchdb {
  include ::profile::base
  include ::profile::puppetagent
  include ::profile::couchdb
}
