# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# 加载各项配置
ENABLED_ZSH_CONFIG=${HOME}/.config/zsh/enabled

for file in `ls ${ENABLED_ZSH_CONFIG} | grep zsh$`
do
  source ${ENABLED_ZSH_CONFIG}/${file}
done

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
