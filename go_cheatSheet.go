// Every Go program starts with a package declaration which provides a way for
// use to reuse code
package main

// import allows use to use code from other packages
// The format package provides formatting for input and output
import "fmt"

// A comment

/*
Multiline Comment
*/

// Functions start with func and surround the code with { }
// main is the function that is executed when you execute your program

func main() {

	// Println is a function in the fmt package that outputs a string, which
	// is surrounded by double quotes and a newline to the screen
	
	fmt.Println("Hello World")
	
	// You can get a description of a function by typing godoc fmt Println
	// for example in the terminal
	
	// You execute Go programs like this in the terminal go run herewego.go
	
	// Variables are statically typed, which means their type can't change
	// Variable names must start with a letter and may contain letters, numbers
	// or the _
	
	// An int is a positive or negative number without decimals
	// Versions 
	// uint8 : unsigned  8-bit integers (0 to 255)
	// uint16 : unsigned 16-bit integers (0 to 65535)
	// uint32 : unsigned 32-bit integers (0 to 4294967295)
	// uint64 : unsigned 64-bit integers (0 to 18446744073709551615)
	// int8 : signed  8-bit integers (-128 to 127)
	// int16 : signed 16-bit integers (-32768 to 32767)
	// int32 : signed 32-bit integers (-2147483648 to 2147483647)
	// int64 : signed 64-bit integers (-9223372036854775808 to 
	// 9223372036854775807)
	
	var age int64 = 40
	
	// A float is a number with decimals
	// Versions : float32, float64
	
	var favNum float64 = 1.61803398875
	
	// You don't need to define the data type, nor do you need a semicolon
	// but you can use them
	
	randNum := 1;
	fmt.Println(randNum);
	
	// You can't however assign a non-compatible type later
	
	// randNum = "Hello"
	
	// You can use variables in Println (Space is automatically added)
	
	fmt.Println(age, " ", favNum)
	
	var numOne = 1.000
	var num99 = .999
	
	// You can perform arithmetic in Println (Note that floats aren't accurate)
	
	fmt.Println(numOne - num99)
	
	// Arithmetic Operators : +, -, *, /, %
	
	fmt.Println("6 + 4 =", 6 + 4)
	fmt.Println("6 - 4 =", 6 - 4)
	fmt.Println("6 * 4 =", 6 * 4)
	fmt.Println("6 / 4 =", 6 / 4)
	fmt.Println("6 % 4 =", 6 % 4)

}


package main

import "fmt"

func main() {

// A constant is a variable with a value that can't be changed
	
	const pi float64 = 3.14159265359
	
	// You can declare multiple variables like this
	
	var (
		varA = 2
		varB = 3
	)
	
	fmt.Println(varA, varB)
	
	// Strings are a series of characters between " or `
	
	var myName string = "Derek Banas"
	
	// Get string length
	
	fmt.Println(len(myName))
	
	// You can combine strings with +
	
	fmt.Println(myName + " is a robot")
	
	// Strings between " can contain escape symbols like \n for newline 
	
	fmt.Println("I like \n \n")
	
	fmt.Println("Newlines")
	
	// Booleans can be either true or false
	
	var isOver40 bool = true
	
	fmt.Println(isOver40)
	
	// Printf is used for format printing (%f is for floats)
	
	fmt.Printf("%f \n", pi)
	
	// You can also define the decimal precision of a float
	
	fmt.Printf("%.3f \n", pi)
	
	// %T prints the data type
	
	fmt.Printf("%T \n", pi)
	
	// %t prints booleans
	
	fmt.Printf("%t \n", isOver40)
	
	// %d is used for integers
	
	fmt.Printf("%d \n", 100)
	
	// %b prints in binary
	
	fmt.Printf("%b \n", 100)
	
	// %c prints the character associated with a keycode
	
	fmt.Printf("%c \n", 44)
	
	// %x prints in hexcode
	
	fmt.Printf("%x \n", 17)
	
	// %e prints in scientific notation
	
	fmt.Printf("%e \n", pi)

}



package main

import "fmt"

