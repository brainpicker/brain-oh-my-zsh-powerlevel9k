# vim:ft=zsh ts=2 sw=2 sts=2 et fenc=utf-8
################################################################
# powerlevel9k Theme
# https://github.com/bhilburn/powerlevel9k
#
# This theme was inspired by agnoster's Theme:
# https://gist.github.com/3712874
#
# The `vcs_info` hooks in this file are from Tom Upton:
# https://github.com/tupton/dotfiles/blob/master/zsh/zshrc
################################################################

################################################################
# Please see the README file located in the source repository for full docs.
# What follows is a brief list of the settings variables used by this theme.
# You should define these variables in your `~/.zshrc`.
#
# Customize which segments appear in which prompts (below is also the default):
#   POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
#   POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status svn)
#
#
# Set your username for the `context` segment:
#   export DEFAULT_USER=<your username>
#
#
# Show the hash/changeset string in the `vcs` segment:
#   POWERLEVEL9K_SHOW_CHANGESET=true
# Set the length of the hash/changeset if enabled in the `vcs` segment:
#   POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
#
# Make powerlevel9k a double-lined prompt:
#   POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#
# Set the colorscheme:
#   POWERLEVEL9K_COLOR_SCHEME='light'
################################################################

## Debugging
#zstyle ':vcs_info:*+*:*' debug true
#set -o xtrace

