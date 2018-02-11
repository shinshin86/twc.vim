# twc.vim
Today(This) Window Color at my Vim

![twc.vim demo at gif](./gif/twc_demo.gif)



## Usage

loaded plugin then this command at vim!

```vim
:Twc   "---> random select your colors
:Twc0  "---> select your color
:Twc 1 "---> select your color
```



## Setting

Please write your downloaded vim color scheme line by line.

```bash
#Setting Example:"
touch $HOME/.twc_colors.vim"
vim $HOME/.twc_colors.vim"
```

.twc_colors.vim

```vim
your favorite color scheme 1
your favorite color scheme 2
your favorite color scheme 3
```

``:Twc`` command

```vim
:Twc 0 "---> your favorite color scheme 1
:Twc 1 "---> your favorite color scheme 2
:Twc 2 "---> your favorite color scheme 3
:Twc   "---> random select color scheme
```



## Install

### dein.vim

```toml
[[plugins]] # twc
repo = 'shinshin86/twc.vim'
```

### NeoBundle

```vim
NeoBundle 'shinshin86/twc.vim'
```
