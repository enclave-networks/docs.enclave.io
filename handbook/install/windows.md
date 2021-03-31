---
layout: layout-page-docs
css-section: docs-handbook
parent: "Enclave Handbook"
parentPath: handbook
title: "Installing Enclave on Windows"
subtitle: "User Guide"
contentPreview: ""
indexed: true
---

# {{page.title}}

> This guide applies to Windows 7, 8 and 10 and Windows Server 2012, 2016 and 2019.

Enclave works with Windows 7 or Windows Server 2012 and higher.

1. Download the latest Windows installer from the [Downloads](https://portal.enclave.io/download) section of your account [Portal](https://portal.enclave.io/).
2. Run the installer. Administrator privileges are required, but the installer will prompt for privilege elevation if necessary.
3. You will need to provide a valid [Enrolment key](/handbook/portal/enrolment-keys) from your [Portal](https://portal.enclave.io/) account to complete installation.
4. Once installed, Enclave will start and add a new tray icon to your system tray. If the Enclave tray icon is not visible, click the up arrow to find it in the hidden system tray overflow area.
    <figure>
        <img src="/img/docs/enclave-tray-icon.png" alt="Tray icon hidden in the icon overflow area"/>
    </figure>
6. Right click on the tray icon to access the Enclave user interface.
7. Depending on the type of enrolment key you used to enrol your new system, it might be held waiting for an Administrator to provide enrolment approval in your account [Portal](https://portal.enclave.io/). Log in to authorise the enrolment of your new system if you need to and configure additional options like DNS.

**You're all set!** You've successfully enrolled a new system to your Enclave account.

## Next steps

**Connect to other Enclave systems:** <br />
Visit the [building your first connection](/guides/quick-start#getting-connected) section of our getting started guide to learn how to control Enclave.

**Find your local Enclave IP address:** <br />
Open the Windows tray application to find your **Local Address** or run `enclave status` from a command prompt.

**Test connectivity:** <br />
Pings are a great start, but don't forget to check the local Windows firewall configuration to ensure ICMP traffic is permitted.

## Starting and stopping Enclave

The Windows installer creates a lightweight supervisor service (named **Enclave** in the Services MMC snap-in) which automatically runs at system start and is responsible for starting the Enclave fabric. The supervisor service exists to start, stop and restart Enclave fabric in the background as child processes.

The supervisor service responds to the Enclave CLI verbs [start](/handbook/fabric/cli/start) and [stop](/handbook/fabric/cli/stop) to control the Fabric.

## Updating Enclave

![Enclave tray application showing an available update](https://via.placeholder.com/847x460)

## Uninstalling Enclave

Enclave can be removed from a system using the Windows Control Panel. Open either **Programs and Features** or **Apps and Features**. Select **Enclave** to remove / uninstall. During uninstallation Enclave will ask if you want to **Remove network fabric configuration and private keys?** Answering yes will empty the following directory:

```
C:\Program Files\Enclave Networks\Enclave\Agent\profiles\
```

Users should remove configuration and private keys when uninstalling if they are not planning to use Enclave again on a that particular system, or want to forcibly deregister.

> **Note:** Enclave does not backup a system's private keys. Lost or deleted private keys are not recoverable. If a system's configuration and private keys are lost, to use that system with Enclave again it must be re-enrolled.

## What to do if the install fails

If an install goes horribly wrong, remove Enclave using the uninstaller and try again. If you're still encountering problems, examine the log files in `C:\Program Files\Enclave Networks\Enclave\Agent\logs`. If an install is interrupted use the Enclave setup file to restart the process.

For troubleshooting and errors, use the site search or visit our [troubleshooting](/troubleshooting/) section to look for information about common error messages.