func main() {

// A constant is a variable with a value that can't be changed
	
	const pi float64 = 3.14159265359
	
	// You can declare multiple variables like this
	
	var (
		varA = 2
		varB = 3
	)
	
	fmt.Println(varA, varB)
	
	// Strings are a series of characters between " or `
	
	var myName string = "Derek Banas"
	
	// Get string length
	
	fmt.Println(len(myName))
	
	// You can combine strings with +
	
	fmt.Println(myName + " is a robot")
	
	// Strings between " can contain escape symbols like \n for newline 
	
	fmt.Println("I like \n \n")
	
	fmt.Println("Newlines")
	
	// Booleans can be either true or false
	
	var isOver40 bool = true
	
	fmt.Println(isOver40)
	
	// Printf is used for format printing (%f is for floats)
	
	fmt.Printf("%f \n", pi)
	
	// You can also define the decimal precision of a float
	
	fmt.Printf("%.3f \n", pi)
	
	// %T prints the data type
	
	fmt.Printf("%T \n", pi)
	
	// %t prints booleans
	
	fmt.Printf("%t \n", isOver40)
	
	// %d is used for integers
	
	fmt.Printf("%d \n", 100)
	
	// %b prints in binary
	
	fmt.Printf("%b \n", 100)
	
	// %c prints the character associated with a keycode
	
	fmt.Printf("%c \n", 44)
	
	// %x prints in hexcode
	
	fmt.Printf("%x \n", 17)
	
	// %e prints in scientific notation
	
	fmt.Printf("%e \n", pi)

}

package main

import "fmt"

func main() {

// A constant is a variable with a value that can't be changed
	
	const pi float64 = 3.14159265359
	
	// You can declare multiple variables like this
	
	var (
		varA = 2
		varB = 3
	)
	
	fmt.Println(varA, varB)
	
	// Strings are a series of characters between " or `
	
	var myName string = "Derek Banas"
	
	// Get string length
	
	fmt.Println(len(myName))
	
	// You can combine strings with +
	
	fmt.Println(myName + " is a robot")
	
	// Strings between " can contain escape symbols like \n for newline 
	
	fmt.Println("I like \n \n")
	
	fmt.Println("Newlines")
	
	// Booleans can be either true or false
	
	var isOver40 bool = true
	
	fmt.Println(isOver40)
	
	// Printf is used for format printing (%f is for floats)
	
	fmt.Printf("%f \n", pi)
	
	// You can also define the decimal precision of a float
	
	fmt.Printf("%.3f \n", pi)
	
	// %T prints the data type
	
	fmt.Printf("%T \n", pi)
	
	// %t prints booleans
	
	fmt.Printf("%t \n", isOver40)
	
	// %d is used for integers
	
	fmt.Printf("%d \n", 100)
	
	// %b prints in binary
	
	fmt.Printf("%b \n", 100)
	
	// %c prints the character associated with a keycode
	
	fmt.Printf("%c \n", 44)
	
	// %x prints in hexcode
	
	fmt.Printf("%x \n", 17)
	
	// %e prints in scientific notation
	
	fmt.Printf("%e \n", pi)

}



// Array slices

package main

import "fmt"

func main() {

	// An Array holds a fixed number of values of the same type
	
	var favNums2[5] float64
	
	favNums2[0] = 163
	favNums2[1] = 78557
	favNums2[2] = 691
	favNums2[3] = 3.141
	favNums2[4] = 1.618
	
	// You access the value by supplying the index number
	
	fmt.Println(favNums2[3])
	
	// Another way of initializing an array
	
	favNums3 := [5]float64 { 1, 2, 3, 4, 5 }
	
	// How to iterate through an array (Use _ if a value isn't used)
	
	for i, value := range favNums3 {
	
		fmt.Println(value, i)
	
	}
	
	// Slices are like arrays but you leave out the size
	
	numSlice := []int {5,4,3,2,1}
	
	// You can create a slice by defining the first index value to
	// take through the last
	
	numSlice2 := numSlice[3:5] // numSlice3 == [2,1]
	
	fmt.Println("numSlice2[0] =", numSlice2[0])
	
	// If you don't supply the first index it defaults to 0
	// If you don't supply the last index it defaults to max
	
	fmt.Println("numSlice[:2] =", numSlice[:2])
	
	fmt.Println("numSlice[2:] =", numSlice[2:])
	
	// You can also create an empty slice and define the data type,
	// length (receive value of 0), capacity (max size)
	
	numSlice3 := make([]int, 5, 10)
	
	// You can copy a slice to another
	
	copy(numSlice3, numSlice)
	
	fmt.Println(numSlice3[0])
	
	// Append values to the end of a slice
	
	numSlice3 = append(numSlice3, 0, -1)
	
	fmt.Println(numSlice3[6])

}


