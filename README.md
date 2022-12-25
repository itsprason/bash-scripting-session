# bash-scripting-session
Date: Fri Dec 23 2022

## Shell
A shell is a command-line interface that allows users to interact with the operating system. It provides a way to issue commands to the operating system, and to receive feedback from the system in the form of text output.

## Bash
Bash (Bourne-Again Shell) is a popular shell program that is widely used on Linux and Unix-like operating systems. Bash is an implementation of the shell concept and is often the default shell on these systems.

## Scripting
Bash scripting is the process of creating scripts that are interpreted and executed by the Bash shell. These scripts can contain a series of commands that are executed in sequence, as well as control structures such as loops and conditional statements that allow the script to make decisions and take different actions based on the input it receives.

Bash scripts are typically used to automate tasks, such as setting up a development environment, building and deploying software, or managing system resources. They can also be used to create simple command-line programs or utilities.

To write a Bash script, you will need to use a text editor to create a file that contains your commands. The first line of the script should specify the path to the Bash interpreter, which is usually /bin/bash. The script can then be executed by running the following command:

```

bash script.sh 

```
Bash scripts can also be made executable by changing the file permissions and adding a shebang line at the top of the script. The shebang line specifies the interpreter that should be used to execute the script, and it should be the first line of the script. For a Bash script, the shebang line would be:

```

 #!/bin/bash 

```

With this shebang line and the appropriate file permissions, the script can be executed directly, without the need to specify the interpreter:

```

./script.sh

```


## Hello World

Here is a simple "Hello, World!" program in Bash scripting:
```
#!/bin/bash

echo "Hello, World!"

```
To run this script, save it to a file with a .sh extension (e.g., hello.sh), make the script executable with the following command:
```
chmod +x hello.sh
```
And then run the script with:

```

./hello.sh

```

This will print the message "Hello, World!" to the console.

