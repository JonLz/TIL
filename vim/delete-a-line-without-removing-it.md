# Delete a line without removing it

My usual workflow to remove a line and start a new line was to delete the line, then insert a new blank line:

```
dd + O
```

The only problem I have is it presumes you want to begin editing right away as it leaves you in insert mode.

This solution feels just erases line content and makes no assumptions about putting you right into insert mode:

```
0D
```

0 goes to the beginning of the line. 

D deletes the rest of the line (rest = all, since at the beginning). 

```
0wC
```

Is another way to accomplish a similar goal of deleting a line and editing it anew.

[Source](http://vim.1045645.n5.nabble.com/Way-to-clear-line-without-removing-the-line-td4268076.html)
