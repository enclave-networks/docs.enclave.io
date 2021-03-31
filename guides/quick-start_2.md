---
layout: layout-page-docs
css-section: docs
parent: "Tutorials and Guides"
parentPath: guides
title: "Getting Started"
subtitle: "Quick Start Guide"
contentPreview: "A short guide to installing, licensing and running Enclave on Linux and Windows. Learn how to use the command line and user interface to get your first networks up and running as quickly as possible."
indexed: true
---

# {{page.title}}

Introduction ..

Right now, building secure and private connectivity is hard. Administrators have to configure firewalls and VPNs, manage IP addresses, subnets, ACLs, NAT, routing tables, certificates and secret keys etc, and then take it all down again after access expires. Lots of manual, error prone work which can introduce vulnerabilities, and often require changes which carry inherent risks that need to be planned, security assessed, scheduled etc.
 
Right now, building secure and private connectivity is risky. You generally have to allow somebody to enter your network, i.e. to connect (in to you vpn server, webserver, rdp, ssh etc) before they present credentials for authentication or know it advance where they're coming from and maintain ACLs. This can lead to all sorts of vulnerabilities and undesirable behaviour from port scanning and credential stuffing to zero day exploitation, MITM etc.

Enclave aims to solve those two problems.

Enclave builds one-to-one connections (directly connected and end-to-end encrypted) without requiring changes to the existing underlying network. It does this from behind closed firewalls using only egress traffic and UDP/TCP hole punching. The result is secure, on-demand and direct connectivity which can be deployed in seconds, even when firewalls, subnets, NAT, subnets, virtual machines or containers are in between - it just works. 
Enclave flips the connect-then-authenticate paradigm. It operates on need-to-know only connectivity, introducing resources only after _mutual_ authentication and authorisation have taken place. All network traffic is egress-only, so ACLs and open ports are no longer required. When you don't need to poke holes in firewalls, open listening ports, publish visible IP addresses or define public DNS records, your infrastructure can effectively go dark to to the public Internet, and also to attackers.
 

At the heart of Enclave is our discovery service (i.e. an approximation of the proposed QLSP). It helps participants find each another on any network, any infrastructure and in any geography. Our endpoint-based software relies on our discovery service to provide introductions between cooperating parties such that direct and private network connectivity can be established, even when those parties are dark to the Internet - protected behind closed firewalls. 

 

Enclave then builds layer 2 network connectivity between those parties (so universal protocol support; i.e. multicast, ip, etc) and abstracts away details of the underlying network along with the complexities of NAT traversal and hole punching. Sometimes we describe Enclave as "VPN, without the VPN server" or "The network you want over the network you have".

 

There is no quantum component to Enclave today. We use (certificate-based) authenticated key exchange between peers and compute ephemeral keys (on a per sessions basis) for symmetric ciphers which encrypt data-in-motion with perfect forward secrecy.  

 

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

## Install Enclave

Enclave is software which builds private, secure and directly connected computer networks.

- [Windows](/handbook/install/windows)
- [Ubuntu](/handbook/install/ubuntu)
- [CentOS](/handbook/install/centos)
- [Arch Linux](/handbook/install/arch-linux)
- [Raspbian](/handbook/install/raspbian)
- [Docker](/handbook/install/docker)
- [Kubernetes](/handbook/install/kubernetes)
- [Synology NAS](/handbook/install/synology-nas)


## Build your first connection

> To complete this quick start guide and build your first connection, you will need at least two systems installed and running Enclave. 