// Maps

package main

import "fmt"

func main() {

	// An Array holds a fixed number of values of the same type
	
	var favNums2[5] float64
	
	favNums2[0] = 163
	favNums2[1] = 78557
	favNums2[2] = 691
	favNums2[3] = 3.141
	favNums2[4] = 1.618
	
	// You access the value by supplying the index number
	
	fmt.Println(favNums2[3])
	
	// Another way of initializing an array
	
	favNums3 := [5]float64 { 1, 2, 3, 4, 5 }
	
	// How to iterate through an array (Use _ if a value isn't used)
	
	for i, value := range favNums3 {
	
		fmt.Println(value, i)
	
	}
	
	// Slices are like arrays but you leave out the size
	
	numSlice := []int {5,4,3,2,1}
	
	// You can create a slice by defining the first index value to
	// take through the last
	
	numSlice2 := numSlice[3:5] // numSlice3 == [2,1]
	
	fmt.Println("numSlice2[0] =", numSlice2[0])
	
	// If you don't supply the first index it defaults to 0
	// If you don't supply the last index it defaults to max
	
	fmt.Println("numSlice[:2] =", numSlice[:2])
	
	fmt.Println("numSlice[2:] =", numSlice[2:])
	
	// You can also create an empty slice and define the data type,
	// length (receive value of 0), capacity (max size)
	
	numSlice3 := make([]int, 5, 10)
	
	// You can copy a slice to another
	
	copy(numSlice3, numSlice)
	
	fmt.Println(numSlice3[0])
	
	// Append values to the end of a slice
	
	numSlice3 = append(numSlice3, 0, -1)
	
	fmt.Println(numSlice3[6])

}


// Maps in Maps

package main

import "fmt"

func main() {

	// We can store multiple items in a map as well
	
	superhero := map[string]map[string]string{
		"Superman": map[string]string{
			"realname":"Clark Kent",
			"city":"Metropolis",
		},
		
		"Batman": map[string]string{
			"realname":"Bruce Wayne",
			"city":"Gotham City",
		},
	}
	
	// We can output data where the key matches Superman
	
	if temp, hero := superhero["Superman"]; hero {
		fmt.Println(temp["realname"], temp["city"])
	}

}


// functions recursion defer and panic

package main

import "fmt"

func main() {

	listOfNums := []float64{1,2,3,4,5}
	
	fmt.Println("Sum :", addThemUp(listOfNums))
	
	// Get 2 values from a function
	
	num1, num2 := next2Values(5)
	
	fmt.Println(num1, num2)
	
	// Send an undefined number of values to a function (Variadic Function)
	
	fmt.Println(subtractThem(1,2,3,4,5))
	
	
	// You can create a function in a function. It has access to the
	// local variables of the containing function
	// A function like this with no local variables is a closure
	
	num3 := 3
	
	doubleNum := func() int {
	
		num3 *= 2
		return num3
	
	}
	
	fmt.Println(doubleNum());
	fmt.Println(doubleNum());
	
	// Calling a recursive function
	
	fmt.Println(factorial(3))
	
	// Defer executes a function after the inclosing function finishes
	// Defer can be used to keep functions together in a logical way
	// but at the same time execute one last as a clean up operation
	// Ex. Defer closing a file after we open it and perform operations
	
	defer printTwo()
	printOne()
	
	// Use recover() to catch a division by 0 error
	
	fmt.Println(safeDiv(3, 0))
	fmt.Println(safeDiv(3, 2))
	
	// We can catch our own errors and recover with panic & recover
	
	demPanic()

}

