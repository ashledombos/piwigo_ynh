#!/bin/bash
#
# Common variables
#

# Application version
VERSION="2.8.6"

# Remote URL to fetch application source archive
APPLICATION_SOURCE_URL="http://piwigo.org/download/dlcounter.php?code=${VERSION}"

#
# Common helpers
#

# Download and extract application sources to the given directory
# usage: extract_application_to DESTDIR
extract_application() {
  local DESTDIR=$1
  TMPDIR=$(mktemp -d)
  chmod 755 $TMPDIR
  archive="${TMPDIR}/application.zip"
  wget -q -O "$archive" "$APPLICATION_SOURCE_URL" \
    || ynh_die "Unable to download application archive"
  unzip -qq "$archive" -d "$TMPDIR" \
    || ynh_die "Unable to extract application archive"
  rm "$archive"
  sudo rsync -a "$TMPDIR"/*/* "$DESTDIR"
}

# Fix path if needed
# usage: fix_patch PATH_TO_FIX
fix_path() {
  local path=$1
  if [ "${path:0:1}" != "/" ] && [ ${#path} -gt 0 ]; then
         path="/$path"
  fi
  if [ "${path:${#path}-1}" == "/" ] && [ ${#path} -gt 1 ]; then
         path="${path:0:${#path}-1}"
  fi
  echo "$path"
}