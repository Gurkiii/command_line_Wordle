module Wordle where

startWordle :: IO ()
startWordle = main

main :: IO ()
main = do
    putStrLn "Welcome to the command line version of Wordle in Haskell!"
    wordleInit

wordleInit :: IO ()
wordleInit = do
    putStrLn "Type the number of the Wordle you want to do or read the rules by typing \"rules\"."
    l <- getLine
    if l == "rules"
        then showrules
        else if read l <= length wordleList
            then wordlechosen (read l)
            else putStrLn ""

wordlechosen :: Int -> IO ()
wordlechosen typednumber = do
    putStrLn (append ["You have chosen Wordle ", show typednumber, ", start by typing your first guess or cancel simply by typing \"cancel\"."])
    l <- getLine
    if l == "cancel"
        then wordleInit
        else wordleplay (chooseWordle (read l))

wordleplay :: WordlePair -> IO ()
wordleplay (wordle, guesses) = do
    guess <- getLine
    putStrLn (reveal guess wordle)
    if reveal guess wordle == "g g g g g"
    then wordleEnd True guesses wordle
    else if length guesses == 5
        then wordleEnd False guesses wordle
        else wordleplay (wordle, append [guesses, [reveal guess wordle]])

wordleEnd :: Bool -> [String] -> String -> IO ()
wordleEnd haswon guesses wordle = do
    if haswon
    then putStrLn "You won!"
    else putStrLn (append ["You lost! The wordle was: ", wordle])
    putStrLn "Your guesses were:"
    print guesses
    wordleInit     

------------------------------------------------------------------------



reveal :: String -> String -> String
reveal guess wordle = append (zipWith (\g w -> if g == w then "r " else (if g `elem` wordle then "y " else "w ")) guess wordle)

chooseWordle :: Int -> WordlePair
chooseWordle n = (get (random n (length wordleList)) wordleList, [])

type WordlePair = (String, [String])

showrules :: IO ()
showrules = do
    putStrLn "This commandline version of Wordle works just like the regular version, except you won't see colors but \"w\" (\"wrong\") instead of grey, \"y\" for yellow or \"r\" (\"right\") for green."
    wordleInit

wordleList :: [String]
wordleList = ["tests"]

random :: Int -> Int -> Int
random a b = mod (a*a*a + b*b*a) b 

append :: [[a]] -> [a]
append l = foldl (foldr (:)) [] (reverse l)

get :: Int -> [a] -> a
get _ [] = error "index out of scope"
get 1 (a : _) = a
get n (_ : as) = get (n-1) as

