function! Sample()
  let x = 'a'
  return x
endfunction

function! s:sample()
  let x = 'a'
  return x
endfunction

function! Smartinput_scope()  "{{{2
  return s:
endfunction

function! Smartinput_sid()  "{{{2
  return maparg('<SID>', 'n')
endfunction
nnoremap <SID>  <SID>
