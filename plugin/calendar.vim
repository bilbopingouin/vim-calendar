"--------------------------------------------
" Get a calendar using gcal
"--------------------------------------------
function! calendar#FillCalendar()
   " Get the content of the calendar
   :return split(system('gcal -q DE_BY -K --starting-day=monday .'), '\n')
endfunction

"--------------------------------------------
" Create a swap buffer
"--------------------------------------------
function! calendar#CreateSwapBuffer()
   " Create a swap buffer
   :new
   :setlocal buftype=nofile
   :setlocal bufhidden=hide
   :setlocal noswapfile
   :setlocal nobuflisted
   :setlocal undolevels=-1
   :return winbufnr(0)
endfunction

"--------------------------------------------
" Create a swap buffer
"--------------------------------------------
function! calendar#CreatePopup()
   :let l:id = popup_dialog(['([x] to close)'], #{filter: 'popup_filter_yesno', callback: 'calendar#ClosePopup', close: 'button'})
   :return winbufnr(l:id)
endfunction

function! calendar#ClosePopup(nr, result)
endfunction

"--------------------------------------------
" Display the file indexed
"--------------------------------------------
function! GetCalendar()
   if has('popupwin')
      let s:bufid = calendar#CreatePopup() 
   else
      let s:bufid = calendar#CreateSwapBuffer()
   endif
   let caldata = calendar#FillCalendar()
   call appendbufline(s:bufid, '$', caldata)
endfunction

"--------------------------------------------
" Commands
"--------------------------------------------
nnoremap <leader>Cn :exe "echo strftime(\"\| %H:%M \| %a %Y/%m/%d \| CW%V \|\")"<CR>

nnoremap <leader>Cc :call GetCalendar()<CR>
