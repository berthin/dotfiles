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
  call setline(line('.'), getline('.') . ' ' . result)
endfunction

" -- Get the last issue number obtained from the git-log information
function! GetIssueNumberGit()
  let cur_path = expand('%:p:h')
  let cmd = 'git -C '. cur_path .' log | grep Issue | cut -d : -f2 | head -n 1'
  call AppendCommandResult(cmd)
endfunction
