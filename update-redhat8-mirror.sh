#!/bin/sh
# For RHEL8 dnf/yum4 based systems. Yum, yum-utils, et al have changed under
# the hood. What used to work on EL7 and prior is no longer necessarily valid.
#
# Synchronize packages for all enabled repos
reposync -m -p /data/repos/redhat --download-metadata
