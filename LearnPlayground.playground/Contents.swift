//: Playground - noun: a place where people can play

import UIKit

//MARK: - Variables
print("------ Test Variables ------")

/*
 There are a variety of possible variables we can use
 
 String     - Simply text, consider them as if you want to store words and letters then you'd use Strings
 Int        - Stores a whole number
 Double     - Stores a decimal number
 Boolean    - Stores a true or false value

 Let's make those below, feel free to make more of your own and use the print() command to display them.
 */

var myString = "Here is a demo String."
var myInt = 5
var myDouble = 10.21
var boolean = false

//The print command is used to internally log messages, so the developer can later pull the logs and analyze what messages he previously setup to display.
print(myString)
print(myInt)
print(myDouble)
print(boolean)

//You can see in the console/output below that the 4 variables were printed out (SCROLL UP). Try to create your own variables below:

print("------ Your created variables ------")
























/*
 MARK: - Functions
 
    Functions are sections/pieces of code that you want to use multiple times. 
    Consider them like a macro or script, you set it up to run one action and whenever you run that macro/script it does the same function over and over.
 
 */
print("------ Test Functions ------")

func countSiblings() {
    //Okay this looks complex but it's not too bad. Here we create a String that contains the phrase "Number of Siblings:" and then we include the sum of number of brothers & sisters within that same string. The way you include numbers in strings is by putting a \( before them and a ) after them.
    print("Number of Siblings: \(numberOfBrothers + numberOfSisters)")
}

//So there is our first function, it has the code to display the total number of siblings created. How do we use this? Let's look below:

var numberOfBrothers = 3
var numberOfSisters = 2
countSiblings()

//Okay so we have now created 2 variables, one holding # of brothers and # of sisters, which we will use in the function. We then "call the function", essentially run it, and it prints out the result in the console.

numberOfSisters = 4
numberOfBrothers = numberOfBrothers + 1
countSiblings()

//Now we have changed those variables, assigning 4 to the # of sisters, and adding one brother to the # of brothers. This results in 8 total, which we can see reflected in the console. And look at that we were able to call the exact same function to get our proper count!


//Let's do one more example. What if I wanted to multiply the number of sisters by 2 and divde the number of brothers by 4? Here's how we'd do that

numberOfBrothers = numberOfBrothers / 4
numberOfSisters = numberOfSisters * 2
countSiblings()

print("------ Your Functions ------")


//Feel free to create your own variables and functions to do anything you'd like and make sure you understand this concept. One idea might be to make 4 functions, add(), subtract(), divide(), multiply() and use those, along with some variables, to make simple math calculations - the basis of the calculator app!

























/*
 MARK: - Control Flow
 
 There are two main aspects of control flow - if/else statements, and loops
 
 Everyone has heard of the dreaded loop, but i'd argue if/else statements are the more used element in code.

 The important part to remember is these things operate like a switch, if one condition is met the switch is turned on, if a different one is met then the switch is turned off. The state of the switch (on/off) is held within a Boolean variable (like shown in that first section).
 */
print("------ Test Control Flow ------")






// If/else statement

var lightSwitch = false // we'll consider false to be off
var timeOfDay = 12 // using 24 hour time, any hour between 6 - 17 is daytime and 18 - 5 is night

if timeOfDay > 5 && timeOfDay < 18 {
    lightSwitch = false // daytime
}
else{
    lightSwitch = true //nighttime
}

print("Light switch is turned on? \(lightSwitch)")

/* 

 Okay, so here is the fundamental piece of coding logic, we've just created 2 paths the code can follow, but in this case it can't follow both.
 
 - If the timeOfDay variable is a number greater than 5 AND a number less than 18, then we will enter the section of code labeled daytime.
 - If the number doesn't meet that criteria logic, then it will enter the section of code labeled nighttime.

*/







//Let's try it again by changing the time of day.

timeOfDay = 2

