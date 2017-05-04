Support for building various Python libraries in `.deb` form, as used by
various of my utilities. Assuming you have [Docker](https://www.docker.com/)
installed and running, simply run `make getdebs` on any POSIX-type (e.g. OSX,
Linux) system to build and get a copy of various `.deb` files in the current
directory.

# Known Bugs

* python3-coloredlogs should depend on python3-humanfriendly, but currently
  doesn't. You'll need to make sure the latter is manually installed if you
  use the former.