// Functions allow us to reuse code and provide structure
// func funcName(parametersPassed) returnType
// Functions don't have access to any variables aside from those
// passed into it
	
func addThemUp(numbers []float64) float64 {
	
	sum := 0.0
		
	for _, val := range numbers {
		
		// Shorthand for sum = sum + val
		sum += val
		
	}
		
	return sum
	
}

// Go functions can return multiple values

func next2Values(number int) (int, int){

	return number+1, number+2

}

// You can receive an undefined number of values with args ...int

func subtractThem(args ...int) int{

	finalValue := 0
	
	for _, value := range args {
		finalValue -= value
	}
	
	return finalValue

}

// Example of recursion : Function calls itself
// factorial(3)
// 3 * factorial(2) == 3 * 2
// 2 * factorial(1) == 2 * 1
// factorial(0) == 1

func factorial(num int) int { 
	if num == 0 { 
		return 1 
	} 
	return num * factorial(num - 1) 
}

// Used to demonstrate defer

func printOne(){ fmt.Println(1)}

func printTwo(){ fmt.Println(2)}

// If an error occurs we can catch the error with recover and allow 
// code to continue to execute

func safeDiv(num1, num2 int) int {
    defer func() {
        fmt.Println(recover())
    }()
    solution := num1 / num2
    return solution
}

// Demonstrate how to call panic and handle it with recover

func demPanic(){

	defer func() {
	
		// If I didn't print the message nothing would show
	
		fmt.Println(recover())
	
	}()
	panic("PANIC")

}

// Go pointers

package main

import "fmt"

func main() {

	listOfNums := []float64{1,2,3,4,5}
	
	fmt.Println("Sum :", addThemUp(listOfNums))
	
	// Get 2 values from a function
	
	num1, num2 := next2Values(5)
	
	fmt.Println(num1, num2)
	
	// Send an undefined number of values to a function (Variadic Function)
	
	fmt.Println(subtractThem(1,2,3,4,5))
	
	
	// You can create a function in a function. It has access to the
	// local variables of the containing function
	// A function like this with no local variables is a closure
	
	num3 := 3
	
	doubleNum := func() int {
	
		num3 *= 2
		return num3
	
	}
	
	fmt.Println(doubleNum());
	fmt.Println(doubleNum());
	
	// Calling a recursive function
	
	fmt.Println(factorial(3))
	
	// Defer executes a function after the inclosing function finishes
	// Defer can be used to keep functions together in a logical way
	// but at the same time execute one last as a clean up operation
	// Ex. Defer closing a file after we open it and perform operations
	
	defer printTwo()
	printOne()
	
	// Use recover() to catch a division by 0 error
	
	fmt.Println(safeDiv(3, 0))
	fmt.Println(safeDiv(3, 2))
	
	// We can catch our own errors and recover with panic & recover
	
	demPanic()

}

// Functions allow us to reuse code and provide structure
// func funcName(parametersPassed) returnType
// Functions don't have access to any variables aside from those
// passed into it
	
func addThemUp(numbers []float64) float64 {
	
	sum := 0.0
		
	for _, val := range numbers {
		
		// Shorthand for sum = sum + val
		sum += val
		
	}
		
	return sum
	
}

// Go functions can return multiple values

func next2Values(number int) (int, int){

	return number+1, number+2

}

// You can receive an undefined number of values with args ...int

func subtractThem(args ...int) int{

	finalValue := 0
	
	for _, value := range args {
		finalValue -= value
	}
	
	return finalValue

}

// Example of recursion : Function calls itself
// factorial(3)
// 3 * factorial(2) == 3 * 2
// 2 * factorial(1) == 2 * 1
// factorial(0) == 1

func factorial(num int) int { 
	if num == 0 { 
		return 1 
	} 
	return num * factorial(num - 1) 
}

// Used to demonstrate defer

