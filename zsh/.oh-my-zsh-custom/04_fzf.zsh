# Git checkout completion
#   git co ^T
_fzf_complete_git() {
  ARGS="$@"
  if [[ $ARGS == 'git co '* ]]; then
    _fzf_complete "-m" "$@" < <(
		git for-each-ref --format='%(refname:short)' refs/heads/
    )
  else
    eval "zle ${fzf_default_completion:-expand-or-complete}"
  fi
}

# Search gopass password manager
gp() {
  pass=$(gopass ls -f | fzf +m) &&
	gopass show -c "$pass"
}

#==============================================================================
# aws-vault
#==============================================================================
_login_url() {
  profile=$1

  session=$(aws configure get sso_session --profile "$profile")
  account_id=$(aws configure get "$profile".sso_account_id)
  role_name=$(aws configure get "$profile".sso_role_name)

  destination="https%3A%2F%2Feu-west-1.console.aws.amazon.com%2Fconsole%2Fhome%3Fregion%3Deu-west-1"

  echo "https://${session}.awsapps.com/start/#/console?account_id=${account_id}&role_name=${role_name}&destination=${destination}"
}

_aws_vault_profiles() {
  aws-vault list --profiles 
}

avl() {
  profile=$(_aws_vault_profiles | fzf) && aws-vault login -a $profile
}

alias ave="aws-vault exec"

_fzf_complete_aws-vault() {
  ARGS="$@"
  if [[ $ARGS == 'aws-vault exec'* ]]; then
    _fzf_complete "-m" "$@" < <(
      _aws_vault_profiles
    )
  else
    eval "zle ${fzf_default_completion:-expand-or-complete}"
  fi
}

_fzf_complete_ave() {
  _fzf_complete "-m" "$@" < <(
    _aws_vault_profiles
  )
}

#==============================================================================
# zellij
#==============================================================================
zj() {
  if [ $1 ]; then
    zellij attach --create "$1"
    return
  fi

  sessions=$(zellij list-sessions --short)
  selected_session=$(echo "$sessions" | fzf)
  if [ -n "$selected_session" ]; then
    if [ -v "$ZELLIJ" ]; then
      zellij action switch-session "$selected_session"
    else
      zellij attach "$selected_session"
    fi
  fi
}

zd() {
  if [ -n "$ZELLIJ" ]; then
    zellij action detach
  fi
}

ze() {
  if [ -n "$ZELLIJ" ]; then
    zellij action edit-scrollback
  fi
}
export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion
