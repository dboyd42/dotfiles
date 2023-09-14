#!/usr/bin/env python3
###############################################################################
# Title: link-dotifles.py
# Description: Automate dotfile setup via recursive links
# Date: 2023-09-13
# Author: DBoyd
###############################################################################

import os
import subprocess


def find_git_root():
    try:
        # Run the git rev-parse command to get the root of the Git repository
        git_root = \
            subprocess.check_output(['git', 'rev-parse', '--show-toplevel'],
                                    stderr=subprocess.PIPE,
                                    universal_newlines=True).strip()
        return git_root
    except subprocess.CalledProcessError:
        # If the command fails, it means the script is not in a Git repository
        return None


def menu():
    pass
    # Choose which or all dotfiles to link
    # tmux()
    # nvim()
    # home/.{gitconfig,p10k,zshrc,zsh_aliases} #TODO: master .zshrc file
    # etc


def link_program(source_dir, target_dir):

    # Create the target directory if it doesn't exist
    os.makedirs(target_dir, exist_ok=True)

    # Function to recursively link files and directories
    def link_files(source, target):
        for item in os.listdir(source):
            source_item = os.path.join(source, item)
            target_item = os.path.join(target, item)

            if os.path.isdir(source_item):
                os.makedirs(target_item, exist_ok=True)
                link_files(source_item, target_item)
            else:
                if not os.path.exists(target_item):
                    # Create a symbolic link
                    os.symlink(source_item, target_item)
                    print(f"Linked: {source_item} -> {target_item}")
                else:
                    print(f"Skipped (Already Exists): {target_item}")

    # Recursively link files and directories
    link_files(source_dir, target_dir)


def main():

    git_root_dir = find_git_root()
    dot_config = ".config/"
    dot_config_prgms = [ 'nvim', 'tmux' ]
    for prgm in dot_config_prgms:
        source_dir = git_root_dir + "/home/" + dot_config + prgm + "/"
        target_dir = os.path.expanduser("~/.config/" + prgm + "/")
        print(source_dir)
        print(target_dir)
        link_program(source_dir, target_dir)


if __name__ == "__main__":
    main()
