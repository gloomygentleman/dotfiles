# 키보드 연속 입력
defaults write -g ApplePressAndHoldEnabled -bool false

# 키보드 연속 입력 원상복구
# defaults delete -g ApplePressAndHoldEnabled

# 마우스 속도
defaults write -g com.apple.mouse.scaling 4 # 또는 5

# 원화 대신 백틱
$key_bindings_dir='~/Library/KeyBindings'

if [ ! -d $key_bindings_dir ]; then
  mkdir $key_bindings_dir
fi

cd $key_bindings_dir

printf '{\n\t"₩" = ("insertText:", "`");\n} \n' >> 'DefaultkeyBinding.dict'

ce -
