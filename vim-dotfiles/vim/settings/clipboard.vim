function! Paste(clipboard_name)
  let shellcmd = 'xsel -o --'.a:clipboard_name

  " execute and exit if error occured
  let clipboard = system(shellcmd)
  if v:shell_error
    echo 'Error occured while pasting!'
    echo v:shell_error
    return 0
  endif

  " insert in paste mode to prevent
  " autoindentation & exit from paste mode
  execute ":set paste"
  exe 'normal i'.clipboard
  execute ":set nopaste"

  " move cursor back
  exe "normal ''"

  echo 'Pasted!'
endfunction

nmap <leader>rp :call Paste('primary')<CR>    " mouse roll clipboard (Roll Paste)
nmap <leader>tp :call Paste('clipboard')<CR>  " Ctrl+Shift+V clipboard (Terminal Paste)
