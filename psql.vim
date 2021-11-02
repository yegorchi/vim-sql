fu! Psql() abort
  let l:from=search(';$','bnW')+1 | let l:to=search(';$','cnW')
  if l:from!=0 && l:to!=0
    let l:user='user:password'
    let l:db='netloc:port/dbname'
    let l:conn='postgresql://'.l:user.'@'.l:db
    let l:file='~/.sql/'.strftime('%s').'.sql'
    let l:cmd=':'.l:from.','.l:to.'w !psql '.l:conn.' &> '.l:file
    exe l:cmd | exe 'ped '.l:file | :winc j | exe ':res 21' | exe 'se nowrap'
    :winc k
  en
endf
