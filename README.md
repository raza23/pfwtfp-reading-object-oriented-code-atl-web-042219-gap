# Reading Complex Code

“Meaning lies as much
in the mind of the reader
as in the Haiku.”
― Douglas R. Hofstadter

## Learning Goals

- Identify methods for interpreting unfamiliar code
- Identify inputs of a function
- Identify outputs of a function
- Distinguish separate actions within an existing function
- Infer relationships between functions

## Introduction

Being able to approach and understand code that we are unfamiliar with is a
critical programming skill. Imagine you've landed a job as an engineer. You've
joined a team thats already working on a project and your task is to add a
feature. You've cloned the project to your local machine and open it up... to
find thousands of lines of code in dozens of files. Where do you begin? It's
like a giant knot that you must try and unravel. Someone else made it and
they're not always around to help explain. It's easy to get overwhelmed!

This problem is common. Even code that we've written _ourselves_ can seem
foreign if enough time has passed, making it difficult to jump back into old
projects. By applying a process, however, we can quickly push past the point
where we might get overwhelmed, separate out code that we understand and drill down on code that we is unclear.

In this lesson, we will show code examples and discuss a process for approaching and interpreting them.

### Identify methods for interpreting unfamiliar code

This process aims to take a blob of unfamiliar code and systematically break it
down into discrete, understandable chunks.

# TO DO - Incorporate Flatiron Process language from Week 1

Process something like :

1.  Identify inputs - what data type is it? how many inputs? how are they related?
2.  Identify outputs - is it clear what the output of the method is supposed to be? can you test it with a few of your own inputs and predict what the output will be? Maybe there is no output at all! Why? The purpose of a method can often be determined by what it returns
3.  Separate out distinct 'actions' within the function
4.  Distinguish what actions within the function are clear and what are opaque.

    **Clear** actions are sections within a function that are well understood. Examples: Variable assignment, simple data manipulation (like Strings), logs, prints, etc.. things that have an obvious purpose.

    **Opaque** actions are sections where their purpose and is not immediately understood. Examples include calls to other methods, where the specific code is written somewhere else; 'built in' Ruby class methods or gem methods we are unfamiliar with; code blocks like loops/enumerables

5.  Walk through the code linearly until you reach the first opaque portion. Use comments to keep track of how inputs are being used. Keep an idea of the inputs in your mind - if you can't clearly see how those inputs are being used or manipulated in the code, you've likely reached an opaque portion.

6.  Apply steps 1-6 on any opaque code you encounter until you've reached the end of the method you started with

    - For calls to other methods in the app, this would mean finding the method in question and following the same process until the code is better understood. This may mean going deeper into further nested method calls.
    - For method calls on gems or built in Ruby classes, the code isn't available to read, but we can still identify inputs and outputs. We can also often fall back on documentation and Google for these to better understand them
    - For blocks of code - identify I/Os of the block (i.e. loops will maybe have an index and/or a set of values from an array). Walk through code with inputs in mind to see how they are manipulated.

When you've reached the end of any section, following these steps you should be able summarize the purpose of the method and how the inputs are used to get the desired output.

Let's look at each step while applying this process to an example to see how it works.

### Applying the Process to a Simple Function

- Use process on a function with a simple "implementation" that may be obvious to most students
- Introduce example snippet

#### Identify Inputs

- Confirm inputs and ask questions

#### Identify Outputs

- Confirm outputs and ask questions

#### Separate Out Distinct Actions Within the Function

- Space function in snippet to make distinct actions clear

#### Distinguish Clear and Opaque Actions

- Identify all clear actions at first glance - use variable assignments, logs, string manipulation

#### Walk Through Code

- Start by using dummy input values and adding them to snippet in a comment

- Get through initial 'clear' actions and add comment at end displaying how dummy inputs may have changed

#### Apply Steps to Opaque Code

- Reapply process to portion of function that is 'opaque' (a block of code or enumerable)

### Applying the Process to a Complex Function

- Reinforce concept with more complicated example

## Infer Relationships Between Functions

Discuss how this process works over many related functions using a procedural example

## Conclusion

Emphasize importance of reading to become a better writer
Reiterate process

## Resources
