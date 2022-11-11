# Zathura-tabbed

Now you can simply open your favourite simple document viewer in tabs!

![screenshot](./screenshot.png)

## Dependencies

* [zathura](https://pwmt.org/projects/zathura/) and
  [tabbed](https://tools.suckless.org/tabbed/); (Isn't that obviously?)
* [seturgent](https://codemadness.org/git/seturgent/file/README.html): A simple
  tool to set urgent hint to a X window which supports ICCCM;
* A POSIX-compatible shell.


## Installation

```sh
git clone https://github.com/yuandi42/zathura-tabbed.git
cd zathura-tabbed
make install
```

or simply copy the shell script to your `PATH`.

## Usage

`zathura-tabbbed foo.pdf bar.epub`

All the options are simply passed to `zathura`.

## TODO

* Find a method to detach zarthura tabs.


## Credits

* Thanks mtikekar for his [work](https://github.com/mtikekar/zathura-tabbed)
  since this script is basically a modification of his.