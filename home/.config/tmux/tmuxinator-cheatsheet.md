# Tmuxinator Cheat Sheet

**Author:** David Boyd<br>
**Date:** 2023-06-17

## Installation

- Dependencies: Ruby

``` bash
# 1. Install tmuxinator
gem install tmuxinator

# 2. Add Ruby to $PATH if not already added to your RC file
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
```

| Command                   | Description                                   |
|---------------------------|-----------------------------------------------|
| tmuxinator open <name>    | Open config for prjName in default txt editor |
|                           | ...else if not existing, creates config       |
| tmuxinator <name>         | Loads Tmux session for given project's config |
|                           | ...and attaches to session                    |
| tmuxinator list           | Lists all curr->prjs                          |
| tmuxinator copy           | Copies prj config                             |
| ...<source> <destination> |                                               |
| tmuxinator delete <name>  | Deletes specified prj                         |
| tmuxinator implode        | Deletes ALL curr->prjs                        |
| tmuxinator doctor         | Identifies tmuxinator & system config issues  |
| tmuxinator debug <name>   | Show Tmux script that'll be ran on prj        |
|                           | ...used to copy Tmux to other systems         |
|                           | ...or debug issues                            |

