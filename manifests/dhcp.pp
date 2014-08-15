class role::dhcp {
  include profile::base  # All roles should have the base profile
  include profile::dhcp

  create_resources(::dhcp::server::subnet, hiera_hash('dhcp_subnet'))
}
