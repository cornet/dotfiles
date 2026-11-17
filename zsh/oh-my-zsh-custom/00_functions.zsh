# Handy functions
function is_osx() {
  [[ "${OSTYPE}" = darwin* ]]
}

function cmd_exists() {
  (( ${+commands[$1]} ))
}

function path_prepend() {
  if [ -d "$1" ]; then
    PATH="$1":$PATH
  fi
}

function path_append() {
  if [ -d "$1" ]; then
    PATH=$PATH:"$1"
  fi
}

