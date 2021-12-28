#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and 
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="hurrican"
rp_module_desc="Hurrican - Turrican clone - A freeware jump and shoot game made by Poke53280 (Eiswuxe)"
rp_module_help="After installation, select game from the Ports system.\n\nSelect gamepad controls in game preferences menu."
rp_module_repo="git https://github.com/drfiemost/Hurrican.git master b8b3d31"
rp_module_licence="MIT https://raw.githubusercontent.com/drfiemost/Hurrican/master/LICENSE"
rp_module_section="exp"
rp_module_flags="!all rpi4"

function depends_hurrican() {
    getDepends libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libepoxy-dev cmake
}

function sources_hurrican() {
    gitPullOrClone
}

function build_hurrican() {
    cd "$md_build/Hurrican"
    mkdir build && cd build
    cmake -DCMAKE_BUILD_TYPE=Release ..
    make
    md_ret_require="$md_build/Hurrican/build/hurrican"
}

function install_hurrican() {
    md_ret_files=(
        'Hurrican/build/hurrican'
        'Hurrican/data'
        'Hurrican/lang'
        'Hurrican/splashscreen.bmp'
        'Editor/maps'
        'Editor/Gfx'
    )
}

function configure_hurrican() {
    if [[ "$md_mode" == "install" ]]; then
        addPort "$md_id" "hurrican" "Hurrican - Turrican clone" "pushd $md_conf_root/hurrican; $md_inst/hurrican --pathdata $md_inst --pathsave $md_conf_root/hurrican; popd"
        mkRomDir "ports"
        moveConfigDir "$home/.config/hurrican" "$md_conf_root/hurrican"
    fi
}
