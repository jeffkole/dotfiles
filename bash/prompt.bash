# Invoke the starship prompt, if starship exists

if [ $(which starship) ]; then
  eval "$(starship init bash)"
fi
