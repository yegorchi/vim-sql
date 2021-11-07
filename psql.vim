function! Psql() abort
  let l:from=search(';$','bnW')+1 | let l:to=search(';$','cnW')
  if l:from!=0 && l:to!=0
    "export CONNINFO='postgresql://user:password@netloc:port/dbname'
    let l:conninfo=$CONNINFO
    let l:file='~/.db/'.strftime('%Y%m%d%H%M%S').'.sql'
    let l:cmd=':'.l:from.','.l:to.'w !psql '.l:conninfo.' &> '.l:file
    exe l:cmd | exe 'ped '.l:file | :winc j | exe ':res 21' | exe 'se nowrap'
    :winc k
  endif
endfunction
