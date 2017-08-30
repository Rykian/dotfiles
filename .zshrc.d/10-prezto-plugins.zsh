zplug "modules/environment", from:prezto
zplug "modules/editor", from:prezto
zplug "modules/history", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/spectrum", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/prompt", from:prezto
zplug "modules/git", from:prezto

zstyle ':prezto:*:*' color 'yes'
# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':prezto:module:editor' key-bindings 'emacs'
# Auto convert .... to ../..
zstyle ':prezto:module:editor' dot-expansion 'yes'
# Set the keyword used by `mand` to open man pages in Dash.app
zstyle ':prezto:module:osx:man' dash-keyword 'manpages'
zstyle ':prezto:module:prompt' theme 'sorin'
zstyle ':prezto:module:tmux:iterm' integrate 'yes'
