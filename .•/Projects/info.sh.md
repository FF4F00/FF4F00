# Shell

```sh
#!/bin/sh

# KEYWORDS –––––––––––––––––––––––––––––––
# • –––––––––– • –––––––––– • –––––––––– •
# | if         | then       | else       |
# • –––––––––– • –––––––––– • –––––––––– •
# | elif       | fi         | case       |
# • –––––––––– • –––––––––– • –––––––––– •
# | esac       | for        | in         |
# • –––––––––– • –––––––––– • –––––––––– •
# | do         | done       | while      |
# • –––––––––– • –––––––––– • –––––––––– •
# | until      | break      | continue   |
# • –––––––––– • –––––––––– • –––––––––– •
# | function   | return     | exit       |
# • –––––––––– • –––––––––– • –––––––––– •
# | readonly   | local      | export     |
# • –––––––––– • –––––––––– • –––––––––– •
# | unset      | eval       | exec       |
# • –––––––––– • –––––––––– • –––––––––– •
# | trap       | test       | let        |
# • –––––––––– • –––––––––– • –––––––––– •
# | declare    | alias      | unalias    |
# • –––––––––– • –––––––––– • –––––––––– •
# | source     | set        | shift      |
# • –––––––––– • –––––––––– • –––––––––– •
# | coproc     | time       | [[         |
# • –––––––––– • –––––––––– • –––––––––– •





# File and Directory Operations
# ls                         :: List directory contents.
# cd                         :: Change directory.
# pwd                        :: Print working directory.
# mkdir                      :: Make a new directory.
# rmdir                      :: Remove an empty directory.
# rm                         :: Remove files or directories.
# cp                         :: Copy files or directories.
# mv                         :: Move or rename files or directories.
# touch                      :: Create an empty file or update the timestamp of an existing file.
# find                       :: Search for files in a directory hierarchy.
# locate                     :: Find files by name (requires an index, often available on Linux).

# File Viewing and Editing
# cat                        :: Concatenate and display file content.
# less                       :: View file content one page at a time.
# more                       :: View file content one screen at a time.
# head                       :: Display the first part of a file.
# tail                       :: Display the last part of a file.
# nano                       :: Simple text editor.
# vim                        :: Advanced text editor.
# emacs                      :: Another advanced text editor.

# File Permissions and Ownership
# chmod                      :: Change file mode (permissions).
# chown                      :: Change file owner and group.
# chgrp                      :: Change group ownership.

# Process Management
# ps                         :: Report a snapshot of current processes.
# top                        :: Display real-time system processes.
# htop                       :: Interactive process viewer (requires installation on macOS and FreeBSD).
# kill                       :: Send a signal to terminate a process.
# killall                    :: Kill processes by name (Linux); use `pkill` on macOS and FreeBSD.
# bg                         :: Resume a suspended job in the background.
# fg                         :: Bring a background job to the foreground.
# jobs                       :: List current jobs.

# System Information
# uname                      :: Print system information.
# df                         :: Report file system disk space usage.
# du                         :: Estimate file and directory space usage.
# free                       :: Display memory usage (Linux); use `vm_stat` on macOS and FreeBSD.
# top                        :: Show system tasks.
# uptime                     :: Show how long the system has been running.
# lscpu                      :: Show CPU architecture information (Linux); use `sysctl -a | grep cpu` on macOS and FreeBSD.
# lsblk                      :: List information about block devices (Linux); use `diskutil list` on macOS.
# ifconfig / ip a             :: Display network interfaces and configurations. (`ifconfig` on macOS and FreeBSD, `ip a` on Linux).

# Network Commands
# ping                       :: Send ICMP ECHO_REQUEST to network hosts.
# traceroute / tracert       :: Trace the route packets take to a network host.
# netstat                    :: Network statistics.
# ss                         :: Utility to investigate sockets (Linux); use `netstat -an` on macOS and FreeBSD.
# curl                       :: Transfer data from or to a server.
# wget                       :: Download files from the web (Linux); install with Homebrew on macOS.

# Package Management
# brew                       :: Package manager for macOS (Homebrew).
# pkg                        :: Package management for FreeBSD.
# yum                        :: Package management for Amazon Linux (Linux).
# dnf                        :: Next-generation package manager (Linux).

# Miscellaneous
# echo                       :: Display a line of text.
# history                    :: Show command history.
# man                        :: Display the manual page for a command.
# alias                      :: Create shortcuts for commands.

# Windows-Specific Commands (for reference)
# dir                        :: List directory contents.
# cd                         :: Change directory.
# del                        :: Delete files.
# copy                       :: Copy files.
# move                       :: Move or rename files.
# tasklist                   :: Display a list of currently running processes.
# taskkill                   :: Terminate processes by name or ID.
# ipconfig                   :: Display network configuration.





```