Systems enrolled with Enclave can either be **locally managed** or **centrally managed**. Locally managed systems are great for solo or power users wanting ad-hoc connectivity in scenarios where oversight and centralised control are less important. Centrally managed systems are better suited to business environments allow for greater control and consistency as your Enclave networks grow in size and complexity.

   1. **Locally managed:** <br />
      On a locally managed system, the local users of that system are responsible for controlling Enclave. You can quickly start building network connections to other enrolled systems, visit the [Getting connected](/guides/quick-start#getting-connected) section of our getting started guide to learn more about locally managed systems.

   2. **Centrally managed:** <br />
      Centrally managed systems are controlled by pre-defined [Tags](/handbook/portal/tags) and [Policies](/handbook/portal/policies) in your account [Portal](https://portal.enclave.io/). Visit the [Getting connected](/guides/quick-start#getting-connected) section of our getting started guide to learn more about adding tags to this system and enabling centralised management.







> **This guide applies to the following operating systems:**
> * Windows 7, 8 and 10 and Server 2012, 2016 and 2019
> * Ubuntu 14.04 LTS, 16.04 LTS, 18.04 LTS, 18.10, 20.04 LTS
> * CentOS 7

Each system running Enclave gets issued a certificate. The operators of each system exchange the names on their respective certificates, and instantly get a secure, directly connected, and private network.

Setting up a connection between two or more systems requires mutual consent from all parties, and Enclave networks can only be established if all parties have exchanged their certificate names and agreed to cooperate with one another.

<video poster="/media/quick-start-poster.png" id="player" muted playsinline controls>
    <source src="/media/quick-start.mp4" type="video/mp4" />
</video>

<!-- https://github.com/sampotts/plyr -->
<script src="https://cdn.plyr.io/3.5.0/plyr.js"></script>
<script>
    const player = new Plyr('#player');
</script>

## Installing on Windows

1. From the [downloads section](https://portal.enclave.io/dashboard/download) of your account in the [Enclave Portal](https://portal.enclave.io/), download the latest version of Enclave and run the installer.

## Installing on Linux

1. From the [downloads section](https://portal.enclave.io/dashboard/download) of your account in the [Enclave Portal](https://portal.enclave.io/), select the appropriate installation script for your operating system and run in your terminal. If `sudo` is required you will be prompted.

2. On Linux-based systems, the Enclave binaries unpack to `/opt/enclave/` and configuration and log files reside in `/etc/opt/enclave/`. Once installed, the installation script will display the following message:

   ```
   Installation finished.
   Run sudo enclave license [LICENSE_KEY] to request a certificate.
       sudo systemctl start enclave to start enclave, or sudo enclave start to start as an interactive foreground process.
       sudo enclave add [PEER_NAME] to authorise a connection to another system running enclave.
       sudo enclave for status.
   ```

## Licencing Enclave

To use Enclave, your system requires a certificate. License keys (available from the [Manage License Keys](https://portal.enclave.io/dashboard/licenses) section of your account in the [Enclave Portal](https://portal.enclave.io/)) allow Enclave to request certificates. If you have a trial account, a `30 day trial` license key will have been automatically generated for you.

### User Interface

2. When Enclave starts, use the license key from the [Enclave Portal](https://portal.enclave.io/) to request a certificate unique to your system. Enclave will generate a private key on your local system and encrypt it using the Windows Data Protection API. With a valid license, Enclave will then obtain a certificate for your system from the Enclave Certificate Authority.

### Command Line

1. With Enclave installed, Run Enclave using the `license` argument to provide a valid license. This will generate a new `Universe` profile file located at `/etc/opt/enclave/profiles/Universe.profile` containing configuration, your encrypted private key, and the newly issued certificate.

   In this example, . Keep the license key safe, without it you cannot request certificates.

   ```bash
   $ sudo enclave license
   Enter license key:
   ```

   You may also pass the license key as an argument, the example license key we're using here is `9DPLF-4L6T9-FYCR2-9D342-K85TT` but be aware that your license key may end up in your command line history.
   
   ```bash
   $ sudo enclave license 4WPLF-4L6T9-FYCR2-9D342-K85TT
   ```

   Once the system has been licensed and issued with a certificate, Enclave can be started.

## Starting and Stopping Enclave

### User Interface

On Windows, the tray application will have automatically started the Enclave network for you.

### Command Line

   ```bash
   $ sudo systemctl start enclave
   ```

Alternatively, Enclave can be run interactively using the `start` argument.

   ```bash
   $ sudo enclave start
   ```

Once running, the `status` verb provides a snapshot of Enclave network health and peer connectivity.

   ```
   $ enclave status
   
   Local Identity: WZG24
   
      Release Version . . : 2019.9.25.0
      Profile Name. . . . : Universe
      Profile Location. . : /etc/opt/enclave/profiles/Universe.profile
      Certificate . . . . : CN=WZG24 Expires=Never (Perpetual Issue)
      Adapter Index . . . : tap0 (#4)
      Binding Address . . : 0.0.0.0:36019
      Virtual Network . . : 100.64.0.0/10 (255.192.0.0)
      Virtual Address . . : 100.77.23.184
   
   Peer: discover.enclave.io
   
      Peer State. . . . . : Up
      Certificate . . . . : CN=discover.enclave.io Expires=08/06/2024 09:59:59
      Endpoint. . . . . . : Tcp/35.176.215.206:443
   ```

## Creating connections

In order to establish a connection, both sides must agree that the connection should take place. This means Alice must authorise Bob, and Bob must authorise Alice. To do this, operators exchange their certificate names.

### User Interface

1. Enclave will display your local certificate name as **Local Identity**. Give this name to your partner, and get your partner's Enclave identity in return. In this example, our local certificate name is `WZG24`.

2. If your partner's certificate name is `72LVG` then use the `New Connection` button to authorise your system to connect with theirs. They should do 

3. Your partner should do the same in return and authorise their Enclave network to connect to your certificate name.
   
   ![Example Issue Token](/img/docs/highlighted-authorise-connection.png)

4. When both systems have expressed a mutual intent to communicate, Enclave will automatically handle firewall traversal, peer discovery and key exchange to setup a direct and end-to-end encrypted connection between the cooperating parties.

   The connection will remain in place until either;

   * One side loses their network connection. Once restored, Enclave will re-establish network tunnel.
   * One (or both) sides remove the authorisation they made to talk with their partner, at which point the connection is destroyed.
   * One (or both) certificates expire, at which point the connection is destroyed.

> **Key Principle** — unlike traditional Certificate Authorities, you do not need to specify a domain name, or hostname in order to obtain a certificate. The CA randomly selects the name for each certificate it issues. All communication in Enclave networks is mutually authenticated, so endpoints have no strong real-world identity association to their certificates other than ownership of the corresponding private keys.
>
> For this reason, the Certificate Authority selects names which are are short, sharable and human friendly — like telephone numbers, or car registration number plates.

### Command Line

To continue to example, assume we are Alice and our partner is Bob. We have the following certificate names;

| Person | Certificate Name |
| ------ | ---------------- |
| Alice  | `WZG24`          |
| Bob    | `72LVG`          |

We will authorise Bob's certificate using the `add` verb, and describe `-d` in a familiar way that this certificate name belongs to Bob.

```sh
$ enclave add 72LVG -d "Bob"
```

On Bob's system, he must now make a counter assertion that he wants to to us. Until then, no connection is possible.

```sh
$ enclave add WZG24 -d "Alice"
```

Once a mutual assertion is made by both parties, Enclave will setup the connection and establish a private, shared virtual network between the parties which can be used for any application or service.

> Enclave traffic is subject to filtering by the local firewall. Pay particular attention to the local firewall configuration, Without explicitly permitting traffic to cross an Enclave network port, peers may connect but fail to exchange network traffic.

In order to check the status of the connection, use the `status` verb.

```sh
$ enclave status
```

## Removing connections

All connections in Enclave require mutual consent from both parties. Either party may change their mind at any time and tear down the connection. This is done by removing the authorisation created in the previous section.

### User Interface

Right click on the partner connection you want to terminate and click remove.

### Command Line

Bob may terminate his connection with us by removing the authorisation he made to communicate with our certificate name.

```sh
$ enclave remove WZG24
```