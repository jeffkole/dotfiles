# Invoke the starship prompt, if starship exists

if [ $(which starship) ]; then
  export STARSHIP_CONFIG=~/.dotfiles/bash/starship.toml
  eval "$(starship init bash)"
fi
