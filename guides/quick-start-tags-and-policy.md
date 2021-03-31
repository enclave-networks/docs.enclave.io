---
layout: layout-page-docs
css-section: docs
parent: "Tutorials and Guides"
parentPath: guides
title: "Enrolling with Tags &amp; Policy"
subtitle: "Quick Start Guide"
contentPreview: "A short guide to installing, licensing and running Enclave on Linux and Windows. Learn how to use the command line and user interface to get your first networks up and running as quickly as possible."
indexed: true
redirect_from:
 - /quick-start
 - /quick-start-cli
---

# {{page.title}}


Welcome to the official tags &amp; policy Enclave quick start guide.

This guide will show you how to install and run Enclave to seamlessly connect your devices, systems, virtual machines and containers together on any infrastructure, with secure private networks that just work.

In this guide we will show you how to enrol systems to your and **centrally manage** the connectivity between them.

## Prerequisites

To follow this guide and build your first connection with Enclave, you will need the following:

1. An Enclave account, it's [free to register](https://portal.enclave.io/account/register)
2. Two computers running Windows, Linux or MacOS and Administrative access

## About enrolment keys

When you first registered for an account:

- We automatically created an **initial enrolment key** called `Default Enrolment Key`. Enrolment keys allow you to enrol new systems to your account and can (optionally) apply an initial set of tags to systems as they enrol.
- We automatically created a **default tag** called `All Systems`. Tags are text labels which can be attached to one or more systems, allowing administrators to group together systems with similar characteristics.  
- We automatically created a **default policy** called `Universe`. Policies determine which systems are connected to each other. Each policy is composed of sender tags and receiver tags. The Universe policy sets the `All Systems` tag on both the sender and receiver side of the policy.

In its default state, your **Universe** policy has the same tag (**All Systems**) set on both sides of the policy. Having the same tag on both sides of a policy means that any systems with that tag attached will be connected to one another and allowed to send traffic to their peers.

Since the **Default Enrolment Key** is configured to automatically apply the **All Systems** tag to new systems as they enrol, any systems enrolled using this key automatically gain full-mesh connectivity across your organisation.

You can customise this configuration at any time, but to move to the next step and install Enclave you will need to obtain an enrolment key from your account on the Portal.

## Enrol and connect two systems

1. Visit the [**Enrol a new system**](https://portal.enclave.io/my/new-system) page in the Portal.
2. Select your `Default Enrolment Key` from the drop down list.
3. Make a note of the secret 30 character enrolment key, you will need it to install Enclave. **Security Note:** Enrolment keys should be treated as secrets; Handle, share and store as you would any other organisational secret.
4. Install Enclave on two separate systems. Follow the on-screen instructions to download Enclave for the relevant operating system.
5. Each installer will ask for an enrolment key, provide the same key to each system.
6. Your `Default Enrolment Key` is configured for manual approval of new enrolments. When new systems are enrolled using this key they will remain isolated and disabled from your wider account, until enrolment approval is granted by an account Administrator. To provide approval, visit the [**Unapproved systems**](https://portal.enclave.io/my/unapproved-systems) page, select both systems and click **Approve**.
   ![Enclave Portal showing approve](https://via.placeholder.com/847x460)

