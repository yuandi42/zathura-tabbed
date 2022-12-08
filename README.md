# Zathura-tabbed

Now you can simply open your favourite simple document viewer in tabs!

![screenshot](./screenshot.png)

## Dependencies

* [zathura](https://pwmt.org/projects/zathura/) and
  [tabbed](https://tools.suckless.org/tabbed/); (Isn't that obvious?)
* [xprop](https://manned.org/xprop);
* [seturgent](https://codemadness.org/git/seturgent/file/README.html): A simple
  tool to set urgent hint to a X window which supports ICCCM;
* A POSIX-compatible shell inside a UNIX-like OS.


## Installation

```sh
git clone https://github.com/yuandi42/zathura-tabbed.git
cd zathura-tabbed
make install
```

or simply copy the shell script to your `PATH`.

## Usage

Open given files:

```
zathura-tabbbed foo.pdf bar.epub`
```

And you can also read from stdin:

```
groff -man -T pdf baz.1 | zathura-tabbed -
```

All the options are simply passed to `zathura`.

## NOTE

For those who refuses to install `seturgent`, you can modify the script, use
tools like `xdotool` or `wmctrl` to set urgent hint as long as your X window
manager supports EWMH.

## Credits

* Thanks mtikekar for his [work](https://github.com/mtikekar/zathura-tabbed)
  since this script is basically a modification of his.
