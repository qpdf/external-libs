# DEPRECATED

This repository is no longer in use. Instead, we use `vcpkg` from the qpdf repository itself. Releases of the vcpkg.zip that replaces external-libs can be found at [this release](https://github.com/qpdf/qpdf/releases/tag/vcpkg-cache-v1) in the qpdf repository. If it's not there, consult README files in qpdf as this README file will not be maintained after archiving the repository.)

# Overview

This repository contains the code to build the external libraries used in the official Windows builds. They are triggered automatically using GitHub Actions. Please see [.github/workflows/main.yml](./.github/workflows/main.yml) and the scripts in [./scripts](./scripts/). This is just a wrapper around vcpkg that creates a zip whose contents are understood by the main qpdf build.

# Rationale

vcpkg has a complete ecosystem with numerous packages, but it is more involved and complex than we need for the qpdf build. It may be useful at some future time to integrate vcpkg into the main qpdf build, but for simplicity, we use vcpkg in this external project to create a zip file that the qpdf build uses. Prior to switching to vcpkg, this repository used to scrape distribution websites and build "by hand" for Windows. Switching to external vcpkg like this is a considerable improvement to *this* process and invisible to the main build.
