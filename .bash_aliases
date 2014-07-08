cdls() {
    if [ -z "$1" ]; then
        cd && ls
    else
        cd "$*" && ls
    fi
}
alias cd=cdls

# safety measures
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ..='cd ..'

# Alias to multiple ls commands
alias la='ls -Al'               # show hidden files
alias lx='ls -lXB'              # sort by extension
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'      # sort by change time
alias lu='ls -lur'      # sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al |more'         # pipe through 'more'
alias l='ls'
alias biggest='du -x | sort -nr | head -10'

# Easy extract
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

alias top='top -F -R -o cpu'

# Git
alias lol="git log --oneline --decorate --graph"
alias gdl="git diff head~1 head"
alias gacp="git add .; git commit --amend --no-edit; git push -f"

# Svn
alias svn_remove_all="for file in `svn status|grep "^ *?"|sed -e 's/^ *? *//'`; do rm -f $file ; done"
alias svn_add_all="for file in `svn status|grep "^ *?"|sed -e 's/^ *? *//'`; do svn add $file ; done"
