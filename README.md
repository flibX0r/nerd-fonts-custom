# NerdFonts Custom Patched Fonts

This is my personal collection of patched monospace fonts

The [font-patcher](font-patcher.py) script is taken from the [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) project, modified to only include the glyph sets I'm interested in.


## Glyph Offsets

| Glyph Set       | Original Codepoints | Remapped Codepoints |
| --------------- | ------------------- | ------------------- |
| Devicons        | `E600` - `EC04`     | Unchanged           |
| Font Awesome 5  | `F000` - `F8FF`     | Unchanged           |
|                 | `E000` - `E086`     | Unchanged for now   |
| Material Design | `0F0000` - `0F1743` | Unchanged           |
| Linux Logos     | `F100` - `F12D`     | `EE00` - `EE2D`     |

## TODO

- [ ] Current fonts are broken, need repatching. **Do not use these fonts**.
- [ ] Add Powerline icons for Roboto and other fonts
- [ ] Make better versions of the Powerline Extra Symbols
- [ ] Fix scaling issues by referencing known source glyph width instead of automagic
