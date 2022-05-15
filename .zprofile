#!/usr/bin/zsh
# .zprofile file
# ================================================================================
# ================================================================================
# - Purpose: This file is read during the Bash login process.  i use this to
#            integrate all of the startup files
# 
# Source Metadata
# - Author:    Jillian Epstein
# - Date:      May 15, 2022
# - Version:   1.0
# - Copyright: Copyright 2022, Jillian Epstein Inc.
# ================================================================================
# ================================================================================
# Show Paths
if [ -n "$ZSH_VERSION" -a -n "$PS1" ]; then
    # include .zshrc if it exists
    if [ -f "$HOME/.zshrc" ]; then
    . "$HOME/.zshrc"
    fi
fi
PATH="/usr/bin/:/.local/include/"
export PATH
# ================================================================================
# ================================================================================
# eof
