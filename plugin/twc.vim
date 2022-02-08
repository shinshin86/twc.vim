scriptencoding utf-8
command! -nargs=? Twc call s:Twc(<f-args>)

function! s:Twc(...)
  let colorsfile = $HOME . "/.twc_colors.vim"

  let colorsetting = get(g:, "twc_colors", [])

  if len(colorsetting) == 0 && !filereadable(colorsfile)
    echo "Set the color scheme in the vimrc file."
    echo 'let twc_colors = ["color1", "color2", "color3"]'
    echo ""
    echo "or..."
    echo ""
    echo "Please write your vim color scheme line by line."
    echo "Setting Example:"
    echo "************************"
    echo "Create file         ---> $HOME/.twc_colors.vim"
    echo "Write color setting ---> vim $HOME/.twc_colors.vim"
    echo "************************"
  endif
  
  if filereadable(colorsfile)
    let colors = readfile(colorsfile)

    if a:0 >= 1
      let colorname = colors[a:1]
    else
      let idx = s:Rand(len(colors))
      let colorname = colors[idx]
    endif
  else
    if a:0 >= 1
      echo a:1
      let colorname = colorsetting[a:1]
    else
      let idx = s:Rand(len(colorsetting))
      let colorname = colorsetting[idx]
    endif
  endif
  
  echo "[Twc] Change color schema: "
  echo colorname
  :execute "colorscheme " . colorname
endfunction

function! s:Rand(num)
    if has('reltime')
      return reltime()[0] % a:num
    else
      return a:num
    endif
endfunction
