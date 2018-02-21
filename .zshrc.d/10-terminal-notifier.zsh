zplug "marzocchi/zsh-notify", at:WINDOWID-workaround
zstyle ':notify:*' error-title "Command failed (in #{time_elapsed} seconds)"
zstyle ':notify:*' success-title "Command finished (in #{time_elapsed} seconds)"
zstyle ':notify:*' command-complete-timeout 2
zstyle ':notify:*' success-sound "Hero"
zstyle ':notify:*' error-sound "Basso"
