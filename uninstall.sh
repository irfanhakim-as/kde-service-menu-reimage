#! /bin/bash
#
# 	Part of kde-service-menu-reimage Version 2.5
# 	Copyright (C) 2018-2019 Giuseppe Benigno <giuseppe.benigno(at)gmail.com>
#
# 	This program is free software: you can redistribute it and/or modify
# 	it under the terms of the GNU General Public License as published by
# 	the Free Software Foundation, either version 3 of the License, or
# 	(at your option) any later version.
#
# 	This program is distributed in the hope that it will be useful,
# 	but WITHOUT ANY WARRANTY; without even the implied warranty of
# 	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# 	GNU General Public License for more details.
#
# 	You should have received a copy of the GNU General Public License
# 	along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

if [[ $EUID -eq 0 ]]; then
    bin_dir="$(kf5-config --path exe | sed "s/.*://")"
    desktop_dir="$(kf5-config --path services | sed "s/.*://")ServiceMenus/"
    doc_dir="$(kf5-config --prefix)/share/doc/kde-service-menu-reimage/"
    echo "Removing kde-service-menu-reimage system wide"
else
    bin_dir="$HOME/bin"
    desktop_dir="$(kf5-config --path services | sed "s/:.*//")"
    doc_dir=$HOME"/share/doc/kde-service-menu-reimage/"
    echo "Removing kde-service-menu-reimage locally"
fi

echo "removing ${bin_dir}reimage-kdialog"
rm "${bin_dir}/reimage-kdialog"

echo "removing ${desktop_dir}reimage-compress-resize.desktop"
rm "${desktop_dir}reimage-compress-resize.desktop"
echo "removing ${desktop_dir}reimage-convert-rotate.desktop"
rm "${desktop_dir}reimage-convert-rotate.desktop"
echo "removing ${desktop_dir}reimage-metadata.desktop"
rm "${desktop_dir}reimage-metadata.desktop"
echo "removing ${desktop_dir}reimage-tools.desktop"
rm "${desktop_dir}reimage-tools.desktop"

echo "removing ${doc_dir}"
rm -rf "${doc_dir}"

echo
echo "kde-service-menu-reimage has been removed. Good bye."
