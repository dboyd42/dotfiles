#!/usr/bin/env python3
###############################################################################
# Title: gitRootDir.py
# Description: Find root dir of local Git repo in which user ran this script
# Date: 2023-09-13
# Author: DBoyd
###############################################################################

import subprocess


def main():

    # Find the Git root directory
    git_root_dir = find_git_root()

    if git_root_dir:
        print(f"Git root directory: {git_root_dir}")
        return git_root_dir
    else:
        print("Script is not in a Git repository.")


def find_git_root():
    try:
        # Run the git rev-parse command to get the root of the Git repository
        git_root = \
            subprocess.check_output(['git', 'rev-parse', '--show-toplevel'],
                                    stderr=subprocess.PIPE,
                                    universal_newlines=True).strip()
        return git_root
    # except if not found:
    except subprocess.CalledProcessError:
        # If the command fails, it means the script is not in a Git repository
        return None


if __name__ == "__main__":
    main()
