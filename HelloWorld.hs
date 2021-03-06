-- :script C:\Users\Patrick\HaskellProjects\HelloWorld.txt

:! cls

"Hello World!"
map Data.Char.toUpper "chris"
let (a,b) = (10, 12) in a * 2

let (a:_) = "xyz" in a
let (_,a:_) = (10,"abc") in a
let [a,b,c] = "cat" in (a,b,c)
let abc@(a,b,c) = (10,20,30) in (abc,a,b,c)

factorial n = if n == 0 then 1 else n * factorial (n-1)
factorial 3

-- test (n,x) = (n+x)
-- test(1,2)

test1 = (1,2)
test2 = (3,4)

putStrLn ""
putStrLn "Process finished with exit code 0"
putStrLn ""