func printOne(){ fmt.Println(1)}

func printTwo(){ fmt.Println(2)}

// If an error occurs we can catch the error with recover and allow 
// code to continue to execute

func safeDiv(num1, num2 int) int {
    defer func() {
        fmt.Println(recover())
    }()
    solution := num1 / num2
    return solution
}

// Demonstrate how to call panic and handle it with recover

func demPanic(){

	defer func() {
	
		// If I didn't print the message nothing would show
	
		fmt.Println(recover())
	
	}()
	panic("PANIC")

}


// structs

package main

import "fmt"

func main() {

	listOfNums := []float64{1,2,3,4,5}
	
	fmt.Println("Sum :", addThemUp(listOfNums))
	
	// Get 2 values from a function
	
	num1, num2 := next2Values(5)
	
	fmt.Println(num1, num2)
	
	// Send an undefined number of values to a function (Variadic Function)
	
	fmt.Println(subtractThem(1,2,3,4,5))
	
	
	// You can create a function in a function. It has access to the
	// local variables of the containing function
	// A function like this with no local variables is a closure
	
	num3 := 3
	
	doubleNum := func() int {
	
		num3 *= 2
		return num3
	
	}
	
	fmt.Println(doubleNum());
	fmt.Println(doubleNum());
	
	// Calling a recursive function
	
	fmt.Println(factorial(3))
	
	// Defer executes a function after the inclosing function finishes
	// Defer can be used to keep functions together in a logical way
	// but at the same time execute one last as a clean up operation
	// Ex. Defer closing a file after we open it and perform operations
	
	defer printTwo()
	printOne()
	
	// Use recover() to catch a division by 0 error
	
	fmt.Println(safeDiv(3, 0))
	fmt.Println(safeDiv(3, 2))
	
	// We can catch our own errors and recover with panic & recover
	
	demPanic()

}

// Functions allow us to reuse code and provide structure
// func funcName(parametersPassed) returnType
// Functions don't have access to any variables aside from those
// passed into it
	
func addThemUp(numbers []float64) float64 {
	
	sum := 0.0
		
	for _, val := range numbers {
		
		// Shorthand for sum = sum + val
		sum += val
		
	}
		
	return sum
	
}

// Go functions can return multiple values

func next2Values(number int) (int, int){

	return number+1, number+2

}

// You can receive an undefined number of values with args ...int

func subtractThem(args ...int) int{

	finalValue := 0
	
	for _, value := range args {
		finalValue -= value
	}
	
	return finalValue

}

// Example of recursion : Function calls itself
// factorial(3)
// 3 * factorial(2) == 3 * 2
// 2 * factorial(1) == 2 * 1
// factorial(0) == 1

func factorial(num int) int { 
	if num == 0 { 
		return 1 
	} 
	return num * factorial(num - 1) 
}

// Used to demonstrate defer

func printOne(){ fmt.Println(1)}

func printTwo(){ fmt.Println(2)}

// If an error occurs we can catch the error with recover and allow 
// code to continue to execute

func safeDiv(num1, num2 int) int {
    defer func() {
        fmt.Println(recover())
    }()
    solution := num1 / num2
    return solution
}

// Demonstrate how to call panic and handle it with recover

func demPanic(){

	defer func() {
	
		// If I didn't print the message nothing would show
	
		fmt.Println(recover())
	
	}()
	panic("PANIC")

}


// go structs and interfaces

package main

import "fmt"

func main() {

	listOfNums := []float64{1,2,3,4,5}
	
	fmt.Println("Sum :", addThemUp(listOfNums))
	
	// Get 2 values from a function
	
	num1, num2 := next2Values(5)
	
	fmt.Println(num1, num2)
	
	// Send an undefined number of values to a function (Variadic Function)
	
	fmt.Println(subtractThem(1,2,3,4,5))
	
	
	// You can create a function in a function. It has access to the
	// local variables of the containing function
	// A function like this with no local variables is a closure
	
	num3 := 3
	
	doubleNum := func() int {
	
		num3 *= 2
		return num3
	
	}
	
	fmt.Println(doubleNum());
	fmt.Println(doubleNum());
	
	// Calling a recursive function
	
	fmt.Println(factorial(3))
	
	// Defer executes a function after the inclosing function finishes
	// Defer can be used to keep functions together in a logical way
	// but at the same time execute one last as a clean up operation
	// Ex. Defer closing a file after we open it and perform operations
	
	defer printTwo()
	printOne()
	
	// Use recover() to catch a division by 0 error
	
	fmt.Println(safeDiv(3, 0))
	fmt.Println(safeDiv(3, 2))
	
	// We can catch our own errors and recover with panic & recover
	
	demPanic()

}

