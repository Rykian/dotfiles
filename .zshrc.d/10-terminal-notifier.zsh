zplug "marzocchi/zsh-notify", at:WINDOWID-workaround
zstyle ':notify:*' notifier ~/.rbenv/shims/terminal-notifier
zstyle ':notify:*' success-title "Command finished (in #{time_elapsed} seconds)"
zstyle ':notify:*' command-complete-timeout 2
