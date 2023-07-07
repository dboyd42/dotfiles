# Tmux Cheat Sheet

**Author:** David Boyd<br>
**Date:** 2023-06-16

## From Terminal

| Category       | Shortcut                  | Description                |
|----------------|---------------------------|----------------------------|
| General        |                           |                            |
|                | `new-window "<shellCmd>"` | In new window, run cmd     |
|                |                           |                            |
| Sessions       | `attach -t <sessName>`    | attach `t`arget            |
|                | `<...> -d`                | `d`etach upon creation     |
|                | `send-keys -t <sessName>` | Send following cmd -> sess |
|                | ... `'cd ~/devprj' C-m`   | ..cmd -> sess (use quotes) |
|                | ... `C-m`                 | ..`Enter` key -> sess      |
|                |                           |                            |
|                |                           |                            |
| \|---> Windows |                           |                            |
| \|---> Panes   |                           |                            |

## Inside Tmux

| Category | Shortcut                   | Description                          |
|----------|----------------------------|--------------------------------------|
| **HELP** | `<prefix>?`                | List all predefined Tmux keybindings |
| Fun      | `<prefix>t`                | show `t`ime                          |
| Source   | `source-file <tmuxConfig>` |                                      |

## Sessions

| Action     | Shortcut    | Description    |
|------------|-------------|----------------|
| Navigation | `<prefix>s` | `s`ession mgmt |

## Windows

| Action               | Shortcut                | Description              |
|----------------------|-------------------------|--------------------------|
| Navigation           | `<prefix>`f             | `f`ind window via string |
| Kill Windows         | `<prefix>`&             | `&`aaaaand kill window   |
| Create Win & Name    | `:new-window -n <name>` | `-n`ame m3 windows       |
| Create Win & Run Cmd | `:new-window "<Cmd>"`   | Use the `"` dbbl quotes  |

## Panes

| Action         | Shortcut        | Description                       |
|----------------|-----------------|-----------------------------------|
| Layouts        | `<prefix>Space` | Cycle through pane layouts        |
| Kill Pane      | `<prefix>x`     | All my e`x`es are panes in my ass |
| Join self.pane | `<prefix>j`     | Joins this.pane to another w.p    |
| Send self.pane | `<prefix><C-s>` | Sends another w.pane to this.pane |

# Other

## Install TMUX Plugin Manager (tpm)

1. Install TPM 

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

2. Install your plugins

``` bash
# 1. Open TMUX 
tmux

# 2. Install plugins from $HOME/.config/tmux.conf
<prefix>I
```

<!-- Reference Links -->

