# lib/puppet/type/cloudflare_dns_record.rb
#
# Typical Usage:
#
# cloudflare_dns_record { 'example':
#   ensure  => present,
#   zone    => 'myzone.com',
#   type    => 'A',
#   content => '1.2.3.4',
#   ttl     => 120,
#   proxied => false,
# }
#
Puppet::Type.newtype(:cloudflare_dns_record) do
  @doc = 'Type to manage Cloudflare DNS records'

  ensurable

  newparam(:name) do
    desc 'Name of record i.e. example'
    isnamevar
    validate do |value|
      if value.length > 255
        raise ArgumentError, "Name must be fewer than 255 characters in length."
      end
    end
  end

  newparam(:zone) do
    desc 'Zone to which this DNS record belongs'
  end

  newparam(:type) do
    desc 'Type of DNS record (i.e. A, CNAME, TXT, AAAA etc'
    newvalues('A', 'AAAA', 'CNAME', 'TXT', 'SRV', 'LOC', 'MX', 'NS', 'SPF')
  end

  newparam(:content) do
    desc 'Underlying value of this record'
  end

  newparam(:ttl) do
    desc 'Time To Live value in seconds. Defaults to 300 seconds.'
    defaultto 300
  end

  newparam(:proxied) do
    desc 'Whether to use CloudFlare\'s proxy service. Defaults to false.'
    defaultto false
  end

end
