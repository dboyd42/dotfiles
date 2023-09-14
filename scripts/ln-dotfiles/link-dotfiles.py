#!/usr/bin/env python3
###############################################################################
# Title      : link-dotifles.py
# Description: Automate dotfile setup via recursive links
# Date       : 2023-09-13
# Author     : DBoyd
###############################################################################

import platform
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
            create_link = True

            if os.path.isdir(source_item):
                os.makedirs(target_item, exist_ok=True)
                link_files(source_item, target_item)
            else:
                if os.path.exists(target_item):
                    if not os.path.islink(target_item):
                        # Delete the existing non-symlink file
                        os.remove(target_item)
                    else:
                        print(f"Skipped (Already Exists): {target_item}")
                        create_link = False

                if create_link:
                    # Create a symbolic link
                    os.symlink(source_item, target_item)
                    print(f"Linked: {source_item} -> {target_item}")

    # Recursively link files and directories
    link_files(source_dir, target_dir)


def get_os_name():
    ''' Possible returns: Linux, Windows, Darwin, Java, etc '''
    return platform.system()


def main():

    os_name = get_os_name()
    git_root_dir = find_git_root()

    ###
    # `$HOME/.config/` dir linking
    ###
    dot_config = ".config/"
    dot_config_prgms = ['nvim', 'tmux']
    if os_name == "Darwin":
        dot_config_prgms.append("karabiner")
    for prgm in dot_config_prgms:
        source_dir = git_root_dir + "/home/" + dot_config + prgm + "/"
        target_dir = os.path.expanduser("~/.config/" + prgm + "/")
        print(source_dir)
        print(target_dir)
        link_program(source_dir, target_dir)

    ###
    # `$HOME/.` dir linking
    ###
    '''
    home_dotfiles = [".gitconfig", ".p10k.zsh", ".zsh_aliases"]
   #TODO: home_dotfiles = [".gitconfig", ".p10k.zsh", ".zsh_aliases", ".zshrc"]
    for dotfile in home_dotfiles:
        source_dir = git_root_dir + "/home/"
        target_dir = os.path.expanduser("~/")
        print(source_dir)
        print(target_dir)
        link_program(source_dir, target_dir)
    '''

    ###
    # `/etc/` dir linking
    ###
    etc_dir = "/etc/"
    if os_name == "Linux":
        etc_files = ["keyd/default.conf", "logid.cfg"]

        for etc_file in etc_files:

            #TODO: put this in its own fns
            source_item = git_root_dir + etc_dir + etc_file
            target_item = os.path.expanduser(etc_dir + etc_file)
            create_link = True

            if os.path.exists(target_item):
                if not os.path.islink(target_item):
                    # Delete the existing non-symlink file
                    os.remove(target_item)
                else:
                    print(f"Skipped (Already Exists): {target_item}")
                    create_link = False

            if create_link:
                # Create a symbolic link
                os.symlink(source_item, target_item)
                print(f"Linked: {source_item} -> {target_item}")


if __name__ == "__main__":
    main()
