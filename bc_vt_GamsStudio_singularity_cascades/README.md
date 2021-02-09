# Batch Connect - GAMS Studio

![GitHub Release](https://img.shields.io/github/release/osc/bc_example_gams.svg)
[![GitHub License](https://img.shields.io/badge/license-MIT-green.svg)](https://opensource.org/licenses/MIT)

A Batch Connect app designed for OnDemand that launches GAMS Studio

## Prerequisites

This Batch Connect app requires the following software be installed on the
**compute nodes** that the batch job is intended to run on (**NOT** the
OnDemand node):

- [GAMS Studio] version?
- [Xfce Desktop] 4+

For VNC server support:

- [TurboVNC] 2.1+
- [websockify] 0.8.0+

**Optional** software:

- [Lmod] 6.0.1+ or any other `module purge` and `module load <modules>` based
  CLI used to load appropriate environments within the batch job

[GAMS Studio]: https://www.gams.com/latest/docs/T_STUDIO.html
[Lmod]: https://www.tacc.utexas.edu/research-development/tacc-projects/lmod
[TurboVNC]: http://www.turbovnc.org/
[websockify]: https://github.com/novnc/websockify
[Xfce Desktop]: https://xfce.org/

## Install

Use git to clone this app and checkout the desired branch/version you want to
use:

```sh
scl enable rh-git29 -- git clone <repo>
cd <dir>
scl enable rh-git29 -- git checkout <tag/branch>
```

You will not need to do anything beyond this as all necessary assets are
installed. You will also not need to restart this app as it isn't a Passenger
app.

To update the app you would:

```sh
cd <dir>
scl enable rh-git29 -- git fetch
scl enable rh-git29 -- git checkout <tag/branch>
```

Again, you do not need to restart the app as it isn't a Passenger app.