// Functions allow us to reuse code and provide structure
// func funcName(parametersPassed) returnType
// Functions don't have access to any variables aside from those
// passed into it
	
func addThemUp(numbers []float64) float64 {
	
	sum := 0.0
		
	for _, val := range numbers {
		
		// Shorthand for sum = sum + val
		sum += val
		
	}
		
	return sum
	
}

// Go functions can return multiple values

func next2Values(number int) (int, int){

	return number+1, number+2

}

// You can receive an undefined number of values with args ...int

func subtractThem(args ...int) int{

	finalValue := 0
	
	for _, value := range args {
		finalValue -= value
	}
	
	return finalValue

}

// Example of recursion : Function calls itself
// factorial(3)
// 3 * factorial(2) == 3 * 2
// 2 * factorial(1) == 2 * 1
// factorial(0) == 1

func factorial(num int) int { 
	if num == 0 { 
		return 1 
	} 
	return num * factorial(num - 1) 
}

// Used to demonstrate defer

func printOne(){ fmt.Println(1)}

func printTwo(){ fmt.Println(2)}

// If an error occurs we can catch the error with recover and allow 
// code to continue to execute

func safeDiv(num1, num2 int) int {
    defer func() {
        fmt.Println(recover())
    }()
    solution := num1 / num2
    return solution
}

// Demonstrate how to call panic and handle it with recover

func demPanic(){

	defer func() {
	
		// If I didn't print the message nothing would show
	
		fmt.Println(recover())
	
	}()
	panic("PANIC")

}



// strings file I/O exceptions

package main

import ("fmt"
"strings"
"sort"
"os"
"log"
"io/ioutil"
"strconv")

func main() {

	// STRING FUNCTIONS

	sampString := "Hello World"

	// Returns true if phrase exists in string
	fmt.Println(strings.Contains(sampString, "lo"))
	
	// Returns the index for the match
	fmt.Println(strings.Index(sampString, "lo"))
	
	// Returns the number of matches for the string
	fmt.Println(strings.Count(sampString, "l"))
	
	// Replaces the first letter with the second as many times as you define
	fmt.Println(strings.Replace(sampString, "l", "x", 3))
	
	// Return a list separating with the defined separator 
	csvString := "1,2,3,4,5,6"
	fmt.Println(strings.Split(csvString, ","))
	
	listOfLetters := []string{"c", "a", "b"}
	sort.Strings(listOfLetters)
	fmt.Println("Letters:", listOfLetters)
	
	// Returns a string using the values passed in separated with separator
	listOfNums := strings.Join([]string{"3", "2", "1"}, ", ");
	
	fmt.Println(listOfNums);
	
	// FILE I/O
	
	// Create a file
	file, err := os.Create("samp.txt") 
	
	// Output any errors
	if err != nil { 
		log.Fatal(err)
	} 
	
	// Write a string to the file
	file.WriteString("This is some random text")
	
	// Close the file
	file.Close() 
	
	// Try to open the file
	stream, err := ioutil.ReadFile("samp.txt")
	
	if err != nil {
		log.Fatal(err)
	}
	
	// Convert into a string
	readString := string(stream)
	
	fmt.Println(readString)
	
	// EXCEPTING INPUT
	
	fmt.Println("What is your name? ")
	
	var name string
	
	fmt.Scan(&name)
	
	fmt.Println("Hello", name)
	
	// CASTING
	
	randInt := 5
	randFloat := 10.5
	randString := "100"
	randString2 := "250.5"
	
	// Convert numbers types
	fmt.Println(float64(randInt))
	fmt.Println(int(randFloat))
	
	// Convert a string into an int
	newInt, _ := strconv.ParseInt(randString, 0, 64)
    fmt.Println(newInt)
    
    // Convert a string into a float
    newFloat, _ := strconv.ParseFloat(randString2, 64)
    fmt.Println(newFloat)

}

