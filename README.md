nvidia-319-ck Arch Linux Package
=================================

## Status

**Updated: 2014-02-06**

Unfortunately, there is no place for this package to go.

319.32 isn't compatible with xorg-server 1.15. The latest 319.76 IS compatible with xorg-server 1.15, but breaks other stuff on my machine (specifically vmware: https://bbs.archlinux.org/viewtopic.php?id=173111).

As such, there is no where else for this package to go. I am going to try NVIDIA's recommended 304.119. 

Ping me if you think otherwise.


## Purpose

To maintain the 319.XX versions of the nvidia proprietary drivers and utilities for current Arch Linux kernels.

## Why?

Because the bleeding edge nvidia drivers have caused me more harm than good.

## Links

* **Website:** [http://webmonarch.github.io/nvidia-319-ck/](http://webmonarch.github.io/nvidia-319-ck/)
* **Source:** [https://github.com/webmonarch/nvidia-319-ck](https://github.com/webmonarch/nvidia-319-ck)
* **AUR:** [https://aur.archlinux.org/packages/nvidia-319-ck](https://aur.archlinux.org/packages/nvidia-319-ck)

## Overview

This repo contains Arch Linux source packages for the following packages:

* nvidia-319-ck
* nvidia-319-utils
* nvidia-319-libgl
* lib32-nvidia-319-utils
* lib32-nvidia-319-libgl

'319' has been inserted into the package names to avoid conflicts with the main packages:

* nvidia-ck
* nvidia-utils
* nvidia-libgl
* lib32-nvidia-utils
* lib32-nvidia-libgl

**NOTE:** Currently: we only create the nvidia kernel module for the linux-ck kernel. It should be easy to extend these packages for any kernel version. If you have questions, please ask.

## Install

You can find these packages on [AUR](https://aur.archlinux.org/). Use your favorite AUR helper (ie: [yaourt](https://wiki.archlinux.org/index.php/yaourt)), or download and build manaully.

## Status

These packages are what I (webmonarch) currently use on my Thinkpad w530. I hope they are useful to others. 

Please fork and contribute!
