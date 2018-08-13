# == Class: profiles::base
#
#  Install packages
#
class profile::base {
  include ::common::packages::install

  notify { 'Message':
    name => lookup({'name' => 'message', 'default_value' => 'No message found'}),
  }
}
