# Deleting remote tags

Deleting local tags is straightforward

```
git tag -d 12345
```

Deleting remote tags is slightly trickier. We need to remember the [git refspec](https://git-scm.com/book/en/v2/Git-Internals-The-Refspec) utilizes \<source>:\<destination> so we can push an empty tag to the existing reference which will effectively delete it.

```
git push origin :refs/tags/12345
```

[Source](https://nathanhoad.net/how-to-delete-a-remote-git-tag)
