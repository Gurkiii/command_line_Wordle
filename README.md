# command line Wordle

This is a command line version of Wordle written in Haskell.

It's written in IntelliJ by JetBrains using the IntelliJ Haskell plugin by Rik van der Kleij.

It plays by the same rules, just on the command line.
However, instead of grey, yellow or green tiles, it says w (wrong character), y (for a yellow tile) or r (right/correct character) respectively.

To get started, you need (preferably the newest version of) [ghci](https://www.haskell.org/ghc/), the Glasgow Haskell Compiler. Just follow the installation instructions on their site.
Then simply download the `Wordle.hs` file from the `test` folder in this project.

Now to play a game of Wordle on your command line, open up the terminal and type in `ghci `, followed by the file path to the `Wordle.hs` file you downloaded from here (so most likely `/Downloads/Wordle.hs`) and hit enter.
After ghci has loaded up the file it will say `*Wordle>`.
Then just type in `startWordle`, hit enter and the game will guide you through!

In case you've never played this version of Wordle on your command line, even if you know the original version well, I highly recommend checking the instructions in-game to make sure you're aware of where this version differs from the original game.

In order to properly leave the game, first press `CTRL`+`c` to quit the game itself, then type in `:q` or `:quit` and hit enter to leave ghci. After that, you can close the terminal. 

If you have any questions, feel free to contact me via Twitter or Discord (see [linktree](https://gperm.gurki.gay)).
