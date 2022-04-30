#!/usr/bin/bash
# .bash_profile file
# ================================================================================
# ================================================================================
# - Purpose: This file is read during the Bash login process.  i use this to
#            integrate all of the startup files
# 
# Source Metadata
# - Author:    Jillian Epstein
# - Date:      April 29, 2022
# - Version:   1.0
# - Copyright: Copyright 2021, Jillbo Baggins Inc.
# ================================================================================
# ================================================================================
# Show Paths
if [ -n "$BASH_VERSION" -a -n "$PS1" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi
PATH="/usr/bin/:/.local/include/"
export PATH
# ================================================================================
# ================================================================================
# eof
