#TL;DR
Nothing works at all.

# what
Swift running on Nintendo 3DS, because why not?

# Why?
Because I had no idea what I'm doing. And that's the best kind of an adventure

# How?
I'm not exactly sure to be honest.

But what I think it does:
* Export parts of https://github.com/smealum/ctrulib by @smealum as a LLVM module
* Compile Swift into LLVM IR with that modules
* Use clang to compile that LLVM IR into an freestanding arm executable
* Use devkitPro to link everything together

# Requirements
* [devkitPro](http://devkitpro.org)
* [Citra](http://citra-emu.org) (for running in emulator)

# Building
```
$ make
```

# Running 
In emulator:

```
$ citra Swift3DS.elf
```

To run on an a real device, an existing entrypoint for 3rd party code-execution must be installed, I recommend https://github.com/yellows8/3ds_homemenuhax by @yellow8

# License

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any
  damages arising from the use of this software.

  Permission is granted to anyone to use this software for any
  purpose, including commercial applications, and to alter it and
  redistribute it freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you
     must not claim that you wrote the original software. If you use
     this software in a product, an acknowledgment in the product
     documentation would be appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and
     must not be misrepresented as being the original software.
  3. This notice may not be removed or altered from any source
     distribution.