# How do I (re)compile my whole system?
* info: this will make a package list of all the valid packages(verified by pacman-src), then passes that list to pacman-src

```sh
for package in $(pacman -Qsq )
do 
    if pacman-src --search --quiet $package
    then 
        packages+=" $package"
    fi
done
pacman-src --noconfirm \
            --skipchecks --force \
            --cleanbuild --cache $packages
```

# How do I compile group(s)?
* info: this is supported out of the box!

```sh
pacman-src [group(s)]
```
# How do I ignore errors?
```sh
pacman-src --ignore [package(s)]
```
# How do I search for package(s)?
* info: this returns 0 if the package is found, 1 if the package is not found!

```sh
pacman-src --search [package(s)]
```
