---
layout: layout-page-docs
css-section: docs
parent: "Tutorials and Guides"
parentPath: guides
title: "Getting Started"
subtitle: "Quick Start Guide"
contentPreview: "A short guide to installing, licensing and running Enclave on Linux and Windows. Learn how to use the command line and user interface to get your first networks up and running as quickly as possible."
indexed: true
redirect_from:
 - /quick-start
 - /quick-start-cli
---

# {{page.title}}

#### Simplify, secure and automate networks at scale.

---

Building secure, private connectivity is hard, and can be risky.

Administrators have to configure firewalls and VPNs, manage IP addresses, subnets, port numbers, ACLs, NAT, routing tables, certificates and secret keys to build connections, and then take it all away again as business requirements change or access expires. Building connectivity pathways is often a manual, error prone work which itself can introduce vulnerabilities, and often means making network changes that carry inherent risks which need to be planned, managed, security assessed, peer reviewed and scheduled.
 
Right now, building secure and private connectivity is risky. You generally have to allow somebody to enter your network, i.e. to connect (in to you vpn server, webserver, rdp, ssh etc) before they present credentials for authentication or know it advance where they're coming from and maintain ACLs. This can lead to all sorts of vulnerabilities and undesirable behaviour from port scanning and credential stuffing to zero day exploitation, MITM etc.

Enclave aims to solve those problems.

Enclave builds one-to-one connections (directly connected and end-to-end encrypted) without requiring changes to the existing underlying network. It does this from behind closed firewalls using only egress traffic and UDP/TCP hole punching. The result is secure, on-demand and direct connectivity which can be deployed in seconds, even when firewalls, subnets, NAT, subnets, virtual machines or containers are in between - it just works. 
Enclave flips the connect-then-authenticate paradigm. It operates on need-to-know only connectivity, introducing resources only after _mutual_ authentication and authorisation have taken place. All network traffic is egress-only, so ACLs and open ports are no longer required. When you don't need to poke holes in firewalls, open listening ports, publish visible IP addresses or define public DNS records, your infrastructure can effectively go dark to to the public Internet, and also to attackers.

Enclave then builds layer 2 network connectivity between those parties (so universal protocol support; i.e. multicast, ip, etc) and abstracts away details of the underlying network along with the complexities of NAT traversal and hole punching. Sometimes we describe Enclave as "VPN, without the VPN server" or "The network you want over the network you have".

We use (certificate-based) authenticated key exchange between peers and compute ephemeral keys (on a per sessions basis) for symmetric ciphers which encrypt data-in-motion with perfect forward secrecy.  

## How Enclave is different?

| | Enclave | Traditional VPN | Software Defined Perimeter (SDP) | 
|-|---------|-----------------|----------------------------------|
| Serverless  | ✅ | ❌ |     |
| On demand  | ✅ | ❌ |     |
| No public IP addresses  | ✅ | ❌ |     |
| Works on "unreachable" networks  | ✅ | ❌ |     |
| Dynamic IP tolerant  | ✅ | ❌ |     |
| Zero configuration  | ✅ | ❌ |     |
| Mutual authentication  | ✅ | ❌ |     |
| end-to-end encryption  | ✅ | ❌ |     |
| Serverless  | ✅ | ❌ |     |
| Serverless  | ✅ | ❌ |     |

## Enrol systems

> To complete this quick start guide and build your first connection, you will need at least two systems installed and running Enclave. 


Systems enrolled with Enclave can either be **locally managed** or **centrally managed**. Locally managed systems are great for solo or power users wanting ad-hoc connectivity in scenarios where oversight and centralised control are less important. Centrally managed systems are better suited to business environments allow for greater control and consistency as your Enclave networks grow in size and complexity.

**Note:** Each system enrolled to your account can either be **locally managed** or **centrally controlled**, this setting can be changed at any time. Add tags to an enrolled system and it becomes centrally controlled. Remove all tags and it Enclave will allow the end-user to manage connectivity. 

<div id="section-tutorial-tiles" class="row">
   <div class="col-sm-6">
      <a class="tile centrally-managed" href="/guides/quick-start-tags-and-policy">
         <div class="title"><i class="fa fa-list-alt" aria-hidden="true"></i> Tags &amp; Policy</div>
         <div class="text">
            <p>When an enrolled system is assigned tags Enclave will treat it as centrally managed; end-users of that system cannot control Enclave.</p>
            <p>Managed systems allow organisations to centrally define policy and governance and apply oversight, consistency and control as networks grow in size and complexity.</p>
            <p>Best for teams and commercial users.</p>
         </div>
         <button>Enrol with tags &amp; policy <i class="fa fa-arrow-right" aria-hidden="true"></i></button>
      </a>
   </div>
   <div class="col-sm-6">
      <a class="tile locally-managed" href="/guides/quick-start-locally-managed">
         <div class="title"><i class="fa fa-sitemap" aria-hidden="true"></i> Locally Managed</div>
         <div class="text">
            <p>When an enrolled system is not assigned any tags Enclave will treat it as locally managed; end-users of that system will be able control Enclave.</p>
            <p>Locally managed systems are used for quick, ad-hoc connectivity to other enrolled systems where oversight and centralised control are less important.</p>
            <p>Best for home, hobbyist or solo users.</p>
         </div>
         <button>Enrol a locally managed system <i class="fa fa-arrow-right" aria-hidden="true"></i></button>
      </a>
   </div>
</div>

**Tip:** If you're not sure, start by [enrolling your first systems with tags &amp; policy](/guides/quick-start-tags-and-policy).
