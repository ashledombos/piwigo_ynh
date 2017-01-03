#
# Common variables
#

# Application version
VERSION="2.8.5"

# Remote URL to fetch application source archive
APPLICATION_SOURCE_URL="http://piwigo.org/download/dlcounter.php?code=${VERSION}"

# Download and extract application sources to the given directory
# usage: extract_application_to DESTDIR
extract_application() {
  local DESTDIR=$1
  archive="${DESTDIR}/application.zip"
  wget -q -O "$archive" "$APPLICATION_SOURCE_URL" \
|| ynh_die "Unable to download application archive"
  sudo unzip -qq "$archive" -d "$DESTDIR" \
    || ynh_die "Unable to extract application archive"
  rm "$archive"
}