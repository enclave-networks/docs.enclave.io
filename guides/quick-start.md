---
layout: layout-page-docs-index-page-no-toc
css-section: docs
parent: "Tutorials and Guides"
parentPath: guides
title: "Quick Start Guide"
subtitle: "Getting Started With Enclave"
contentPreview: "A short guide to installing, enrolling and running Enclave on Linux, Windows and MacOS. Learn how to get your private network up and running in minutes."
indexed: true
redirect_from:
 - /quick-start
 - /quick-start-cli
---

# {{page.title}}

Welcome to the official Enclave quick start guide.

This guide will show you how to install and run Enclave to seamlessly connect your devices, systems, virtual machines and containers together on any infrastructure, with secure private networks that just work.

## Prerequisites

To follow this guide and build your first connection with Enclave, you will need to:

1. Have already registered for a **free** account on our [Portal](https://portal.enclave.io).
2. Have administrative access to **at least two** systems (either Windows, Linux, MacOS or one of our other supported platforms).

## Choose a guide

Systems registered with Enclave can either be **locally managed** (by the end-users of those systems), or they can be **centrally managed** using tags and policy controls defined in the Portal. There are quick start guides for both options, but we recommend most new users start by enrolling systems using centralised management with [tags &amp; policy](/guides/quick-start-tags-and-policy).

Any enrolled system can be easily switched between locally, or centrally managed modes at any time simply by adding, or removing tags in the Portal. If a Portal Administrator adds tags to an enrolled system, it automatically becomes centrally controlled. If a Portal Administrator removes all of the tags from a particular system, Enclave will allow the end-user(s) to manage connectivity.

<div id="section-tutorial-tiles">
   <div class="row">
      <div class="col-md-6">
         <a class="tile centrally-managed" href="/guides/quick-start-tags-and-policy">
            <div class="title"><i class="fa fa-list-alt" aria-hidden="true"></i> Tags &amp; Policy</div>
            <div class="text">
               <p>When an enrolled system is assigned tags Enclave will treat it as centrally managed; end-users of that system cannot control Enclave.</p>
               <p>Managed systems allow organisations to centrally define policy and apply oversight, consistency and control as networks grow in size and complexity.</p>
               <p>Best for teams, businesses and commercial users.</p>
            </div>
            <button>Enrol with tags &amp; policy <i class="fa fa-arrow-right" aria-hidden="true"></i></button>
         </a>
      </div>
      <div class="col-md-6">
         <a class="tile locally-managed" href="/guides/quick-start-locally-managed">
            <div class="title"><i class="fa fa-sitemap" aria-hidden="true"></i> Locally Managed</div>
            <div class="text">
               <p>When an enrolled system is not assigned any tags Enclave will treat it as locally managed; end-users of that system will be able control Enclave.</p>
               <p>Locally managed systems are used for quick, ad-hoc connectivity to other enrolled systems where oversight and centralised control are less important.</p>
               <p>Best for small scale home, hobbyist or solo users.</p>
            </div>
            <button>Enrol a locally managed system <i class="fa fa-arrow-right" aria-hidden="true"></i></button>
         </a>
      </div>
   </div>
</div>
