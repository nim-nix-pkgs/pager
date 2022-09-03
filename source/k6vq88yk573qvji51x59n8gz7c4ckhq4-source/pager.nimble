# Package

version       = "0.1.0"
author        = "Michael Rees"
description   = "A simple library for paging, similar to less"
license       = "GPL-3.0"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["pager"]
binDir        = "bin"



# Dependencies

requires "nim >= 0.20.0"
