# Find a deleted file in a git repository

Here's a workflow I found for recovering a deleted file in git when you only sort of kind of remember the file name.

Locate the actual file name and path

```
git log --diff-filter=D --summary | grep -i filename
```

Find the commit that deleted the file

```
git log -1 -- <filename>
```

Checkout the actual file into your current branch from the previous commit (note the ~1)

```
git co <commit or hash name>~1 -- <filename>
```
