# lib/puppet/type/cloudflare_zone.rb
#
# Typical Usage:
#
# cloudflare_zone { 'mydomain.com':
#   ensure      => present,
# }
#
Puppet::Type.newtype(:cloudflare_zone) do
  @doc = 'Type to manage Cloudflare zones'

  ensurable

  newparam(:name) do
    desc 'Name of zone i.e. mydomain.com'
    isnamevar
  end

end
