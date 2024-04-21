# https://www.qutebrowser.org/doc/help/settings.html#content.local_content_can_access_file_urls

# -----------------------------------------------------------------------------
# Theme
# -----------------------------------------------------------------------------
# Setting dark mode
config.set("colors.webpage.darkmode.enabled", True)

# Dracula
# -------
import dracula.draw
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

# -----------------------------------------------------------------------------
# Cookies
# -----------------------------------------------------------------------------
config.set('content.cookies.accept', 'all')


# -----------------------------------------------------------------------------
# Headers
# -----------------------------------------------------------------------------
# Changes require browser restart

# Accept-lanaguage (default)
config.set('content.headers.accept_language', 'en-US,en;q=0.9')

# User agent (default)
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {qt_key}/{qt_version} {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}')

# -----------------------------------------------------------------------------
# JavaScript
# -----------------------------------------------------------------------------
# Note that the value read from JavaScript is always the global value.

# Allow JavaScript to read from or write to the clipboard (default)
#config.set('content.javascript.clipboard', 'none')
config.set('content.javascript.clipboard', 'access', 'https://github.com/*')

# Load images automatically in web pages (default)
config.set('content.images', True)

# Enable JavaScript (default)
config.set('content.javascript.enabled', True)

# Allow locally loaded documents to access other local URLs (default)
config.set('content.local_content_can_access_file_urls', True)

# Allow locally loaded documents to access remote URLs (default)
config.set('content.local_content_can_access_remote_urls', False)

# -----------------------------------------------------------------------------
# Keybindings
# -----------------------------------------------------------------------------
# Bindings for normal mode
config.bind('M', 'hint links spawn mpv {hint-url}')
config.bind('Z', 'hint links spawn st -e youtube-dl {hint-url}')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
config.bind('\sc', 'config-source ~/.config/qutebrowser/config.py')
config.bind('<Ctrl-g>', 'leave-mode', mode='passthrough')

# Readline Insert Mode for Emacs-like Bindings
config.bind("<Ctrl-h>", "fake-key <Backspace>", "insert")
config.bind("<Ctrl-e>", "fake-key <Home>", "insert")
config.bind("<Ctrl-b>", "fake-key <End>", "insert")
config.bind("<Mod1-b>", "fake-key <Left>", "insert")
config.bind("<Ctrl-f>", "fake-key <Ctrl-Left>", "insert")
config.bind("<Mod1-f>", "fake-key <Right>", "insert")
config.bind("<Ctrl-p>", "fake-key <Ctrl-Right>", "insert")
config.bind("<Ctrl-n>", "fake-key <Up>", "insert")
config.bind("<Ctrl-d>", "fake-key <Down>", "insert")
config.bind("<Mod1-d>", "fake-key <Ctrl-Delete>", "insert")
config.bind("<Ctrl-d>", "fake-key <Delete>", "insert")
config.bind("<Ctrl-w>", "fake-key <Ctrl-Backspace>", "insert")
config.bind("<Ctrl-u>", "fake-key <Shift-Home>", "insert")
config.bind("<Ctrl-k>", "fake-key <Shift-End>", "insert")
config.bind("<Ctrl-x><Ctrl-e>", "fake-key <open-editor>", "insert")