# These characters require the Powerline fonts to work properly. If see boxes or
# bizarre characters below, your fonts are not correctly installed. If you
# do not want to install a special font, you can set `POWERLEVEL9K_MODE` to
# `compatible`. This shows all icons in regular symbols.
case $POWERLEVEL9K_MODE in
  'flat')
    # Awesome-Patched Font required!
    # See https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched
    LEFT_SEGMENT_SEPARATOR=''
    RIGHT_SEGMENT_SEPARATOR=''
    ROOT_ICON="\uE801" # 
    RUBY_ICON="\uE847" # 
    AWS_ICON="\uE895" # 
    BACKGROUND_JOBS_ICON="\uE82F " # 
    TEST_ICON="\uE891" # 
    OK_ICON="\u2713" # ✓
    FAIL_ICON="\u2718" # ✘
    SYMFONY_ICON="SF"
    VCS_UNTRACKED_ICON="\uE16C" # 
    VCS_UNSTAGED_ICON="\uE17C" # 
    VCS_STAGED_ICON="\uE168" # 
    VCS_STASH_ICON="\uE133 " # 
    #VCS_INCOMING_CHANGES="\uE1EB " # 
    #VCS_INCOMING_CHANGES="\uE80D " # 
    VCS_INCOMING_CHANGES="\uE131 " # 
    #VCS_OUTGOING_CHANGES="\uE1EC " # 
    #VCS_OUTGOING_CHANGES="\uE80E " # 
    VCS_OUTGOING_CHANGES="\uE132 " # 
    VCS_TAG_ICON="\uE817 " # 
    VCS_BOOKMARK_ICON="\uE87B" # 
    VCS_COMMIT_ICON="\uE821 " # 
    VCS_BRANCH_ICON="\uE220" # 
    VCS_REMOTE_BRANCH_ICON=" \uE804 " # 
    VCS_GIT_ICON="\uE20E  " # 
    VCS_HG_ICON="\uE1C3  " # 
  ;;
  'compatible')
    LEFT_SEGMENT_SEPARATOR="\u2B80" # ⮀
    RIGHT_SEGMENT_SEPARATOR="\u2B82" # ⮂
    ROOT_ICON="\u26A1" # ⚡
    RUBY_ICON=''
    AWS_ICON="AWS:"
    BACKGROUND_JOBS_ICON="\u2699" # ⚙
    TEST_ICON=''
    OK_ICON="\u2713" # ✓
    FAIL_ICON="\u2718" # ✘
    SYMFONY_ICON="SF"
    VCS_UNTRACKED_ICON='?'
    VCS_UNSTAGED_ICON="\u25CF" # ●
    VCS_STAGED_ICON="\u271A" # ✚
    VCS_STASH_ICON="\u235F" # ⍟
    VCS_INCOMING_CHANGES="\u2193" # ↓
    VCS_OUTGOING_CHANGES="\u2191" # ↑
    VCS_TAG_ICON=''
    VCS_BOOKMARK_ICON="\u263F" # ☿
    VCS_COMMIT_ICON=''
    VCS_BRANCH_ICON='@'
    VCS_REMOTE_BRANCH_ICON="\u2192" # →
    VCS_GIT_ICON='Git'
    VCS_HG_ICON='HG'
  ;;
  'awesome-patched')
    # Awesome-Patched Font required!
    # See https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched
    LEFT_SEGMENT_SEPARATOR="\uE0B0" # 
    RIGHT_SEGMENT_SEPARATOR="\uE0B2" # 
    ROOT_ICON="\u26A1" # ⚡
    RUBY_ICON="\uE847" # 
    AWS_ICON="\uE895" # 
    BACKGROUND_JOBS_ICON="\uE82F " # 
    TEST_ICON="\uE891" # 
    OK_ICON="\u2713" # ✓
    FAIL_ICON="\u2718" # ✘
    SYMFONY_ICON="SF"
    VCS_UNTRACKED_ICON="\uE16C" # 
    VCS_UNSTAGED_ICON="\uE17C" # 
    VCS_STAGED_ICON="\uE168" # 
    VCS_STASH_ICON="\uE133 " # 
    #VCS_INCOMING_CHANGES="\uE1EB " # 
    #VCS_INCOMING_CHANGES="\uE80D " # 
    VCS_INCOMING_CHANGES="\uE131 " # 
    #VCS_OUTGOING_CHANGES="\uE1EC " # 
    #VCS_OUTGOING_CHANGES="\uE80E " # 
    VCS_OUTGOING_CHANGES="\uE132 " # 
    VCS_TAG_ICON="\uE817 " # 
    VCS_BOOKMARK_ICON="\uE87B" # 
    VCS_COMMIT_ICON="\uE821 " # 
    VCS_BRANCH_ICON="\uE220" # 
    VCS_REMOTE_BRANCH_ICON=" \uE804 " # 
    VCS_GIT_ICON="\uE20E  " # 
    VCS_HG_ICON="\uE1C3  " # 
  ;;
  *)
    # Powerline-Patched Font required!
    # See https://github.com/Lokaltog/powerline-fonts
    LEFT_SEGMENT_SEPARATOR="\uE0B0" # 
    RIGHT_SEGMENT_SEPARATOR="\uE0B2" # 
    ROOT_ICON="\u26A1" # ⚡
    RUBY_ICON=''
    AWS_ICON="AWS:"
    BACKGROUND_JOBS_ICON="\u2699" # ⚙
    TEST_ICON=''
    OK_ICON="\u2713" # ✓
    FAIL_ICON="\u2718" # ✘
    SYMFONY_ICON="SF"
    VCS_UNTRACKED_ICON='?'
    VCS_UNSTAGED_ICON="\u25CF" # ●
    VCS_STAGED_ICON="\u271A" # ✚
    VCS_STASH_ICON="\u235F" # ⍟
    VCS_INCOMING_CHANGES="\u2193" # ↓
    VCS_OUTGOING_CHANGES="\u2191" # ↑
    VCS_TAG_ICON=''
    VCS_BOOKMARK_ICON="\u263F" # ☿
    VCS_COMMIT_ICON=''
    VCS_BRANCH_ICON="\uE0A0 " # 
    VCS_REMOTE_BRANCH_ICON="\u2192" # →
    VCS_GIT_ICON=""
    VCS_HG_ICON=""
  ;;
esac

if [[ "$POWERLEVEL9K_HIDE_BRANCH_ICON" == true ]]; then
    VCS_BRANCH_ICON=''
fi

################################################################
# color scheme
################################################################

if [[ "$POWERLEVEL9K_COLOR_SCHEME" == "light" ]]; then
  DEFAULT_COLOR=white
  DEFAULT_COLOR_INVERTED=black
  DEFAULT_COLOR_DARK="252"
else
  DEFAULT_COLOR=black
  DEFAULT_COLOR_INVERTED=white
  DEFAULT_COLOR_DARK="236"
fi

VCS_FOREGROUND_COLOR=$DEFAULT_COLOR
VCS_FOREGROUND_COLOR_DARK=$DEFAULT_COLOR_DARK

# If user has defined custom colors for the `vcs` segment, override the defaults
if [[ -n $POWERLEVEL9K_VCS_FOREGROUND ]]; then
  VCS_FOREGROUND_COLOR=$POWERLEVEL9K_VCS_FOREGROUND
fi
if [[ -n $POWERLEVEL9K_VCS_DARK_FOREGROUND ]]; then
  VCS_FOREGROUND_COLOR_DARK=$POWERLEVEL9K_VCS_DARK_FOREGROUND
