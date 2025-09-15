#! /bin/bash
#
# 	Part of kde-service-menu-reimage (version 2.6.0)
# 	Copyright (C) 2018-2019 Giuseppe Benigno <giuseppe.benigno(at)gmail.com>
# 	Copyright (C) 2024 Irfan Hakim <irfanhakim.as(at)yahoo.com>
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
required_vars=("bin_dir" "servicemenu_dir" "doc_dir")
servicemenu_files=($(shopt -s nullglob; for f in ServiceMenus/*.desktop; do basename "${f}"; done))

# determine installation directories
if [[ ${EUID} -eq 0 ]]; then
    bin_dir=$("${qtpaths_bin}" --install-prefix 2>/dev/null) && [ -n "${bin_dir}" ] && bin_dir="${bin_dir%%/}/bin"
    servicemenu_dir=$("${qtpaths_bin}" --locate-dirs GenericDataLocation kio/servicemenus 2>/dev/null | sed 's/.*://')
    doc_dir=$("${qtpaths_bin}" --install-prefix 2>/dev/null) && [ -n "${doc_dir}" ] && doc_dir="${doc_dir%%/}/share/doc/kde-service-menu-reimage"
    install_mode="system"
else
    [ -n "${user_install_prefix}" ] && bin_dir="${user_install_prefix%%/}/bin"
    servicemenu_dir=$("${qtpaths_bin}" --locate-dirs GenericDataLocation kio/servicemenus 2>/dev/null | sed 's/:.*//')
    [ -n "${user_install_prefix}" ] && doc_dir="${user_install_prefix%%/}/share/doc/kde-service-menu-reimage"
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

# remove required binaries
echo "Removing ${bin_dir}/reimage-kdialog" && rm -f "${bin_dir}/reimage-kdialog" && \
# remove required service menus
for file in "${servicemenu_files[@]}"; do
    echo "Removing ${servicemenu_dir}/${file}" && rm -f "${servicemenu_dir}/${file}"
done && \
# remove documentation files
echo "Removing ${doc_dir}" && rm -rf "${doc_dir}"

# report uninstallation result
if [ ${?} -eq 0 ]; then
    echo "SUCCESS: kde-service-menu-reimage has been uninstalled successfully."
else
    echo "ERROR: kde-service-menu-reimage uninstallation failed."
    exit 1
fi
