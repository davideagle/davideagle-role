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
#  include role::puppetmaster
#
# === Authors
#
# Rob Nelson <rnelson0@gmail.com>
#
# === Copyright
#
# Copyright 2014 Rob Nelson
#
class role::puppetmaster {
  include profile::base  # All roles should have the base profile
  include profile::puppetdb.pp
  include profile::mcollective.pp
  include profile::hiera.pp
}