fi

################################################################
# Prompt Segment Constructors
################################################################

# Begin a left prompt segment
# Takes four arguments:
#   * $1: Name of the function that was orginally invoked (mandatory).
#         Necessary, to make the dynamic color-overwrite mechanism work.
#   * $2: Background color
#   * $3: Foreground color
#   * $4: The segment content
# The latter three can be omitted,
left_prompt_segment() {
  # Overwrite given background-color by user defined variable for this segment.
  # We get as first Parameter the function name, which called this function.
  # From the given function name, we strip the "prompt_"-prefix and uppercase it.
  # This is, prefixed with "POWERLEVEL9K_" and suffixed with either "_BACKGROUND"
  # of "_FOREGROUND", our variable name. So each new Segment should automatically
  # be overwritable by a variable following this naming convention.
  local BACKGROUND_USER_VARIABLE=POWERLEVEL9K_${(U)1#prompt_}_BACKGROUND
  local BG_COLOR_MODIFIER=${(P)BACKGROUND_USER_VARIABLE}
  [[ -n $BG_COLOR_MODIFIER ]] && 2=$BG_COLOR_MODIFIER

  # Overwrite given foreground-color by user defined variable for this segment.
  local FOREGROUND_USER_VARIABLE=POWERLEVEL9K_${(U)1#prompt_}_FOREGROUND
  local FG_COLOR_MODIFIER=${(P)FOREGROUND_USER_VARIABLE}
  [[ -n $FG_COLOR_MODIFIER ]] && 3=$FG_COLOR_MODIFIER

  local bg fg
  [[ -n $2 ]] && bg="%K{$2}" || bg="%k"
  [[ -n $3 ]] && fg="%F{$3}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $2 != $CURRENT_BG ]]; then
    # Middle segment
    echo -n "%{$bg%F{$CURRENT_BG}%}$LEFT_SEGMENT_SEPARATOR%{$fg%} "
  else
    # First segment
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$2
  [[ -n $4 ]] && echo -n "$4 "
}

# End the left prompt, closing any open segments
left_prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n "%{%k%F{$CURRENT_BG}%}$LEFT_SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%} "
  CURRENT_BG=''
}

# Begin a right prompt segment
# Takes four arguments:
#   * $1: Name of the function that was orginally invoked (mandatory).
#         Necessary, to make the dynamic color-overwrite mechanism work.
#   * $2: Background color
#   * $3: Foreground color
#   * $4: The segment content
# No ending for the right prompt segment is needed (unlike the left prompt, above).
right_prompt_segment() {
  # Overwrite given background-color by user defined variable for this segment.
  local BACKGROUND_USER_VARIABLE=POWERLEVEL9K_${(U)1#prompt_}_BACKGROUND
  local BG_COLOR_MODIFIER=${(P)BACKGROUND_USER_VARIABLE}
  [[ -n $BG_COLOR_MODIFIER ]] && 2=$BG_COLOR_MODIFIER

  # Overwrite given foreground-color by user defined variable for this segment.
  local FOREGROUND_USER_VARIABLE=POWERLEVEL9K_${(U)1#prompt_}_FOREGROUND
  local FG_COLOR_MODIFIER=${(P)FOREGROUND_USER_VARIABLE}
  [[ -n $FG_COLOR_MODIFIER ]] && 3=$FG_COLOR_MODIFIER

  local bg fg
  [[ -n $2 ]] && bg="%K{$2}" || bg="%k"
  [[ -n $3 ]] && fg="%F{$3}" || fg="%f"
  echo -n "%f%F{$2}$RIGHT_SEGMENT_SEPARATOR%f%{$bg%}%{$fg%} "
  [[ -n $4 ]] && echo -n "$4 "
}

################################################################
# The 'vcs' Segment and VCS_INFO hooks / helper functions
################################################################
function in_git() {
  if $(git status >/dev/null 2>&1); then
    return 0
  fi
  return 1
}

prompt_git() {
    if $in_git; then
        prompt_git_status "right"
        prompt_git_branch "right"
    fi
}

prompt_git_status() {
    local ahead behind
    local -a git_status

    branch_name=${$(git symbolic-ref --short HEAD 2>/dev/null)}

    # for git prior to 1.7
    # ahead=$(git rev-list origin/${branch_name}..HEAD | wc -l)
    ahead=$(git rev-list ${branch_name}@{upstream}..HEAD 2>/dev/null | wc -l)
    (( $ahead )) && git_status+=( "$VCS_OUTGOING_CHANGES${ahead// /}%f" )

    # for git prior to 1.7
    # behind=$(git rev-list HEAD..origin/${branch_name} | wc -l)
    behind=$(git rev-list HEAD..${branch_name}@{upstream} 2>/dev/null | wc -l)
    (( $behind )) && git_status+=( "$VCS_INCOMING_CHANGES${behind// /}%f" )

    if [ ! -z "$git_status" ]; then
        $1_prompt_segment "$0" red white "$git_status"
    fi
}

prompt_git_branch() {
    local branch_name=${$(git symbolic-ref --short HEAD 2>/dev/null)}
    if [ -n "$branch_name" ]; then
        if  [ "$branch_name" != "$SVNSHELL_BRANCH_CURRENT" ] ;
        then
            export GITSHELL_BRANCH_PREV=$GITSHELL_BRANCH_CURRENT
            export GITSHELL_BRANCH_CURRENT=$branch_NAME
        fi
        $1_prompt_segment "$0" green black "$VCS_REMOTE_BRANCH_ICON $branch_name "
    else 
       $1_prompt_segment "$0" green black
    fi
}

prompt_vcs() {
  local vcs_prompt="${vcs_info_msg_0_}"

  if [[ -n "$vcs_prompt" ]]; then
    if [[ "$VCS_WORKDIR_DIRTY" == true ]]; then
      $1_prompt_segment "$0_MODIFIED" "yellow" "$DEFAULT_COLOR"
    else
      $1_prompt_segment "$0" "green" "$DEFAULT_COLOR"
    fi

    echo -n "%F{$VCS_FOREGROUND_COLOR}%f$vcs_prompt "
  fi
}

function +vi-git-untracked() {
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' && \
            ${$(git ls-files --others --exclude-standard | sed q | wc -l)// /} != 0 ]]; then
        hook_com[unstaged]+=" %F{$VCS_FOREGROUND_COLOR}$VCS_UNTRACKED_ICON%f"
    fi
}

function +vi-git-remotebranch() {
    local remote branch_name

    # Are we on a remote-tracking branch?
    remote=${$(git rev-parse --verify HEAD@{upstream} --symbolic-full-name 2>/dev/null)/refs\/(remotes|heads)\/}
    branch_name=${$(git symbolic-ref --short HEAD 2>/dev/null)}

    hook_com[branch]="%F{$VCS_FOREGROUND_COLOR}$VCS_BRANCH_ICON${hook_com[branch]}%f"
    # Always show the remote
    #if [[ -n ${remote} ]] ; then
    # Only show the remote if it differs from the local
    if [[ -n ${remote} && ${remote#*/} != ${branch_name} ]] ; then
        hook_com[branch]+="%F{$VCS_FOREGROUND_COLOR}$VCS_REMOTE_BRANCH_ICON%f%F{$VCS_FOREGROUND_COLOR}${remote// /}%f"
    fi
}

function +vi-git-tagname() {
    local tag

    tag=$(git describe --tags --exact-match HEAD 2>/dev/null)
    [[ -n "${tag}" ]] && hook_com[branch]=" %F{$VCS_FOREGROUND_COLOR}$VCS_TAG_ICON${tag}%f"
}

# Show count of stashed changes
# Port from https://github.com/whiteinge/dotfiles/blob/5dfd08d30f7f2749cfc60bc55564c6ea239624d9/.zsh_shouse_prompt#L268
function +vi-git-stash() {
  local -a stashes

  if [[ -s $(git rev-parse --git-dir)/refs/stash ]] ; then
    stashes=$(git stash list 2>/dev/null | wc -l)
    hook_com[misc]+=" %F{$VCS_FOREGROUND_COLOR}$VCS_STASH_ICON${stashes// /}%f"
  fi
}

# -------------------------------------------------------------------
# The 'svn' segment
# -------------------------------------------------------------------

prompt_svn() {
   if in_svn; then
     prompt_svn_revision "right"
     prompt_svn_branch "right"
   fi
}

in_svn() {
  if $(svn info >/dev/null 2>&1); then
    return 0
  fi
  return 1
}

# SVN Branch
prompt_svn_branch() {
  local ref dirty mode branch
  branch=`svn info 2>/dev/null | grep "Relative URL"`

  if [[ -n "$branch" ]] ; then
      # strip beginning
      prefix='Relative URL: ^/'
      branch=${branch#$prefix}

      if  [ "$branch" != "$SVNSHELL_BRANCH_CURRENT" ] ;
      then
          export SVNSHELL_BRANCH_PREV=$SVNSHELL_BRANCH_CURRENT
          export SVNSHELL_BRANCH_CURRENT=$branch
      fi

      if  [[ $branch == branches* ]] ;
      then
          branch=${branch#'branches/'}
      fi
      if  [[ $branch == tags* ]] ;
      then
          branch=${branch#'tags/'}
      fi
      $1_prompt_segment "$0" green black "$branch "
  fi

}

prompt_svn_revision() {
    local rev status
    rev=`svn info 2> /dev/null | sed -n 's/Revision:\ //p'`
    update=`svn status -u 2> /dev/null | sed -n 's/Status against revision:  \ //p'`

    if [[ -n "$update" ]] ; then
         if [[ "$update" != "$rev" ]] ; then
           $1_prompt_segment "$0" red white "$VCS_OUTGOING_CHANGES$rev:$update "
         else
            $1_prompt_segment "$0" red white "$rev "
         fi
    else
       $1_prompt_segment "$0" red white "$rev "
    fi
}

function _param_to_branch() {
	local branch=$1
    if [ -n "$branch" ] ; then
		branch=${branch#^?}
    echo "$branch after removing /"
		if [ "$branch" == "trunk" ]; then
      echo "trunk $branch"
			branch="trunk"
		elif [[ "$branch" == *\/* ]]; then
      echo "branch != trunk"
			branch=${branch#'^/'}
		else
      echo "last else"
			branch="branches/$branch"
		fi
	fi
	echo "$branch"
}

function _extract_branch_name() {
	local branch=$1
	if  [[ $branch == branches* ]] ;
	then
	    branch=${branch#'branches/'}
	fi
	if  [[ $branch == tags* ]] ;
	then
	    branch=${branch#'tags/'}
	fi
	echo "$branch"
}

function _switch() {
	local branch=$1
    if [ -n "$branch" ] ; then
		if [ "$branch" == "-" ]; then
			if  [ -n "$SVNSHELL_BRANCH_PREV" ] && [ "$SVNSHELL_BRANCH_CURRENT" != "$SVNSHELL_BRANCH_PREV" ];
			then
				svn switch ^/$SVNSHELL_BRANCH_PREV "${*:2}"
			fi
		else
			branch=$(_param_to_branch $branch)
			svn switch ^/"$branch" "${*:2}"
		fi
	else
		svn switch "$@"
	fi
}

function _branch() {
	local branch=$1
	local message=$2
    if [ -z "$branch" ] ; then
		svn ls ^/branches/ --verbose | sort
	else
		if [ -n "$message" ] ; then
			svn copy . ^/branches/"$branch" -m "$message"
		else
			svn copy . ^/branches/"$branch"
		fi
	fi
}

function _commit() {
	svn commit "$@"
	local RETVAL=$?
	[ $RETVAL -eq 0 ] && svn update
}

function _merge_branch() {
	local banch=$(_param_to_branch $1)
	if [ -z "$banch" ] ; then
		echo "mb <BranchName>"
	else
		svn merge ^/"$banch" "${*:2}"
		local RETVAL=$?
		[ $RETVAL -eq 0 ] && echo "Commit hint: ci -m \"Merge from $banch\""
	fi
}

function _reintegrate() {
	_merge_branch "$1" "--reintegrate"
}

function _mergelog() {
	local branch=$(_param_to_branch $1)
    if [ -z "$branch" ] ; then
		branch=$SVNSHELL_BRANCH_CURRENT
	fi
	local shortbranch=$(_extract_branch_name $branch)

	local message=
	local author=
	local rev=
	local date=
	local state=0

	svn log --limit 10 ^/$branch | while read line
	do
		if [[ "$line" == ---* ]]; then

			if [ "$state" -eq 3 ]; then
				echo "------------- $author [$date] -----------------------------------"
				echo "merge -c $rev ^/$branch ."
				echo "commit -m \"Merge from $shortbranch: $message\""
			fi

			state=1
		elif [ "$state" -eq 1 ]; then
			# r6733 | alex | 2014-07-07 16:09:21 +0300 (Mon, 07 Jul 2014) | 1 line
			state=2
			local OLD_IFS="$IFS"
			IFS=' | '
			local data=( $line )
			IFS="$OLD_IFS"

			rev=${data[0]#r}
			author=${data[1]}
			date="${data[2]} ${data[3]}"
			message=

		elif [ "$state" -eq 2 ]; then
			#empty line
			state=3
		elif [ "$state" -eq 3 ]; then
			#empty line
			if [ -n "$line" ]; then
			    message="$message $line"
			fi
		fi
	done
	# show last
	if [ "$state" -eq 3 ]; then
		echo "------------- $author [$date] -----------------------------------"
		echo "merge -c $rev ^/$branch ."
		echo 'commit -m "Merge from $shortbransh: $message"'
	fi
}

function _diff() {
	hash colordiff 2>/dev/null
	local RETVAL=$?
	if [ $RETVAL -eq 0 ]; then
		svn diff "$@" | colordiff
	else
		svn diff "$@"
	fi
}

# -------------------------------------------------------------------
# Prompt Segments
# -------------------------------------------------------------------

# The `CURRENT_BG` variable is used to remember what the last BG color used was
# when building the left-hand prompt. Because the RPROMPT is created from
# right-left but reads the opposite, this isn't necessary for the other side.
CURRENT_BG='NONE'

# Context: user@hostname (who am I and where am I)
# Note that if $DEFAULT_USER is not set, this prompt segment will always print
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    if [[ $(print -P "%#") == '#' ]]; then
      # Shell runs as root
      $1_prompt_segment "$0_ROOT" "$DEFAULT_COLOR" "yellow" "$USER@%m"
    else
      $1_prompt_segment "$0_DEFAULT" "$DEFAULT_COLOR" "011" "$USER@%m"
    fi
  fi
}

# Dir: current working directory
prompt_dir() {
  local current_path='%~'
  if [[ -n "$POWERLEVEL9K_SHORTEN_DIR_LENGTH" ]]; then
    # shorten path to $POWERLEVEL9K_SHORTEN_DIR_LENGTH
    current_path="%$((POWERLEVEL9K_SHORTEN_DIR_LENGTH+1))(c:.../:)%${POWERLEVEL9K_SHORTEN_DIR_LENGTH}c"
  fi

  $1_prompt_segment "$0" "blue" "$DEFAULT_COLOR" "$current_path"
}

################################################################
# Prompt processing and drawing
################################################################

# Main prompt
build_left_prompt() {
  RETVAL=$?

  if [[ "${#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS}" == 0 ]]; then
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
  fi

  for element in $POWERLEVEL9K_LEFT_PROMPT_ELEMENTS; do
    prompt_$element "left"
  done

  left_prompt_end
}

# Right prompt
build_right_prompt() {
  RETVAL=$?

  if [[ "${#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS}" == 0 ]]; then
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(git svn)
  fi

  for element in $POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS; do
    prompt_$element "right"
  done
}

powerlevel9k_init() {
  setopt LOCAL_OPTIONS
  unsetopt XTRACE KSH_ARRAYS
  prompt_opts=(cr percent subst)

  # initialize colors
  autoload -U colors && colors

  if [[ "$POWERLEVEL9K_PROMPT_ON_NEWLINE" == true ]]; then
    [[ -n $POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX ]] || POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─"
    [[ -n $POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX ]] || POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="╰─ "

    PROMPT="$POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX%{%f%b%k%}"'$(build_left_prompt)'"
$POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX"
    # The right prompt should be on the same line as the first line of the left
    # prompt.  To do so, there is just a quite ugly workaround: Before zsh draws
    # the RPROMPT, we advise it, to go one line up. At the end of RPROMPT, we
    # advise it to go one line down. See:
    # http://superuser.com/questions/357107/zsh-right-justify-in-ps1
    RPROMPT_PREFIX='%{'$'\e[1A''%}' # one line up
    RPROMPT_SUFFIX='%{'$'\e[1B''%}' # one line down
  else
    PROMPT="%{%f%b%k%}"'$(build_left_prompt)'
    RPROMPT_PREFIX=''
    RPROMPT_SUFFIX=''
  fi

  if [[ "$POWERLEVEL9K_DISABLE_RPROMPT" != true ]]; then
    RPROMPT=$RPROMPT_PREFIX"%{%f%b%k%}"'$(build_right_prompt)'"%{$reset_color%}"$RPROMPT_SUFFIX
  fi
}

export SVNSHELL_BRANCH_PREV=""
export SVNSHELL_BRANCH_CURRENT=""
export GITSHELL_BRANCH_PREV=""
export GITSHELL_BRANCH_CURRENT=""

powerlevel9k_init "$@"
