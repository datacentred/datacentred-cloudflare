# CloudFlare

#### Table of Contents

1. [Overview](#overview)
2. [Usage - Configuration options and additional functionality](#usage)

## Overview

The CloudFlare module allows simple management of DNS entries in Puppet via the CloudFlare v4 API.

## Usage

#### Zones (`cloudflare_zone`)

Set up a CloudFlare zone.

    cloudflare_zone { 'myzone.com':
      ensure => present,
    }

#### DNS Records (`cloudflare_dns_record`)

Add a DNS record to a CloudFlare zone.

    cloudflare_dns_record { 'my-example':
      ensure  => present,
      zone    => 'myzone.com',
      type    => 'A',
      content => '1.2.3.4',
      ttl     => 120,
      proxied => false,
    }