#!/bin/bash

#==============================================================================#
# Install vim syntax highlighting files for your system
#==============================================================================#

#------------------------------------------------------------------------------#
# Description
#------------------------------------------------------------------------------#

# vim syntax highlighting file for MiXBLUP

# Author:   Austin Putz <putz[dot]austin[at]gmail[dot]com>
# Created:  2024-08-14
# Modified: 2015-08-14
# License:  MIT

# install_mixblup_vim.sh
# 	This bash script will install the syntax highlighting files for MiXBLUP

# 	Note: Please make sure this file is executable with:
#		chmod 775 installQMSimSyntax

# 	Make sure syntax highlighting is turned on in vim with:
# 	:syntax on 
# 	or put this line into .vimrc so you don't have to set it everytime

#==============================================================================#

# Instructions if you want to do it yourself
# 1) Create .vim directory* in your home folder (find with echo $HOME)
# 2) Create 2 subdirectories with mkdir
#  		a) syntax
# 		b) ftdetect
# 3) Move mix.vim into the syntax folder
# 4) Move mix.vim_ftdetect into the ftdect folder
# 		a) Rename this file to simply mix.vim
# 5) Make sure all files have the '.mix' extension
# 		Otherwise they will not be recognized and not highlighted by vim

#==============================================================================#

# This part will do it for you automatically

# Create needed directories (if it exists, it will not be overwritten)

#------------------------------------------------------------------------------#
printf "\nChecking for directories...\n\n"
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# Create the .vim directory if needed
#------------------------------------------------------------------------------#


# Check if the directory exists
if [ -d ~/.vim ]; then

	printf "\tThe ~/.vim directory is present in the home directory.\n\n"

else

    # If not found, the directory will be created for the user
	printf "\tThe ~/.vim directory was not found and will be created for you.\n\n" 
	mkdir ~/.vim

fi

#------------------------------------------------------------------------------#
printf "Checking for sub-directories...\n\n"
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# Create the .vim/syntax directory if needed
#------------------------------------------------------------------------------#

if [ -d ~/.vim/syntax ]; then

	printf "\tThe syntax directory is present in the .vim directory.\n\n"

else

    # If not found, the directory will be created for the user
	printf "The syntax directory was not found and will be created for you.\n\n"
	mkdir ~/.vim/syntax

fi

#------------------------------------------------------------------------------#
# Create the .vim/ftdetet directory if needed
#------------------------------------------------------------------------------#

if [ -d ~/.vim/ftdetect ]; then

	printf "\tThe ftdetect directory is present in the .vim directory.\n\n"

else

    # If not found, the directory will be created for the user
	printf "\tThe ftdetect directory was not found and will be created for you.\n\n"
	mkdir ~/.vim/ftdetect

fi

#------------------------------------------------------------------------------#
printf "Checking for files in current directory...\n\n"
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# Check for both mix.vim and mix.vim_ftdetect files in the current directory
#------------------------------------------------------------------------------#

# If not there it will give an error message

# Look for the mix.vim file
if [ -e mix.vim ]; then

	printf "\tmix.vim file is present in the current working directory.\n\n"

else

	printf "\tERROR: The mix.vim file cannot be found in the current working directory.\n"
	printf "\t   Please make sure the file is present in the current working directory.\n\n" >&2
	exit 1

fi

# Look for the mix.vim_ftdetect file
if [ -e mix.vim_ftdetect ]; then

	printf "\tmix.vim_ftdetect file is present in the current working directory.\n\n"

else

	printf "\tERROR: The mix.vim_ftdetect file cannot be found in the current working directory.\n" 
	printf "\t   Please make sure the file is present in the current working directory.\n\n" >&2
	exit 1

fi

#------------------------------------------------------------------------------#
# Copy the files into the right directories
#------------------------------------------------------------------------------#

printf "Copying files into their directory...\n\n"

	mv mix.vim ~/.vim/syntax/    # move mix.vim to ~/.vim/syntax directory
	mv mix.vim_ftdetect mix.vim  # rename mix.vim_ftdetect to mix.vim
	mv mix.vim ~/.vim/ftdetect/  # move ftdetect file over to directory

#------------------------------------------------------------------------------#
# Complete!
#------------------------------------------------------------------------------#

	printf "Complete!\n\n"
	printf "\tNOTE: Please make sure syntax highlighting is turned on in vim\n"
	printf "\tInsert \"syntax on\" in your ~/.vimrc file\n\n"







