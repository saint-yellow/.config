setopt no_nomatch

# Load enabled configurations
ENABLED_ZSH_CONFIG=${HOME}/.config/zsh/enabled

for file in `ls ${ENABLED_ZSH_CONFIG} | grep zsh$`
do
  source ${ENABLED_ZSH_CONFIG}/${file}
done

