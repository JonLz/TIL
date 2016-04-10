# Searching for file names

A fairly common query is to try to find a file by searching it's filename only (disregarding its contents). 

There's 2 easy ways to do this:

```
find . -maxdepth 1 -name "*string*" -print
```

This will use the built in find functionality which searches file hierarchies. Maxdepth will let you control recursive depth which is nice, but I usually find myself wanting to search when I'm already fairly deep into a file hierarchy. This will usually do the trick:

```
find . -name "string"
```

This can also be done with a combination of list and grep:

```
ls -R | grep "string"
```

[source](http://stackoverflow.com/questions/11328988/linux-find-files-with-name-containing-string)