# zshrc
My zshrc

Contains:
- nicoulaj theme (https://raw.githubusercontent.com/MatthewVita/zshrc/master/screenshot-1.PNG)
- Vim mode (with the exception of a remapped <CTRL><R> for reverse search... old habit)
- Git helpers and pretty git log: https://raw.githubusercontent.com/MatthewVita/zshrc/master/screenshot-2.PNG
- History file appender
- Convenience functions: `up`, `f` (quick find), `mkdircd`, `open` (file explorer opener)
- Convenience aliases
- Useful plugins (to me, anyway...)

## Setup

Install zsh:

`sudo apt-get install -y zsh`

Install oh-my-zsh:

`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Change default shell to zsh (requires reboot/relogin):

`chsh -s /bin/zsh`

## License

MIT
