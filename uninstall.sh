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

# environment variables
qtpaths_bin="${qtpaths_bin:-"qtpaths"}"
user_install_prefix="${user_install_prefix:-"${HOME}/.local"}"

# local variables
required_vars=("bin_dir" "desktop_dir" "doc_dir")

if [[ ${EUID} -eq 0 ]]; then
    bin_dir="$(${qtpaths_bin} --install-prefix)/bin"
    desktop_dir="$(${qtpaths_bin} --locate-dirs GenericDataLocation kio/servicemenus | sed 's/.*://')"
    doc_dir="$(${qtpaths_bin} --install-prefix)/share/doc/kde-service-menu-reimage/"
    install_mode="system"
else
    bin_dir="${user_install_prefix}/bin"
    desktop_dir="$(${qtpaths_bin} --locate-dirs GenericDataLocation kio/servicemenus | sed 's/:.*//')"
    doc_dir="${user_install_prefix}/share/doc/kde-service-menu-reimage/"
    install_mode="local"
fi

# ensure all required variables are set
for var in "${required_vars[@]}"; do
    if [ -z "${!var}" ]; then
        echo "ERROR: Required variable ${var} was not set successfully. Aborting installation of kde-service-menu-reimage."
        exit 1
    fi
done

echo "Uninstalling kde-service-menu-reimage (${install_mode}) ..."

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
echo "SUCCESS: kde-service-menu-reimage has been uninstalled successfully."
