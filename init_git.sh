# setting user

$username
$useremail


# input Name
while :
do
  read -p "input git username: " username

  read -p "Are you username ${username}? (y/n)" answer

  case "$answer" in
    y|Y ) break;;
    n|N ) continue;;
  esac
done

#input Email
while :
do
  read -p "input git email: " useremail

  read -p "Are you email ${useremail}? (y/n)" answer

  case "$answer" in
    y|Y ) break;;
    n|N ) continue;;
  esac
done

git config --global user.name $username
git config --global user.email $useremail

# git 대소문자 구분하도록 설정
git config --global core.ignorecase false

# git editor를 vscode로 변경
git config --global core.editor "code --wait"

# git diff editor를 vscode로 변경
git config --global diff.tool diff-code
git config --global difftool.diff-code.cmd 'code --wait --diff $LOCAL $REMOTE'

# git 언어를 한글로 변경할때 alias 등록
alias git='LANG="ko_KR.UTF-8" git'

# git log
git config --global alias.gl "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold yellow)%d%C(reset) %C(white)%s%C(reset)%C(dim white) - %an%C(reset)%C(reset) %C(bold green)(%ar)%C(reset)'"
