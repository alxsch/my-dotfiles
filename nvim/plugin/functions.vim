"" Functions

if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

" function! LastBDnerdtree()
"     let cnt = 0
"     for i in range(0, bufnr("$"))
"         if buflisted(i)
"             cnt += 1
"         endif
"     endfor
"     if cnt <= 0
"         :NERDTreeToggle<CR>
"     endif
" endfunction