Note that the first line of the script (#!/bin/bash) is called the shebang line, and it specifies that the script should be executed by the Bash interpreter. The echo command is used to print a message to the console. The message is enclosed in quotes, which tells the shell to treat it as a string.

## Variable
In Bash scripting, variables are used to store and manipulate data. To create a variable, you simply need to assign a value to a name.

Here is an example of how to create a variable and assign a value to it:

```

# Assign the value "Hello" to a variable named "message"
message="Hello"

```

To access the value of a variable, you can use the $ symbol followed by the name of the variable. For example:

```

# Print the value of the "message" variable
echo $message

```

You can also perform operations on variables, such as concatenating strings or performing arithmetic operations. Here are some examples:

```

# Concatenate two strings and assign the result to a new variable
greeting="$message, World!"

# Perform arithmetic operations on variables
x=5
y=3
z=$((x + y))  # z will be 8

```

It is a good practice to use descriptive names for your variables to make your code more readable and easier to understand.

Variable names are case-sensitive in Bash, and they can contain letters, digits, and underscores. However, they cannot begin with a digit, and they should not contain any spaces or special characters.

## If Statement

In Bash scripting, the if statement is used to execute a block of code conditionally, based on the value of a boolean expression.

Here is the basic syntax for an if statement:

```

if [ condition ]
then
    # code to be executed if condition is true
fi

```

The condition is a boolean expression that is evaluated as either true or false. If the condition is true, the code in the then block will be executed. If the condition is false, the code in the then block will be skipped.

Here is an example of an if statement that checks if a variable is equal to a certain value:

```
# Assign the value "Hello" to a variable named "message"
message="Hello"

# Check if the value of "message" is "Hello"
if [ "$message" = "Hello" ]
then
    # Print a message if the condition is true
    echo "The message is Hello"
fi

```

You can also use the else keyword to specify a block of code that should be executed if the condition is false:

```

if [ condition ]
then
    # code to be executed if condition is true
else
    # code to be executed if condition is false
fi

```

In addition, you can use the elif (else-if) keyword to specify additional conditions that should be checked if the first condition is false:

```

if [ condition1 ]
then
    # code to be executed if condition1 is true
elif [ condition2 ]
then
    # code to be executed if condition1 is false and condition2 is true
else
    # code to be executed if both condition1 and condition2 are false
fi

```

It is important to enclose the condition in square brackets ([ and ]) and to use double quotes around variables to prevent syntax errors and unintended behavior.

## Exit Code

In Bash scripting, an exit code is a numeric value that is returned by a command or a script when it finishes executing. The exit code indicates the success or failure of the command or script, and it can be used to determine what action to take next.

The exit code is stored in the special variable $?, which can be accessed after the command or script has finished executing. A value of 0 usually indicates success, while a non-zero value indicates an error or failure.

Here is an example of how to check the exit code of a command:

```

# Run a command and store the exit code in a variable
sudo apt install twitter 
exit_code=$?

# Check the value of the exit code
if [ "$exit_code" -eq 0 ]
then
    # The command was successful
    echo "The command completed successfully."
else
    # The command failed
    echo "The command failed with exit code $exit_code."
fi

```

You can also use the exit command in a script to specify the exit code that should be returned when the script finishes executing. The exit command takes an integer argument that specifies the exit code.

Here is an example of how to use the exit command in a script:

```

# Perform some tasks

sudo apt install twitter 

# Check if an error occurred
if [ "$error" -eq 1 ]
then
    # Return a non-zero exit code if an error occurred
    exit 1
fi

# Return a zero exit code if no error occurred
exit 0

```

It is a good practice to check the exit code of commands and scripts in your Bash scripts, as it allows you to handle errors and take appropriate action.

## While Loop

In Bash scripting, the while loop is used to execute a block of code repeatedly until a certain condition is met. The while loop continues to execute as long as the condition is true.

Here is the basic syntax for a while loop:

```

while [ condition ]
do
    # code to be executed
done

```

The condition is a boolean expression that is evaluated before each iteration of the loop. If the condition is true, the code in the do block will be executed, and the loop will continue. If the condition is false, the loop will exit and control will be passed to the next line of code after the done keyword.

Here is an example of a while loop that counts from 1 to 10:

```

# Initialize a counter variable
i=1

# Loop until the counter reaches 11
while [ "$i" -le 10 ]
do
    # Print the counter
    echo $i

    # Increment the counter
    i=$((i + 1))
done

```

You can also use the break and continue statements to control the flow of a while loop. The break statement will exit the loop immediately, while the continue statement will skip the rest of the current iteration and move on to the next one.


## For Loop
In Bash scripting, the for loop is used to iterate over a sequence of values, such as a list of items or the output of a command.

```

Here is the basic syntax for a for loop:

for variable in list
do
    # code to be executed
done

```

The variable is a placeholder for the current value in the list, which can be a sequence of values separated by spaces, or the output of a command. The do block will be executed once for each value in the list, with the variable being set to the current value.

Here is an example of a for loop that iterates over a list of numbers:

```

# Loop over the numbers 1 to 10

for i in 1 2 3 4 5 6 7 8 9 10
do
    # Print the current number
    echo $i
done

#OR

for i in {1,10}
do
    # Print the current number
    echo $i
done

```

You can also use the for loop to iterate over the output of a command. For example, the following code will print the names of all the files in the current directory:

```

# Loop over the names of the files in the current directory
for file in $(ls)
do
    # Print the current file name
    echo $file
done

```

You can use the break and continue statements to control the flow of a for loop, just like in a while loop. The break statement will exit the loop immediately, while the continue statement will skip the rest of the current iteration and move on to the next one.

## Data Streams
In Bash scripting, data streams are used to redirect the input and output of commands and scripts. There are three standard data streams:

    Standard input (stdin): This is the stream that is used to provide input to a command or script. By default, standard input comes from the keyboard, but it can also be redirected from a file or another command.

    Standard output (stdout): This is the stream that is used to display the output of a command or script. By default, standard output is displayed on the console, but it can also be redirected to a file or another command.

    Standard error (stderr): This is the stream that is used to display error messages or other diagnostic information from a command or script. By default, standard error is displayed on the console, but it can also be redirected to a file or another command.

You can use the > operator to redirect the standard output of a command or script to a file. For example:

```
# Redirect the output of the "ls" command to a file named "files.txt"
ls > files.txt

```
You can use the 2> operator to redirect the standard error of a command or script to a file. For example:

```

# Redirect the error output of the "ls" command to a file named "errors.txt"
ls /non/existent/directory 2> errors.txt

```

You can use the &> operator to redirect both the standard output and the standard error of a command or script to a file.

## Function
In Bash scripting, a function is a block of code that can be defined and called by a name. Functions are useful for organizing and reusing code, and they can make your scripts more readable and maintainable.

To define a function, you use the function keyword followed by the name of the function and a pair of parentheses. The code for the function is enclosed in curly braces ({ and }).

Here is an example of a simple function that prints a message:

```

# Define the "hello" function
function hello() {
    # Print a message
    echo "Hello, World!"
}

# Call the "hello" function
hello

```

You can also define a function using the function keyword and the () syntax:

```

# Define the "hello" function
function hello() {
    # Print a message
    echo "Hello, World!"
}

# Call the "hello" function
hello

```

You can pass arguments to a function by specifying them in the parentheses when you call the function. The arguments are separated by spaces and are accessed within the function using the $1, $2, etc. variables.

Here is an example of a function that takes two arguments and prints a message:

```

# Define the "greet" function
function greet() {
    # Print a message using the arguments
    echo "Hello, $1! How are you, $2?"
}

# Call the "greet" function with two arguments
greet John Mary

```

## Case Statement
The case statement is used to perform different actions based on the value of a variable or an expression. It is similar to the switch statement in other programming languages.

Here is the basic syntax for a case statement:

```
case expression in
pattern1)
    # code to be executed if expression matches pattern1
    ;;
pattern2)
    # code to be executed if expression matches pattern2
    ;;
*)
    # code to be executed if expression does not match any of the patterns
    ;;
esac

```

The expression is the value that is being tested, and the pattern is a pattern that is matched against the expression. The ;; keyword indicates the end of a pattern and the code block that goes with it. The * pattern is a catch-all pattern that matches any value.

Here is an example of a case statement that prints a message based on the value of a variable:

```

# Assign the value "apple" to a variable named "fruit"
fruit="apple"

# Use a case statement to print a message based on the value of "fruit"
case "$fruit" in
apple)
    echo "The fruit is an apple."
    ;;
banana)
    echo "The fruit is a banana."
    ;;
orange)
    echo "The fruit is an orange."
    ;;
*)
    echo "The fruit is something else."
    ;;
esac

```

It is important to enclose the expression and the patterns in quotes to prevent syntax errors and unintended behavior.

## Scheduling Script with at Command
The at command is a utility that can be used to schedule a script or command to be executed at a specific time or date. The at command reads a script or command from standard input or from a file and executes it at the specified time.

To schedule a script or command with the at command, you need to provide the time and date when it should be executed. You can use the now + syntax to specify a time relative to the current time, or you can use the hh:mm syntax to specify an absolute time. You can also use the mmddhhmm syntax to specify a date and time.

Here are some examples of how to use the at command:

    To execute a command at the current time: echo "command" | at now
    To execute a command in 5 minutes: echo "command" | at now + 5 minutes
    To execute a command at 8:00 AM tomorrow: echo "command" | at 8:00 AM tomorrow
    To execute a command at 5:00 PM on December 31: echo "command" | at 17:00 12/31

You can also specify the time and date in a file and pass the file to the at command using the -f option. For example:

```

# Create a file with the command and the time and date when it should be executed
echo "command" > script.txt
echo "at 8:00 AM tomorrow" >> script.txt

# Schedule the script using the "at" command
at 8:00 -f script.txt

```
It is important to note that the at command is typically only available on Unix-like systems and may not be available on all systems. To schedule tasks on a Windows system, you can use the schtasks command or the Task Scheduler