// http server

package main

import ("fmt"
"strings"
"sort"
"os"
"log"
"io/ioutil"
"strconv")

func main() {

	// STRING FUNCTIONS

	sampString := "Hello World"

	// Returns true if phrase exists in string
	fmt.Println(strings.Contains(sampString, "lo"))
	
	// Returns the index for the match
	fmt.Println(strings.Index(sampString, "lo"))
	
	// Returns the number of matches for the string
	fmt.Println(strings.Count(sampString, "l"))
	
	// Replaces the first letter with the second as many times as you define
	fmt.Println(strings.Replace(sampString, "l", "x", 3))
	
	// Return a list separating with the defined separator 
	csvString := "1,2,3,4,5,6"
	fmt.Println(strings.Split(csvString, ","))
	
	listOfLetters := []string{"c", "a", "b"}
	sort.Strings(listOfLetters)
	fmt.Println("Letters:", listOfLetters)
	
	// Returns a string using the values passed in separated with separator
	listOfNums := strings.Join([]string{"3", "2", "1"}, ", ");
	
	fmt.Println(listOfNums);
	
	// FILE I/O
	
	// Create a file
	file, err := os.Create("samp.txt") 
	
	// Output any errors
	if err != nil { 
		log.Fatal(err)
	} 
	
	// Write a string to the file
	file.WriteString("This is some random text")
	
	// Close the file
	file.Close() 
	
	// Try to open the file
	stream, err := ioutil.ReadFile("samp.txt")
	
	if err != nil {
		log.Fatal(err)
	}
	
	// Convert into a string
	readString := string(stream)
	
	fmt.Println(readString)
	
	// EXCEPTING INPUT
	
	fmt.Println("What is your name? ")
	
	var name string
	
	fmt.Scan(&name)
	
	fmt.Println("Hello", name)
	
	// CASTING
	
	randInt := 5
	randFloat := 10.5
	randString := "100"
	randString2 := "250.5"
	
	// Convert numbers types
	fmt.Println(float64(randInt))
	fmt.Println(int(randFloat))
	
	// Convert a string into an int
	newInt, _ := strconv.ParseInt(randString, 0, 64)
    fmt.Println(newInt)
    
    // Convert a string into a float
    newFloat, _ := strconv.ParseFloat(randString2, 64)
    fmt.Println(newFloat)

}

// go routines


package main

import "fmt"
import "time"

// GO ROUTINES

func count(id int) {
	for i := 0; i < 10; i++ { 
		fmt.Println(id, ":", i) 
		
		// Pause the function for 1 second to allow other functions to execute
		time.Sleep(time.Millisecond * 1000)
	} 
} 

func main() { 

	// A go routine is a function that runs in parallel with other functions
	// We define one by using go followed by the function name
	
	for i := 0; i < 10; i++ {
		go count(i) 
	}
	
	// Wait for the timer to make sure the go routine has time to 
	// finish otherwise the program would end before that happens
	time.Sleep(time.Millisecond * 11000)
}

// go channels

package main

import "fmt"
import "time"

// GO ROUTINES

func count(id int) {
	for i := 0; i < 10; i++ { 
		fmt.Println(id, ":", i) 
		
		// Pause the function for 1 second to allow other functions to execute
		time.Sleep(time.Millisecond * 1000)
	} 
} 

func main() { 

	// A go routine is a function that runs in parallel with other functions
	// We define one by using go followed by the function name
	
	for i := 0; i < 10; i++ {
		go count(i) 
	}
	
	// Wait for the timer to make sure the go routine has time to 
	// finish otherwise the program would end before that happens
	time.Sleep(time.Millisecond * 11000)
}

