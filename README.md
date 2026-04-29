# Overview

This repository contains the code to build the external libraries used in the official Windows builds. They are triggered automatically using GitHub Actions. Please see [.github/workflows/main.yml](./.github/workflows/main.yml) and the scripts in [./scripts](./scripts/). This is just a wrapper around vcpkg that creates a zip whose contents are understood by the main qpdf build.

# Rationale

vcpkg has a complete ecosystem with numerous packages, but it is more involved and complex than we need for the qpdf build. It may be useful at some future time to integrate vcpkg into the main qpdf build, but for simplicity, we use vcpkg in this external project to create a zip file that the qpdf build uses. Prior to switching to vcpkg, this repository used to scrape distribution websites and build "by hand" for Windows. Switching to external vcpkg like this is a considerable improvement to *this* process and invisible to the main build.
