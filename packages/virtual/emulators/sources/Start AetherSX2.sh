#!/bin/bash

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 JELOS (https://github.com/JustEnoughLinuxOS)

source /etc/profile

set_kill set "aethersx2-sa"

#Set OpenGL 3.3 on panfrost
  export MESA_GL_VERSION_OVERRIDE=3.3
  export MESA_GLSL_VERSION_OVERRIDE=330

#Set QT enviornment to wayland
  export QT_QPA_PLATFORM=wayland

# Extra Libs needed to run
  export LD_LIBRARY_PATH=/usr/share/aethersx2-sa/libs

/usr/share/aethersx2-sa/aethersx2 -bigpicture -fullscreen >/dev/null 2>&1
