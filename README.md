# vim-calendar
Some utility functions for displaying the date/time within vim

## Commands

There aren't many to start with, but nevertheless...

### Current date/time

Simply type `<leader>Cn` will show the current date and time in the echo line. E.g.

    | 09:51 | Wed 2019/10/02 | CW40 |

**Note** that it relies on the vim built-in command `strftime`, so the portability isn't guaranted. I use Debian.

### Month overview

Using the command `<leade>Cc` will open a new window and display the calendar in there, as

```
                                  2019


     September                  October                   November
 Mo Tu We Th Fr Sa Su CW   Mo Tu We Th Fr Sa Su CW   Mo Tu We Th Fr Sa Su CW
                    1 34       1< 2> 3: 4  5  6 39                1  2  3 43
  2  3  4  5  6  7  8 35    7  8  9 10 11 12 13 40    4  5  6  7  8  9 10 44
  9 10 11 12 13 14 15 36   14 15 16 17 18 19 20 41   11 12 13 14 15 16 17 45
 16 17 18 19 20 21 22 37   21 22 23 24 25 26 27 42   18 19 20 21 22 23 24 46
 23 24 25 26 27 28 29 38   28 29 30 31          43   25 26 27 28 29 30    47
 30                   39                                                    
```

**Note** that it uses the `gcal` command, and is currently configured for Bavaria, Germany's locales.

## License

Available under the MIT license.
