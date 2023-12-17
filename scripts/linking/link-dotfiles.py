#!/usr/bin/env python3
###############################################################################
# Title      : link-dotifles.py
# Description: Automate dotfile setup via recursive links
# Author     : DBoyd
# Date       : 2023-09-13
# Updated    : 2023-09-15 - added 'create_symlinks()', and `link`*`files()` fns
# Updated    : 2023-09-28 - create `/etc/` dirs
#
# Instructions: Run: `sudo python3 ./link-dotfiles.py`
###############################################################################

import platform
import os
import subprocess


def create_symlinks(source_item, target_item):

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


def get_os_name():
    ''' Possible returns: Linux, Windows, Darwin, Java, etc '''
    return platform.system()


def link_etc_dotfiles(os_name, git_root_dir):
    etc_dir = "/etc/"

    if os_name == "Linux":
        target_dirs = ["/etc/keyd"]
        etc_files = ["keyd/default.conf", "logid.cfg"]

        # Create the target directory if it doesn't exist with sudo
        for target_dir in target_dirs:
            try:
                # Use sudo to create the directory
                subprocess.run(['sudo', 'mkdir', '-p', target_dir], check=True)
            except subprocess.CalledProcessError:
                print(f"Failed to create {target_dir} with sudo.")

        for etc_file in etc_files:
            source_item = git_root_dir + etc_dir + etc_file
            target_item = os.path.expanduser(etc_dir + etc_file)
            create_symlinks(source_item, target_item)


def link_home_dotConfig_prgmfiles(os_name, git_root_dir):

    dot_config = ".config/"
    dot_config_prgms = ['nvim', 'tmux']

    if os_name == "Darwin":
        dot_config_prgms.append("karabiner")
    for prgm in dot_config_prgms:
        source_dir = git_root_dir + "/home/" + dot_config + prgm + "/"
        target_dir = os.path.expanduser("~/.config/" + prgm + "/")
        link_program(source_dir, target_dir)


def link_home_dotfiles(os_name, git_root_dir):

    home_dotfiles = [".gitconfig", ".p10k.zsh", ".zsh_aliases", ".zshrc"]
    if os_name == "Darwin":
        pass
        # home_dotfiles.append[...]
    elif os_name == "Linux":
        pass
        # home_dotfiles.append[...]
    # TODO: home_dotfiles = [".gitconfig", ".p10k.zsh", ".zsh_aliases", etc...]
    for dotfile in home_dotfiles:
        source_dir = git_root_dir + "/home/"
        target_dir = os.path.expanduser("~/")
        print(source_dir)
        print(target_dir)
        link_program(source_dir, target_dir)


def link_program(source_dir, target_dir):

    # Create the target directory if it doesn't exist
    os.makedirs(target_dir, exist_ok=True)

    # Function to recursively link files and directories
    def link_files(source, target):
        for item in os.listdir(source):
            source_item = os.path.join(source, item)
            target_item = os.path.join(target, item)
            create_symlinks(source_item, target_item)

    # Recursively link files and directories
    link_files(source_dir, target_dir)


def main():
    os_name = get_os_name()
    git_root_dir = find_git_root()

    # Link dotfiles by directory name
    link_etc_dotfiles(os_name, git_root_dir)
    # link_home_dotfiles(os_name, git_root_dir)  #TODO: merge zsh files
    link_home_dotConfig_prgmfiles(os_name, git_root_dir)


if __name__ == "__main__":
    main()
