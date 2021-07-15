# vim-sql
Simple script allows to execute SQL statements using psql directly from vim.

Installation: 
1. copy psql.vim to ~/.vim/plugin/psql.vim and modify postgres connection string
3. create directory ~/.sql 

Usage: 
1. create file ~/.sql/.sql and put an SQL statement between semicolons like following:
    ;
    select 1
    ;
2. put cursor to the SQL statement and execute :call Psql() 

Advanced tips: 
1. map call to execute query with F8 keystroke - add following to .vimrc: map <F8> :call Psql()<CR><CR>
2. create alias to quickly access you favourite SQL statements - add following to .zshrc: alias sql='vi ~/.sql/.sql'

