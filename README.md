# Vim-sql
Simple script allows to execute SQL statements using psql directly from vim.

## Installation
1. Copy psql.vim to ~/.vim/plugin/psql.vim and modify postgres connection string
2. Create directory ~/.sql

## Basic usage
1. Create file ~/.sql/.sql and put an SQL statement between semicolons like following:
```sql
;
select 1
;
```
2. Put cursor to any line of the SQL statement and :call Psql() to execute the statement

## Tips
1. Map F8 to execute query with just a keystroke - add following to ~/.vimrc: 
```
map <F8> :call Psql()<CR><CR>
```
2. Create alias to quickly access you favourite SQL statements - add following to ~/.zshrc: 
```
alias sql='vi ~/.sql/.sql'
```
3. Get query timing in results - add following to ~/.psqlrc:
```
\timing
```
