command! -nargs=? Twc call s:Twc(<f-args>)

function! s:Twc(...)
  let colorsfile = $HOME . "/.twc_colors.vim"

  if !filereadable(colorsfile)
    echo "Not found colors file ---> $HOME/.twc_colors.vim"
    echo "Please write your downloaded vim color scheme line by line."
    echo "Setting Example:"
    echo "************************"
    echo "Create file         ---> $HOME/.twc_colors.vim"
    echo "Write color setting ---> vim $HOME/.twc_colors.vim"
    echo "************************"
  else

    let colors = readfile(colorsfile)

    if a:0 >= 1
      :execute "colorscheme " . colors[a:1]
    else
      let idx = s:Rand(len(colors))
      :execute "colorscheme " . colors[idx]
    end
  endif
endfunction

function! s:Rand(num)
    if has('reltime')
      return reltime()[0] % a:num
    else
      return a:num
    endif
endfunction
