" -- Execute a command
function! ExecCommand(cmd)
  let result = system(a:cmd)
  return result
endfunction

" -- Append the result of an executed command
function! AppendCommandResult(cmd)
  let cmd_output = ExecCommand(a:cmd)
  let result = substitute(cmd_output, '[\]\|[[:cntrl:]]', '', 'g')
  " Append space + result to current line without moving cursor.
  call setline(line('.'), getline('.') . result)
endfunction

" -- Get the last issue number obtained from the git-log information
function! GetIssueNumberGit()
  let cur_path = expand('%:p:h')
  echom cur_path
  let cmd = 'git -C '. cur_path .'/.. log | grep Issue | cut -d "#" -f2 | head -n 1'
  call AppendCommandResult(cmd)
endfunction

" -- Change between header and source files
function! SwapSourceHeader()
  let cur_path = expand('%:r')
  let extension = expand('%:e')
  echom cur_path . '.' . extension
  if extension == 'cpp'
    execute "edit " . cur_path . ".hpp"
  else
    execute "edit " . cur_path . ".cpp"
  endif
endfunction

" -- Function to call Ack with the word where the cursor is located
function! AckCurrentWord()
  let curr_word = expand('<c-word>')
  execute "Ack " . curr_word
endfunction