if timeOfDay > 5 && timeOfDay < 18 {
    lightSwitch = false // daytime
}
else{
    lightSwitch = true //nighttime
}

print("Light switch is turned on? \(lightSwitch)")


// Awesome, so this is incredibly powerful with coding. This allows us to be able to tell the computer to do one thing when a certain criteria or set of rules is met, and do something completely different if they are not met.







// Did you notice how I had to copy and paste that if/else statement in the second example above? That was rather cumbersome, but we already learned a tool that will help us with that... functions! Here is one way we can do the exact same thing with functions:

timeOfDay = 13
determineIfLightSwitchIsOn()
timeOfDay = 4
determineIfLightSwitchIsOn()
timeOfDay = 10
determineIfLightSwitchIsOn()

func determineIfLightSwitchIsOn() {
    if timeOfDay > 5 && timeOfDay < 18 {
        lightSwitch = false // daytime
    }
    else{
        lightSwitch = true //nighttime
    }

    print("At \(timeOfDay) o'hundred is the light turned on? \(lightSwitch)")
}


// That's a lot less code, and it turns out to be a lot easier to read.









// Now let's look at what we are actually doing in the if statement itself - that's the code after the purple word if

if timeOfDay > 5 && timeOfDay < 18 {}

/*
 Breaking this down piece by piece
 
 if             - The keyword that the computer will use to know I'm about to use control flow (path A)
 timeOfDay > 5  - This is called a conditional statement, it is essentially a yes/no question, 
                  is timeOfDay greater than 5?
 &&             - This one throws people off. This symbol means I'm about to give the computer another
                  conditional statement/question to be use in determining if we will go down path A or B.
 timeOfDay < 18 - Here is the second conditional statement, is timeOfDay less than 18? 
 {}             - These are called brackets, the left bracket will indicate the start of 
                  a section of code, and the right brack will indicate the end of a section.
 else           - The other path (path B) the code can take.

 */















/* Let's talk about digital logic/control flow
 
    In digital logic we have a few different operators that help us determine if a statement is true or false.
 
    AND             - &&        // both conditions on either side of symbol must be true
    OR              - ||        // one or both of conditions on either side of symbol must be true
 
    Examples of how to use these:

    true && true = true                 false && false = false                  true && true && true = true
    true && false = false               false && true = false                   true && false && true = false
 
    true || true = true                 false || false = false                  true && true && false = true
    true || false = true                false || true = true                    false && false && false = false

    // You can also combine these, for example (note, these use order of operations, so parethesis are done first:

    true && true || true = true         true && false || true = true            false && (true || false) = false
    true && true || false = true        false && true || false = false          true || (true && false) = true
 
 
    And here are some of the math operators where we can determine a true or false result

    EQUAL           - ==        Yes, this is two equal signs
    GREATER THAN    - >         Can be used with equal for GREATER THAN EQUAL   >=
    LESSER THAN     - <         Can be used with equal for LESSER THAN EQUAL    <=

    Examples of how to use these:
 
    1 == 1 results in true.         1 == 3 results in false.
    1 > 0 results in true.          1 > 12 results in false.
    1 < 77 results in true.         1 < -33 results in false.


    Let's work with this a little bit below:
 */

print("\n------ Control Flow Logic ------")


var result = 3 > 2
print("3 > 2: \(result)")

result = 3 < 2
print("3 < 2: \(result)")

result = 3 >= 2
print("3 >= 2: \(result)")

result = 3 >= 3
print("3 >= 3: \(result)")

result = true && true
print("true && true: \(result)")

result = true && false
print("true && false: \(result)")

result = true || false
print("true || false: \(result)")

result = false || false
print("false || false: \(result)")

result = true && false || true
print("true && false || true: \(result)")

result = false && true || false
print("false && true || false: \(result)")

result = false && (true || false)
print("false && (true || false): \(result)")

result = true || (true && false)
print("true || (true && false): \(result)")

