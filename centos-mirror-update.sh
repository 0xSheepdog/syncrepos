#!/bin/#!/bin/sh
reposync -gdlmq -p /data/repos/centos7 --repoid=updates --download-metadata
createrepo -p -o /data/repos/centos7/updates --baseurl=http://mirror.spde.local/centos7/updates --update /data/repos/centos7/updates
reposync -gdlmq -p /data/repos/centos7 --repoid=extras --download-metadata
createrepo -p -o /data/repos/centos7/extras --baseurl=http://mirror.spde.local/centos7/extras --update /data/repos/centos7/extras
reposync -gdlmq -p /data/repos/centos7 --repoid=base --download-metadata
createrepo -p -g /data/repos/centos7/base/Packages/comps.xml -o /data/repos/centos7/base --baseurl=http://mirror.spde.local/centos7/base --update /data/repos/centos7/base