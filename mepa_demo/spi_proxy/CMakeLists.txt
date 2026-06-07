# Copyright (c) 2026 Vincent Jardin, Vincent Cruz, Free Mobile
# SPDX-License-Identifier: MIT
#
# lan80xx-spid: standalone SPI proxy daemon + debug CLI. No MEPA/MESA/
# MEBA dependency -- links libc only. Static for initramfs targets.
# Built on demand:
#   cmake --build <dir> --target lan80xx_spid spiproxy_cli

add_executable(lan80xx_spid EXCLUDE_FROM_ALL lan80xx_spid.c)
target_link_libraries(lan80xx_spid -static)
set_target_properties(lan80xx_spid PROPERTIES OUTPUT_NAME "lan80xx-spid")

add_executable(spiproxy_cli EXCLUDE_FROM_ALL spiproxy_cli.c)
target_link_libraries(spiproxy_cli -static)
set_target_properties(spiproxy_cli PROPERTIES OUTPUT_NAME "spiproxy-cli")
