nnoremap <leader>Cn :exe "echo strftime(\"\| %H:%M \| %a %Y/%m/%d \| CW%V \|\")"<CR>

function! GetCalendar()
   " Create a swap buffer
   :new
   :setlocal buftype=nofile
   :setlocal bufhidden=hide
   :setlocal noswapfile
   " Get the content of the calendar
   :r!gcal -q DE_BY -K --starting-day=monday .
endfunction

nnoremap <leader>Cc :call GetCalendar()<CR>
