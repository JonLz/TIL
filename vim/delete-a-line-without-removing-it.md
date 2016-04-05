# Delete a line without removing it

My usual workflow was delete the line, then insert a new blank line:

```
dd + Shift+O
```

But this feels like a little too much mental overhead for a very common operation and it also presumes you want to begin editing right away as it leaves you in insert mode.

This solution feels better as it just erases line content and makes no assumptions about putting you right into insert mode:

```
0D
```

0 goes to the beginning of the line. 
D deletes the rest of the line (rest = all, since at the beginning). 

[Source](http://vim.1045645.n5.nabble.com/Way-to-clear-line-without-removing-the-line-td4268076.html)