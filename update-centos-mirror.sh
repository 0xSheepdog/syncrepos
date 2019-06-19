#!/bin/#!/bin/sh
# update existing repo (-d deletes packages removed from source repo, -n syncs newest packages only)
reposync -gdlmq --download-metadata -p /data/repos/centos7
#reposync -gdlmq --download-metadata -p /data/repos/centos7 --repoid=updates
#reposync -gdlmq --download-metadata -p /data/repos/centos7 --repoid=extras
#reposync -gdlmq --download-metadata -p /data/repos/centos7 --repoid=base


# update existing repomd.xml and related files. if no repomd exists, remove the --update option)
createrepo -p -o /data/repos/centos7/updates --baseurl=http://mirror.spde.local/centos7/updates --update /data/repos/centos7/updates
createrepo -p -o /data/repos/centos7/extras --baseurl=http://mirror.spde.local/centos7/extras --update /data/repos/centos7/extras
createrepo -p -g /data/repos/centos7/base/Packages/comps.xml -o /data/repos/centos7/base --baseurl=http://mirror.spde.local/centos7/base --update /data/repos/centos7/base
