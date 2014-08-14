# == Class: role::puppetmaster
#
# Webserver role
#
# === Parameters
#
# None
#
# === Variables
#
# None
#
# === Examples
#
#  include role::puppet
#
# === Authors
#
# Rob Nelson <rnelson0@gmail.com>
#
# === Copyright
#
# Copyright 2014 Rob Nelson
#
class role::puppetmas {
  include profile::base  # All roles should have the base profile
  include profile::puppet_master
  include profile::puppetdb
  include profile::hiera
  include profile::mcollective::users
  include profile::mcollective::all
}
