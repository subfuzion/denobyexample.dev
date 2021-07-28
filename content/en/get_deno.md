---
title: Get Deno
weight: 10
---

## Get Deno

Getting started with Deno is easy. Unlike other languages you might be familiar
with, Deno only uses a single executable for all of its functionality.

{{< tabpane >}}
  {{< tab header="Linux & macOS (shell)" lang="text" >}}
curl -fsSL https://deno.land/x/install/install.sh | sh
  {{< /tab >}}
  {{< tab header="Windows (PowerShell)" lang="text" >}}
iwr https://deno.land/x/install/install.ps1 -useb | iex
  {{< /tab >}}
{{< /tabpane >}}

For other ways to install or to install different versions, see the
[deno.land/#installation](https://deno.land/#installation) docs.

Confirm Deno works on your system by running the remote `welcome` module.

{{< tabpane >}}
  {{< tab header="Command" lang="text" >}}
deno run https://deno.land/std/examples/welcome.ts
  {{< /tab >}}
  {{< tab header="Output" lang="text" >}}
Download https://deno.land/std/examples/welcome.ts Warning
Implicitly using latest version (0.103.0) for https://deno.land/std/examples/welcome.ts
Download https://deno.land/std@0.103.0/examples/welcome.ts
Check https://deno.land/std/examples/welcome.ts
Welcome to Deno!
  {{< /tab >}}
{{< /tabpane >}}

Deno lets you know with a warning that you ran a remote module without
explicitly specifying a version. It defaulted to the latest module version. You
can specify the version like this:

{{< tabpane >}}
  {{< tab header="Command" lang="text" >}}
  deno run
https://deno.land/std@0.103.0/examples/welcome.ts
  {{< /tab >}}
  {{< tab header="Output" lang="text" >}}
Check https://deno.land/std@0.103.0/examples/welcome.ts
Welcome to Deno!
  {{< /tab >}}
{{< /tabpane >}}

## Upgrade Deno

When you want to upgrade Deno on your system, run `deno upgrade`.

{{< tabpane >}}
  {{< tab header="Command" lang="text" >}}
deno upgrade
  {{< /tab >}}
  {{< tab header="Output" lang="text" >}}
Looking up latest version
Found latest version 1.12.2
Checking https://github.com/denoland/deno/releases/download/v1.12.2/deno-aarch64-apple-darwin.zip
Deno is upgrading to version 1.12.2 Archive: /var/folders/my/d7wknx5x35s5v13f91pftpn00000gn/T/.tmppzgK1b/deno.zip
inflating: 27.4 MiB / 27.4 MiB (100.0%)
deno Upgraded successfully
  {{< /tab >}}
{{< /tabpane >}}
