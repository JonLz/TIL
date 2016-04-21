# Sorting File Output

There is a built in sort command that can take some helpful inputs:

```
       -n, --numeric-sort
              compare according to string numerical value

        -k, --key=POS1[,POS2]
              start a key at POS1, end it at POS2 (origin 1)
```

which if used as so:

```
sort -k 3 -n
```

Will sort output by the 3rd column in numeric order. 

This can be very useful when looking at tabular data such as filesizes, or when verifying a git packfile as detailed in the [git-scm](https://git-scm.com/book/en/v2/Git-Internals-Maintenance-and-Data-Recovery) book:

```
git verify-pack -v .git/objects/pack/pack-29…69.idx \
  | sort -k 3 -n \
  | tail -3
``` 