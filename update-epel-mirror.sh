#!/bin/sh
# update existing repo (-d deletes packages removed from source repo, -n syncs newest packages only)

yum-config-manager --disable \*
yum-config-manager --enable epel
reposync -gdlm --download-metadata --norepopath -p /data/repos/epel --repoid=epel
yum-config-manager --disable epel
yum-config-manager --enable base extras updates

## createrepo -p -g /data/repos/epel/comps.xml -o /data/repos/epel --baseurl=http://mirror.spde.local/epel


createrepo -p --update -g /data/repos/epel/comps.xml -o /data/repos/epel /data/repos/epel
