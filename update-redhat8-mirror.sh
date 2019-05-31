#!/bin/sh
# For RHEL8 dnf/yum4 based systems. Yum, yum-utils, et al have changed under
# the hood. What used to work on EL7 and prior is no longer necessarily valid.
#
# Synchronize packages for all enabled repos
reposync -m -p /data/repos/redhat --download-metadata

/bin/createrepo \
  --pretty      \
  --update      \
  --outputdir=/data/repos/redhat/rhel-8-for-x86_64-baseos-rpms            \
  --baseurl=http://mirror.spde.local/redhat/rhel-8-for-x86_64-baseos-rpms \
  --groupfile=/data/repos/redhat/rhel-8-for-x86_64-baseos-rpms/repodata/3a561cc8a0cebb544af9f7816d7fbb466203853c0bb4bab5c4e1795e0273262d-comps.xml \
  /data/repos/redhat/rhel-8-for-x86_64-baseos-rpms

/bin/createrepo \
  --pretty      \
  --update      \
  --outputdir=/data/repos/redhat/rhel-8-for-x86_64-appstream-rpms            \
  --baseurl=http://mirror.spde.local/redhat/rhel-8-for-x86_64-appstream-rpms \
  --groupfile=/data/repos/redhat/rhel-8-for-x86_64-appstream-rpms/repodata/8bce01dbe549d78a59f9bc3219e7359015a8102bcad34e8910846327f1b470ce-comps.xml \
  /data/repos/redhat/rhel-8-for-x86_64-appstream-rpms

/bin/createrepo \
  --pretty      \
  --update      \
  --outputdir=/data/repos/redhat/ansible-2-for-rhel-8-x86_64-rpms            \
  --baseurl=http://mirror.spde.local/redhat/ansible-2-for-rhel-8-x86_64-rpms \
  --groupfile=/data/repos/redhat/ansible-2-for-rhel-8-x86_64-rpms/repodata/a27718cc28ec6d71432e0ef3e6da544b7f9d93f6bb7d0a55aacd592d03144b70-comps.xml \
  /data/repos/redhat/ansible-2-for-rhel-8-x86_64-rpms
