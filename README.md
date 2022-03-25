### Tracker WIP

![Screenshot](images/screenshot.png?raw=true)

### Pbm binary file format

> The P4 binary format of the same image represents each pixel with a single
> bit, packing 8 pixels per byte, with the first pixel as the most significant
> bit. Extra bits are added at the end of each row to fill a whole byte.

- <https://en.wikipedia.org/wiki/Netpbm>

### BMP 1bpp file format

> The pixel array is a block of 32-bit DWORDs, that describes the image pixel by pixel. Usually pixels are stored "bottom-up", starting in the lower left corner, going from left to right, and then row by row from the bottom to the top of the image.

> Padding bytes (not necessarily 0) must be appended to the end of the rows in order to bring up the length of the rows to a multiple of four bytes.

- <https://en.wikipedia.org/wiki/BMP_file_format>

### Image format test files

There are some test files in the images dir. These files are in 1 bit per pixel
BMP and PBM formats, have a height of 8 rows, and have a width of 8, 9, and 33
columns indicated in the file name.

To skip the image file header and view the pixel arrays as 0s and 1s, you can
use xxd:

```
$ xxd -s 0x92 -b -c 4 images/count_8.bmp
00000092: 00001000 00000000 00000000 00000000  ....
00000096: 00000111 00000000 00000000 00000000  ....
0000009a: 00000110 00000000 00000000 00000000  ....
0000009e: 00000101 00000000 00000000 00000000  ....
000000a2: 00000100 00000000 00000000 00000000  ....
000000a6: 00000011 00000000 00000000 00000000  ....
000000aa: 00000010 00000000 00000000 00000000  ....
000000ae: 00000001 00000000 00000000 00000000  ....
```

and:

```
$ xxd -s 7 -b -c 1 images/count_8.pbm
00000007: 11111110  .
00000008: 11111101  .
00000009: 11111100  .
0000000a: 11111011  .
0000000b: 11111010  .
0000000c: 11111001  .
0000000d: 11111000  .
0000000e: 11110111  .
```

Notes:
- The 0s and 1s are reversed in the pbm and bmp formats
- The order of the rows is top to bottom for the PBM files, bottom to top for the BMP files
- The rows are padded to whole bytes in PBM files, and to 4 bytes in the BMP files

### References

- <https://wiki.xxiivv.com/site/uxntal.html>
- <https://wiki.xxiivv.com/site/varvara.html>
- <https://wiki.xxiivv.com/site/varvara_devices.html>
- <https://wiki.xxiivv.com/site/uxntal_macros.html>
- <https://wiki.xxiivv.com/site/chr_format.html>
- <https://wiki.xxiivv.com/site/ufx_format.html>
- <https://wiki.xxiivv.com/site/midi.html>
- <https://100r.co/site/nasu.html>
- <https://git.sr.ht/~rabbits/orca-toy/tree/main/item/src/utils.tal>
- <https://compudanzas.net/uxn_tutorial.html>
- <https://compudanzas.net/uxn_tutorial_day_2.html>
- <https://forum.merveilles.town/thread/21/uxn-real-time-audio-5/>
- <https://merveilles.town/@rostiger/107832336433230835>
- <https://llllllll.co/t/uxn-virtual-computer/46103/8>
- <https://llllllll.co/t/uxn-virtual-computer/46103/101>
- <https://llllllll.co/t/uxn-virtual-computer/46103/314>
