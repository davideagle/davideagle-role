# == Class: role::webserver
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
#  include role::webserver
#
# === Authors
#
# Rob Nelson <rnelson0@gmail.com>
#
# === Copyright
#
# Copyright 2014 Rob Nelson
#
class role::webserver {
  include profile::tomcat_server
  include profile::base  # All roles should have the base profile

  create_resources(::tomcat, hiera_hash('tomcat'))
}
