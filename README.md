## NordicTown

NordicTown is a minimalistic Beamer theme, based on [Metropolis](https://github.com/matze/mtheme).

![Sample](https://i.imgur.com/YdQDHwM.png)


## Installation

1. **Download the source** with a `git clone` of the [NordicTown repository](https://github.com/matael/nordictown)
   or as a [zip archive](https://github.com/matael/nordictown/archive/master.zip) of
   the latest development version.
3. **Move the `*.sty` files** to the folder containing your
   presentation. To use NordicTown with many presentations, run `make install`
   or move the `*.sty` files to a folder in your TeX path instead (might require
   `sudo` rights).
4. **Use the theme for your presentation** by declaring `\usetheme{nordictown}` in
    the preamble of your Beamer document.
5. **For best results** install [Nunito Sans](https://fonts.google.com/specimen/Nunito+Sans).


## Usage

The following code shows a minimal example of a Beamer presentation using
Metropolis.

```latex
\documentclass{beamer}
\usetheme{nordictown}           % Use nordictown theme
\title{A minimal example}
\date{\today}
\author{matael}
\institute{Somewhere over the rainbow}
\begin{document}
  \maketitle
  \section{First Section}
  \begin{frame}{First Frame}
    Hello, world!
  \end{frame}
\end{document}
```

Detailed information on using NordicTown can be found in the manual of its parent theme: [Metropolis][].

## License

The theme itself is licensed under a [Creative Commons Attribution-ShareAlike
4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/). This
means that if you change the theme and re-distribute it, you *must* retain the
copyright notice header and license it under the same CC-BY-SA license. This
does not affect the presentation that you create with the theme.


[Metropolis]: http://mirrors.ctan.org/macros/latex/contrib/beamer-contrib/themes/metropolis/doc/metropolistheme.pdf
