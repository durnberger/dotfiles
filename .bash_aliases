# ~/.bash_aliases
#

# ------------------------------------------------------
# System Functions
# ------------------------------------------------------
alias ls='ls -al -hF --color --group-directories-first'
alias top='htop'

# ------------------------------------------------------
# Custom Commands
# ------------------------------------------------------

# Backup
alias backup='~/bin/backup-home-directory.sh'

# Fuzzy Finder
alias ff='$EDITOR "$(fzf)"'
alias fg='~/bin/fuzzygrep.sh'
alias fh='~/bin/fuzzyhistory.sh'

# Github Push
alias gp='~/bin/gitpush.sh'

# Jekyll server
alias jserve="bundle exec jekyll serve --livereload"

# Lock Screen
alias lock='~/bin/lock.sh'

# New daily note (journal)
alias j='~/bin/new-daily-note.sh'

# New quick note
alias n='~/bin/new-quick-note.sh'

# Print
alias print='~/bin/print-options.sh'

# Rip Music
alias rip='~/bin/rip-options.sh'

# Server
alias server='~/bin/server-mount.sh'

# Synaptic
alias synaptic='sudo synaptic'

# Update
alias update='sudo -- sh -c "apt update && apt -y upgrade && apt -y --purge autoremove && apt -y autoclean"'

# VPN
alias vpn='~/bin/vpn.sh'

# Writing
alias write='~/bin/writing-selection.sh'

