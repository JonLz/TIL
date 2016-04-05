# Resizing An Image With SIPS
## Scriptable image processing system

A very handy tool to let you quickly resize an image via the command line. 

This will resize an image to a maximum width and maintain aspect ratio for all of the jpg files in a directory.

One caveat is it will replace the original unless you give it a --out <name> arg

```
sips -Z 640 *.jpg
```
```
 -Z pixelsWH
     --resampleHeightWidthMax pixelsWH
           Resample image so height and width aren't greater than specified size.
```

[source](http://lifehacker.com/5962420/batch-resize-images-quickly-in-the-os-x-terminal)