# Vim-sql
Simple script allows to execute SQL statements using psql directly from vim.

## Installation
1. Copy psql.vim to ~/.vim/plugin/psql.vim and export postgres connection string to $CONNIFO
```
cp psql.vim ~/.vim/plugin/psql.vim
export CONNINFO='postgresql://user:password@netloc:port/dbname'
```
2. Create directory ~/.db
```
mkdir ~/.db
```

## Basic usage
1. Create file ~/.db/.sql and mark SQL statements with semicolons like following:
```
vi ~/.db/.sql
select 1;
select 2;
```
2. Put cursor to any line of the SQL statement and execute the statement
```
:call Psql()
```

## Tips
1. Map F8 to execute query with just a keystroke - add following to ~/.vimrc: 
```
map <f8> :call Psql()<cr><cr>
```
2. Create alias to quickly access you favourite SQL statements - add following to ~/.zshrc: 
```
alias sql='vi ~/.db/.sql'
```
3. Get query timing in results - add following to ~/.psqlrc:
```
\timing
```
