# ~/.bash_aliases
#

# © Paul Dürnberger 
# Creative Commons Attribution 4.0: CC BY-SA
#

# -------------------------------------------------------------------------------------
# System Functions
# -------------------------------------------------------------------------------------

alias ls='ls -al -hF --color --group-directories-first'
alias top='htop'

# -------------------------------------------------------------------------------------
# Custom Commands
# -------------------------------------------------------------------------------------

# Backup
alias backup='~/bin/backup-home-directory.sh'

# Fuzzy Finder
alias f='$EDITOR "$(fzf)"'
alias fb='~/bin/fuzzybin.sh'
alias ff='~/bin/fuzzyfiles.sh'
alias fh='~/bin/fuzzyhistory.sh'

# Github Push
alias gp='~/bin/gitpush.sh'

# Jekyll server
alias jserve="bundle exec jekyll serve --livereload"

# Lock Screen
alias lock='~/bin/lock.sh'

# Note New Daily
alias dn='~/bin/new-daily-note.sh'

# Note New Unique
alias nn='~/bin/new-unique-note.sh'

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

