fun! Psql()
    normal $
    let l:start_line = search(';$','bcnW') + 1
    let l:end_line = search(';$','cnW') - 1
    if l:start_line!=0 && l:end_line!=0
        let l:tstamp = strftime('%s')
        let l:filename = '~/.sql/'.l:tstamp.'.sql'
        let l:cmd= ':'.l:start_line.','.l:end_line.'w !psql postgresql://username:password@host:port/db &> '.l:filename
        exec l:cmd
        exec 'ped '.l:filename
    endif
endfun