result = 3 > 2 && 3 < 2
print("3 > 2 && 3 < 2: \(result)")

result = 3 > 2 || 3 < 2
print("3 > 2 || 3 < 2: \(result)")




/*
 Okay so that was digital logic. Remember that we call those results of true/false - Booleans. Which are represented as Bool in Swift.
 */






//MARK: - LOOPS   https://cdn.programiz.com/sites/tutorial2program/files/for-loop.jpg - Good image for loops


print("\n-------- LOOPS ---------")

/*
 Okay this and Arrays are the hardest to understand in the fundamentals of code.
 
 Loops are a way that we execute the same section of code a certain amount of times.
 
 They are setup as so:
 */

print("__WHILE LOOP__")
var index = 0
while index < 5 {
    print("This is the index: \(index)")
    index = index + 1
}


// So while loops came first, they are basically saying - do the code inside of the brackets {} until the conditional statement becomes false. So I'm adding 1 to the index variable on each time the loop runs (an iteration) until index is now longer less than 5 and then we move past that loop.

//You have to be very careful with while loops, if I had forgotten to add the "index = index + 1" then the loop would continue on forever until it used up all my memory and crashed my program.






print("__FOR LOOP__")
for myIndex in 0..<5 {
    print("This is the index: \(myIndex)")
}


//For loops are the loop you will use 90% of the time. They take all that boilerplate code (code that developers hate writing because it is clunky) and do it for us. 

//The important thing about for loops is that they behave the same way as while loops they just look different. In C they look like this:                                                                                                                                           for (var myIndex = 0; myIndex < 5; myIndex++){}

/*
 Swift is awesome because it let's us bypass a lot of the unnecessary clutter there.
 
 Let's go over each facet of a for loop:
 
 for        - tells the computer we are a bout to start a loop
 myIndex    - this is the variable that will hold the index of loop (how many times it has gone through the code)
 in         - this tells the computer to expect a conditional statement after it
 0..<5      - really weird looking, but this says I want to iterate the loop 5 times, 
              using the start index of 0 and ending up with a index of 4 (not 5 because of less than)

 Something to note here that I haven't explained yet, Swift (and most languages) are 0 index based. What the heck does that mean? Good question. If I wanted to count to the number 3 in real life I'd say, "1...2...3", but if I wanted to count to 3 in code I'd say, "0...1...2...3". 
 
 The reason they did this is it turns out being a lot easier to read code this way. If I do the for loop above, you can clearly read that I want to loop 5 times. If instead of 0, I put 1, then I would actually loop only 4 times because:
        1 < 5   - true
        2 < 5   - true
        3 < 5   - true
        4 < 5   - true
        5 < 5   - false         See, there are only 4 trues. The loop would break when the index = 5.
 
 So it's a huge readability thing, and programmers are incredibly lazy so we don't want to code 1..<=5, we want to leave the equal sign out because an extra equal sign is cumbersome, so instead we do 0..<5.
 
 
 Let's look at some practical uses for loops:

 */

for currentTime in 0..<24 {
    timeOfDay = currentTime
    determineIfLightSwitchIsOn()
}

// And bam. With 4 lines of code I was able to go through all 24 hours and determine when my light will be on. Loops are super powerful and useful for quickly scaling and utilizing your functions and code.







//Here is a common loop that a lot of people use to show the power of it

var fibonacci = 1
var prevFibonacci = 1
print("Starting fibonacci number is: \(fibonacci)")
for myIndex in 0..<20 {
    print("The next fibonacci number is: \(fibonacci)")
    var newFibonacci = fibonacci + prevFibonacci
    prevFibonacci = fibonacci
    fibonacci = newFibonacci
}


//And there you have it, a complex mathematical sequence created in really 6 lines of code.






print("---- YOUR LOOP CODE ----")
//Try out some of your own loops here, for example create a loop to determine if rabbits reproduce by a multplication factor of 2, how long would it take until there were over 9000 of them if you started with just 2.








