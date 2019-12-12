## unrarall

docker image to automatically extract RAR files

## Configuration

Mount the directory you want watched to `/input`

Set the environment variable `CLEANMODE` to either `all` or `none`

Set the environment variable `DELAY` to the number of seconds to wait between runs

With --skip-if-exists




## Original readme

unrarall attemps to extract all rar files in a given directory (and its
sub-directories) and once successfully extracted remove all the rar files to
cleanup (you must pass --clean= for this to happen and use the rar hook). Other
unwanted files can be removed by the use of the other available hooks (see the
list shown in --help ). It is meant to be more error proof and quicker than
cleaning by hand. You can also set an output folder, use different backends,
perform sfv checks automatically etc...

If there's something you would liked removed by unrarall then you can implement
your own hook (See HACKING).

### INSTALL

1. You just need to make sure you set execute permission on the script. This
   can be done using the following command:

```
chmod u+x unrarall
```

2. Place the script wherever you want it and rename it to whatever you want. I
   prefer unrarall.

### USAGE

Run unrarall with all cleanups on current directory
```
unrarall --clean=all .
```

Run with an output directory on the current directory
```
unrarall --output /tmp/mystuff .
```

Run unrarall -h to get the help for much more details.

Enjoy.

### ACKNOWLEDGEMENTS

Name and idea comes from "jeremy" see -
http://askubuntu.com/questions/7059/script-app-to-unrar-files-and-only-delete-the-archives-which-were-sucessfully

