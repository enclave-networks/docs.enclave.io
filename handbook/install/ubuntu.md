---
layout: layout-page-docs
css-section: docs-handbook
parent: "Enclave Handbook"
parentPath: handbook
title: "Installing Enclave on Ubuntu"
subtitle: "User Guide"
contentPreview: ""
indexed: true
---

# {{page.title}}

> This guide applies to Ubuntu 14.04 LTS, 16.04 LTS, 18.04 LTS, 18.10, 19.10 and 20.04 LTS.

Packages are available for x86, x64 and ARM. All work with Ubuntu 14.04 LTS and higher.

1. Install the **apt-transport-https** plugin.
   ```bash
   sudo apt-get install apt-transport-https
   ```
2. Add Enclave’s package signing key and repository to apt sources.
   ```bash
   curl -fsSL https://packages.enclave.io/apt/enclave.stable.gpg  | sudo apt-key add -
   curl -fsSL https://packages.enclave.io/apt/enclave.stable.list | sudo tee /etc/apt/sources.list.d/enclave.list
   sudo apt-get update
   ```
3. Install Enclave.
   ```bash
   sudo apt-get install enclave
   ```
4. You will need provide a valid [Enrolment key](/handbook/portal/enrolment-keys) from your [Portal](https://portal.enclave.io/) account to complete  installation.

**Congratulations!** You've successfully enrolled a new system to your Enclave account.

## Next steps

Depending on the type of enrolment key you used to enrol your new system, it might be held waiting for an Administrator to provide enrolment approval in your account [Portal](https://portal.enclave.io/). Log in to authorise the enrolment of your new system and configure additional options like DNS. 

**Find your local Enclave IP address** <br />
Run `enclave status` at the command line to find the **Virtual Address** of your newly installed system.

**Connect to other systems** <br />
Add [Tags](/handbook/portal/tags) to this system in the [Portal](https://portal.enclave.io/) to enable centralised management of network connectivity through [Policies](/handbook/portal/policies), or use this system without centralised management and allow local users to [define and manage](/handbook/portal/key-concepts) connectivity to other Enclave systems.

**Test connectivity** <br />
Pings are a great start, but don't forget to check the local firewall configuration to ensure ICMP traffic is permitted.

## Starting and stopping Enclave

The installer creates a lightweight supervisor service set to run at system start which is responsible for starting the Enclave fabric. The supervisor service exists to start, stop and restart Enclave fabric in the background as daemon child processes.

The supervisor service responds to the Enclave CLI verbs [start](/handbook/fabric/cli/start) and [stop](/handbook/fabric/cli/stop) to control the Fabric.

## Updating Enclave

![Enclave tray application showing an available update](https://via.placeholder.com/847x460)

## Uninstalling Enclave

**TODO** `apt-get remove` and `apt-get purge`

> **Note:** Enclave does not backup a system's private keys. Lost or deleted private keys are not recoverable. If a system's configuration and private keys are lost, to use that system with Enclave again it must be re-enrolled.