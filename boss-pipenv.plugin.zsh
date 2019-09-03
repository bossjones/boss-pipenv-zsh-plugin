# Try to find pipenv, if it's not on the path
if [ ! "$(command -v pipenv)" ]; then
  echo "Install http://docs.pipenv.org/en/latest/ to use this plugin." > /dev/stderr
fi

if [ "$(command -v pipenv)" ]; then
  # Add activate to change pwd functions
  chpwd_functions+=(zsh-pipenv-shell-activate)

  # enable pipenv tab completion
  eval "$(pipenv --completion)"
fi
