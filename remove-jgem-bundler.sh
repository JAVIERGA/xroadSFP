#!/bin/bash

set -e

if [ "x$XROAD_HOME" = "x" ]
then
  XROAD_HOME=`pwd`
fi


#source ~/.rvm/scripts/rvm
source  ~/.rvm/scripts/rvm
rvm use jruby-1.7.25
#jgem uninstall bundler -v1.15.0
jgem install bundler -v1.14.6
jgem uninstall bundler -v1.15.1
#jgem install activerecord-postgresql-adapter
#jruby -S gem list --local
#jruby -S gem install pg_jruby
#jgem install activerecord-postgresql-adapter
