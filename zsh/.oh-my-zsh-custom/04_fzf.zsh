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

# git checkout branch or tag, including remotes
fco() {
  local tags branches target
  tags=$(
  git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
  branches=$(
  git branch --all | grep -v HEAD             |
  sed "s/.* //"    | sed "s#remotes/[^/]*/##" |
  sort -u          | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
  target=$(
  (echo "$tags"; echo "$branches") |
  fzf-tmux -l30 -- --no-hscroll --ansi +m -d "\t" -n 2) || return
  git checkout $(echo "$target" | awk '{print $2}')
}

# git checkout local branch
fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# Git commit browser
git-fshow() {
	local g=(
		git log
		--graph
		--format='%C(auto)%h%d %s %C(white)%C(bold)%cr'
		--color=always
		"$@"
	)

	local fzf=(
		fzf
		--ansi
		--reverse
		--tiebreak=index
		--no-sort
		--bind=ctrl-s:toggle-sort
		--preview 'f() { set -- $(echo -- "$@" | grep -o "[a-f0-9]\{7\}"); [ $# -eq 0 ] || git show --color=always $1; }; f {}'
	)
	$g | $fzf
}

# tm - create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
# `tm` will allow you to select your tmux session via fzf.
# `tm irc` will attach to the irc session (if it exists), else it will create it.
tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) && tmux $change -t "$session" || echo "No sessions found."
}

# Search gopass password manager
unalias gp
gp() {
  pass=$(gopass ls -f | fzf +m) &&
	gopass show -c "$pass"
}

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
  if [[ $ARGS == 'ave '* ]]; then
    _fzf_complete "-m" "$@" < <(
      _aws_vault_profiles
    )
  else
    eval "zle ${fzf_default_completion:-expand-or-complete}"
  fi
}

export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion
