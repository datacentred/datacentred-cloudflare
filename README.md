# CloudFlare

#### Table of Contents

1. [Overview](#overview)
2. [Usage - Configuration options and additional functionality](#usage)

## Overview

The CloudFlare module allows simple management of DNS entries in Puppet via the CloudFlare v4 API.

## Usage

#### Zones (`cloudflare::zone`)

Set up a CloudFlare zone.

    cloudflare::zone { 'myzone.com': }

#### DNS Records (`cloudflare::dns_record`)

Add a DNS record to a CloudFlare zone.

    cloudflare::dns_record { 'my-example':
      zone    => 'myzone.com',
      type    => 'A',
      content => '1.2.3.4',
      ttl     => 120,
      proxied => false,
    }