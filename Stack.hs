-- :script C:\Users\Patrick\HaskellProjects\Stack.txt
:! cls

append(value, targetList) = value : targetList

:{
helper (values) =
  let
  n = length values
  firstElement = head values
  nextList = tail values
  in
  if n == 0
    then []
    else append(firstElement,(helper(nextList)))
:}

push(values, stack) = stack ++ helper(values)

-- ************************************
:{
pop(stack) =
  let
    lastElement = last stack
    removeLast = tail (reverse stack)
    newStack = reverse removeLast
    in (lastElement, newStack)
:}

-- 4102
peek (stack) = last stack
len(stack) = length stack
-- ******************************************
emptyStack = []
example = push([1,2,3,4], emptyStack)
example

examplePop = pop(example)
poppedValue = fst examplePop
poppedList = snd examplePop
poppedValue
poppedList

example = push([4,5,6], poppedList)
example


putStrLn ""
putStrLn "Process finished with exit code 0"
