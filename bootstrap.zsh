#!/bin/zsh

SALT_PACKAGE_URL="https://repo.saltstack.com/osx/salt-2019.2.1-py2-x86_64.pkg"
SALT_PACKAGE_FILENAME=${SALT_PACKAGE_URL##*/}
SALT_MD5="1215B96F04B934BCDCA542F9F670F215"
CURL_BIN="/usr/bin/curl"
MD5_BIN="/sbin/md5"
AWK_BIN="/usr/bin/awk"
CUT_BIN="/usr/bin/cut"
PKGUTIL_BIN="/usr/sbin/pkgutil"
INSTALLER_BIN="/usr/sbin/installer"

download_salt () {
  CURL_OPTS="-s -o $SALT_PACKAGE_FILENAME"
  $CURL_BIN $CURL_OPTS $SALT_PACKAGE_URL
}

verify_salt () {
  MD5_HASH=$($MD5_BIN $SALT_PACKAGE_FILENAME | $AWK_BIN -F= '{print $2}' | $CUT_BIN -c2- | tr '[:lower:]' '[:upper:')
  test "$MD5_HASH" = $1
}

install_salt() {
  if verify_salt $SALT_MD5; then
    $INSTALLER -pkg $SALT_PACKAGE_FILENAME -target /
  fi
}

pushd /tmp
download_salt
verify_salt
install_salt
popd