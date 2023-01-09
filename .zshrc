source ~/.shell/aliases

# brew
eval $(/opt/homebrew/bin/brew shellenv)


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


#### FIG ENV VARIABLES ####
# [ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

# bun completions
[ -s "/Users/matthewt/.bun/_bun" ] && source "/Users/matthewt/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# fly
export FLYCTL_INSTALL="/Users/matthewt/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/matthewt/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/matthewt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/matthewt/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/matthewt/google-cloud-sdk/completion.zsh.inc'; fi

# nim
export PATH=/Users/matthewt/.nimble/bin:$PATH

# sdkman
source ~/.shell/sdkman-init.sh

# pyenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