print("---- ARRAY TEST -----")
/*
 
 MARK: - Arrays

 Arrays are everyone's least favorite. It's a fairly complicated idea to comprehend, but in the end it can be used effectively to make your life exponentially easier.
 
 
 The main concept with arrays is that they are "collections" that hold a series of variables.
 
 For instance, if I wanted to have code that stored the ages of my brothers, I could make 5 variables for their ages. Alternatively, I could make one array that would look like this = [34, 32, 31, 28, 25]
 
Breaking that down:
 
 [      - Arrays all start with this left square bracket
 #'s    - The numbers inside are the values we are saving, think of them individually as their own variables
 ,      - You have to separate each variable by a comma (like how you put each variable on a new line)
 ]      - Arrays all end with the right square bracket
 
 
 I like to think of Arrays as a cargo train. The train has many carts that hold similar materials. Each cart is essentially a variable (storage of a value), and the train as a whole would be the array.
 
    - The train has a engine "[" and a caboose "]"  (they do not count in the total # of items in our array)
    - The train has cargo carts, each cart would be one of the #'s in the example above.
    - You can walk along the train and see each cart sequentially (you can navigate the array the same way)
    - The train has a fixed number of carts, but it is possible to add a cart on to the end at any time.
    - You can count those carts at any point.
    - You can access a single cart immediately if you know what # cart it is of the train
    - You could also sequentially walk down the train until you found the cart with the value you want.
    - You can start at the beginning or end of the train, because those are always clearly defined.
 
 If you think of it in those ways, then the array can make a little more sense through visualization.
 
 Let's go through an example, considering the array we make like a train:

 */


var trainArray: [String] = [] // this is an empty array
print("Cart count: \(trainArray.count)") // # of carts on our train. Rememeber, we don't count the engine/caboose

trainArray.append("coal") //.append is the way we add a new variable to the array
trainArray.append("iron")
trainArray.append("coal") // note that every time you append, you are adding the element to the end of the array
print(trainArray)

//no say I wanted to change the value of the first cart on my train (1st variable of my array)
trainArray[0] = "copper" //you change a single variable by referencing it's index (the # it is in the array)
trainArray[1] = "coal"
trainArray[2] = "iron"  //make sure to note that arrays are zero indexed!!
print(trainArray)


// okay, but let's make adding carts more efficient - loops!

for myIndex in 0..<25 {
    if myIndex < 5 {
        trainArray.append("gold")
    }
    else if myIndex >= 5 && myIndex < 10 {
        trainArray.append("coal")
    }
    else if myIndex >= 10 && myIndex < 15 {
        trainArray.append("copper")
    }
    else if myIndex >= 15 && myIndex < 20 {
        trainArray.append("iron")
    }
    else {
        trainArray.append("bronze")
    }
}

print(trainArray)

// Sweet, so now we an array with plenty of values. Now what if I wanted to count how much of each type of material I have? Let's do that with a loop

var totalCoal = 0
var totalIron = 0
var totalCopper = 0
var totalGold = 0
var totalBronze = 0


//So here we are going to use a FOR-EACH loop, which basically just loops through each variable in array. It's a lot faster than specifying each index once you've already got the array filled
for cart in trainArray {
    if cart == "coal" {
        totalCoal = totalCoal + 1
    }
    else if cart == "iron" {
        totalIron = totalIron + 1
    }
    else if cart == "copper" {
        totalCopper = totalCopper + 1
    }
    else if cart == "gold" {
        totalGold = totalGold + 1
    }
    else if cart == "bronze" {
        totalBronze = totalBronze + 1
    }
}

print("Coal: \(totalCoal)")
print("Iron: \(totalIron)")
print("Copper: \(totalCopper)")
print("Gold: \(totalGold)")
print("Bronze: \(totalBronze)")


// And right there you have adding to an array and accessing the values from the same array





