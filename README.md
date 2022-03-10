# command line Wordle

This is a command line version of Wordle written in Haskell.

It's written in IntelliJ by JetBrains using the IntelliJ Haskell plugin by Rik van der Kleij.

It plays by the same rules, just on the command line.
However, instead of grey, yellow or green tiles, it says w (wrong), y or r (right) respectively.

To get started, you need (preferably the newest version of) [ghci](https://www.haskell.org/ghc/), the Glasgow Haskell Compiler.
Then simply download the `Wordle.hs` file from the `test` folder in this project.

Now to play a game of Wordle on your command line, open up the terminal and type in `ghci --load` followed by the file path to the `Wordle.hs` file you downloaded from here and hit enter.
After ghci has loaded up the file it will say `*Wordle>`.
Then just type in `startWordle`, hit enter and the game will guide you through!  

If you have any questions, feel free to contact me via Twitter or Discord (see [linktree](https://gperm.gurki.gay)).
