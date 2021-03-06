#!/bin/sh
# 
# 2007-2008 Nico Schottelius (nico-ccollect at schottelius.org)
# 
# This file is part of ccollect.
#
# ccollect is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# ccollect is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with ccollect. If not, see <http://www.gnu.org/licenses/>.
#
# Written on 20070816-2225
# Transfer configuration to 0.6 layout
#

if [ $# -ne 1 ]; then
   echo "$0: ccollect-configuration directory"
   echo ""
   echo "   Fix pre 0.6 configuration directories to match 0.6 style"
   echo ""
   exit 23
fi

dir="$1"
script=$(echo $0 | sed 's/\.sh$/.sub.sh/')

find "${dir}/sources/" -type f -name rsync_options -exec "${script}" {} \;

echo "Finished."
