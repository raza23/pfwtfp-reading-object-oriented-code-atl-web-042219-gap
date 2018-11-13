# Reading Complex Object Oriented Code

## Learning Goals

- Identify techniques for interpreting unfamiliar Object-Oriented code
- Identify the inputs and outputs of a `class`
- Distinguish relationships between methods within an existing `class`

## Introduction

In this lesson, we're going to walk through a process for understanding
Object-Oriented code. Before we do, though, just to review: what is the
difference between procedural and Object-Oriented programming again?

> In procedural programming, we have data and we have the procedures or
> instructions for operating on that data. In procedural programming, data and
> procedures, or instructions, are two separate things. Data will be passed to
> a function, method, or _procedure_, changed, and then handed off to another
> procedure until done. In Object-Oriented programming, we have units of code
> that contain _both_ data and instructions, such that an "object" operates on
> its own data structure. It will be prompted to do such an update by
> collaborating with another object. _Instances_ of _classes_ will interact
> upon each other (and themselves) until the code is done.

In our previous lesson on reading code, we looked at code for a simple number
guessing game and followed a process to turn the unknown into the known. The
process, summarized, was:

1.  Identify where to start
2.  Identify inputs and outputs
3.  Distinguish and separate which parts of the code are **clear** and which are
    **opaque**
4.  From your starting point, walk through the code linearly until your reach
    opaque code.
5.  Repeat steps 2-4 on the opaque code
6.  Continue through all opaque code until the end

This works just fine for procedural code, but can we use it on Object-Oriented
code as well? Yes! With a few modifications.

## Identify Where to Start

When trying to understand procedural code, figuring out where to start takes a
few quick steps:

A. Find a method which calls other methods  
B. Check to see if this method is called in any _other_ method   
C. If true, repeat step B for the new method. If false, start process  

The best place to start when trying to get a handle on Object-Oriented code is
to find a place where an _instance_ has a method called. When we see
`current_user.full_name` we can see that the _instance_, `current_user` is
having its `full_name` method called.

Next, we want to find where that _instance_ was created. We can use our
editor's find previous of `current_user` to find the place where `current_user`
was assigned or "instantiated." We should track back to find: `current_user =
Person.new("Xena", "Warrior-Princess")`. Because _instances_ of `class`es are
created with initial data that they manage ("instance data") we need to know
what the _instance_ was "born" knowing. It's sometimes handy to write this down
on a notepad or sticky note.

Now let's find the `class`'s definition of the method e.g. `full_name`

## Identify Inputs and Outputs

In code following, standard Ruby `class` syntax inputs will most often be found
in the `initialize` method. Inputs, however, can _also_ be passed in to any
method:

```ruby
class Person

  @@people = []

  # Used to create a new instance of Person with default values each the argument
  def initialize(first_name = "John", last_name = "Doe")
    @first_name = first_name
    @last_name = last_name
    @@people << self
  end

  # A class method for searching names of all instances of Person with a String argument
  def self.find_by_name(search_string)
    @@people.select { |person| person.full_name.match(search_string) }
  end

  # An instance method with two String arguments
  def change_name(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    full_name
  end

  # An instance method with no arguments, but includes instance variables
  def full_name
    @first_name + " " + @last_name
  end
end
```

Instance and class variables, while not explicitly passed in as an argument to the method, can
often be considered inputs in our process. Methods in the class have "free"
access to the instance variables, so it's useful to treat them as "invisible"
inputs.

Equally, instance and class variables are often part of the 'output', the result
of methods. In `change_name`, for instance, `@first_name` and `@last_name` are
both modified, then a second method `full_name` is returned. The `full_name`
uses the instance variables we _just_ set, returning a String of the two
variables combined.

## What About Class Methods

Class methods are a snap. Instead of having to look for how they were
initialized, we can transfer our process from working with procedural code.
Class methods most often don't have any pre-existing state, or at most only a
single class variable (`@@like_this`). All you have to do is find the class
method's definition in the `class` and your procedural process will work.

## Instructions

Apply the process for understanding complex code to the `class`es in `lib`,
then provide return values for the methods in `answers.rb`. Run `learn` to
confirm your answers.

## Conclusion

Whether your interest is joining a team of developers, contributing to the open
source community, or even just building your own applications, being able to
read and understand code is a necessary skill. We are, in effect, teaching our
brains a new language. The benefits are huge, but it can be intimidating.

Applying a process, approaching code in a systematic way, provides a way for us
to build a mental model of an application. And once you have a clear idea of how
something works, you can change it.

## Resources

-[Lesson on Procedural vs Object Oriented Ruby][pvoo]

[pvoo]: https://learn.co/lessons/procedural-vs-oo-ruby
[record separator characters]: https://ruby-doc.org/core-2.2.0/String.html#method-i-chomp
