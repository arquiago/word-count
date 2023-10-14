import Data.String
import Data.List

partial aHead : String -> Char
aHead "" = '\0'
aHead x  = strIndex x 0

checkNum : Char -> String
checkNum x = if isAlpha x then singleton x else " "

partial removeNum : String -> String
removeNum "" = ""
removeNum x  = let elem = checkNum (aHead x) in 
                    let elem' = removeNum (strTail x) in
                    elem ++ elem'

partial main : IO ()
main = putStr( removeNum "01_-+&'abc")
