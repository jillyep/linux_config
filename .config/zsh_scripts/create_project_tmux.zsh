#!/bin/zsh
# create_project_tmux.zsh
# ================================================================================ 
# ================================================================================ 
# Date:    May 15, 2022
# Purpose: This script will create a tmux session that is tailored for the 
#          appropriate scripting and compilable languages.  

# Source Code Metadata
# Author:     Jillian Epstein
# Copyrights: Copyright 2022, Jillian Epstein Inc.
# Version:    1.0
# ================================================================================ 
# ================================================================================ 
# - Set the Session name and the Language. language should be the first
#   command line variable, and SESSION the second

SESSION=$2
language=$1
# --------------------------------------------------------------------------------
# Error checking

# Verify that parameters were properly passed in the command line
if [ -z $SESSION ] ; then
	echo "FATAL ERROR: SESSION not set"
	exit 1
fi
if [ -z $language ] ; then
	echo "FATAL ERROR: language not set"
	exit 1
fi

# Verify that the entry is acceptable
if [ $language != "Python" ] && [ $language != "C" ] && [ $language != "C++" ] && \
    [ $language != "Arduino" ]; then
	echo 'FATAL ERROR: Language must be Python, C, C++, or Arduino'
fi
# ================================================================================
# Set the path length and laiases

# Path to project
dir_path=$HOME'/Code_Dev/'$language'/'$SESSION

# Check to ensure directory exists
if [ ! -d "$dir_path" ]; then
    echo "FATAL ERROR: $file_path does not exist" && exit
else
    cd $dir_path'/'$SESSION
fi
# ================================================================================ 
# Develop list of open tmux sessions for comparison


SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)
# ================================================================================ 
# If tmux session does not already exist, create one and attach it

if [ "$SESSIONEXISTS" = "" ]; then
    # Start new session with Name
    tmux new-session -d -s $SESSION
# -------------------------------------------------------------------------------- 
# Configure the Main window
    
    # Name the first window Main
    tmux rename-window -t 1 'Main'

    # Create Three window panes
    tmux selectp -t 1
    tmux splitw -v -p 10
    tmux selectp -t 1
    tmux splitw -h -p 50
# -------------------------------------------------------------------------------- 
# Create second window for File Testing
    if [[ $language == "Python" ]] then
        cd ../test
		# Create second window with style matching the first 
		tmux new-window -t $SESSION:2 -n "Test"
		tmux selectp -t 1
		tmux splitw -v -p 10
		tmux selectp -t 1
		tmux splitw -h -p 50
		cd ..
	else
		cd test
		# Create second window with style matching the first 
		tmux new-window -t $SESSION:2 -n "Test"
		tmux selectp -t 1
		tmux splitw -v -p 10
		tmux selectp -t 1
		tmux splitw -h -p 50
		cd ../..
	fi
# -------------------------------------------------------------------------------- 
# Create third window for README file 

    # Create second window with upper and lower window 
	tmux new-window -t $SESSION:3 -n 'README'
	tmux send-keys -t $SESSION:3 'nvim README.rst' C-m

    #tmux new-window -t $SESSION:3 -n 'README' -d 'nvim README.rst'
# -------------------------------------------------------------------------------- 
# Create fourth window for Python window 

    if [[ $language == "Python" ]] then
		# Create second window with upper and lower window 
		tmux new-window -t $SESSION:4 -n 'Python3'
		tmux send-keys -t $SESSION:4 'python3' C-m
	fi
# -------------------------------------------------------------------------------- 
# Create fifth window for Python window 
   
    # Create second window with upper and lower window 
    tmux new-window -t $SESSION:5 -n 'zsh'
# ================================================================================ 
# Attach session 

    tmux attach-session -t $SESSION:1

else
	echo "tmux session already exists"
fi
# ================================================================================
# ================================================================================
# eof
