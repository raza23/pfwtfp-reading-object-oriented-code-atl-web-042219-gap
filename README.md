# Reading Complex Object Oriented Code

## Learning Goals

- Identify methods for interpreting unfamiliar object oriented code
- Identify the inputs and outputs of a `Class`
- Distinguish relationships between methods within an existing `Class`

## Introduction

In this lesson, we're going to walk through a process for understanding
object-oriented code. Before we do, though, just to review: what is the
difference between procedural and object-oriented programming again?

> In procedural programming, we have data and we have the procedures or
> instructions for operating on that data. In procedural programming, data and
> procedures, or instructions, are two separate things. In object-oriented
> programming, we have units of code that contain both data and instructions,
> such that an "object" operates on its own data structure.

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

This works just fine for procedural code, but can we use it on object-oriented
code as well? Yes! With a few notes. Since we've already gone through
the process in detail, this time, we'll mainly focus on some of the differences
to the process when approaching object-oriented code.

In `lib`, there is an object-oriented game. Your task is to follow the process
above to gain an understanding of the classes and their relationships. Then,
using what've you've learned, fill in the methods founds in `answers.rb`.

## Identify Where to Start

When trying to understand procedural code, figuring out where to start takes a
few quick steps:

A. Find a method in which other methods are called.
B. Check to see if this method is called in any _other_ method
C. If true, repeat step B for the new method. If false, start process

In object-oriented Ruby, the steps are slightly different. Instead of
stand-alone methods, related methods and data are organized together. Its
possible not all methods are relevant. Given a group of related `Class`es,
however, its likely that there is some point in the code where primary actions
_begin_. One key indicators is that `Class`es often setup of instance and/or
class variables when first initialized. So to modify our steps, even starting
from a random `Class`:

A. Find a method within the `Class` in which other instance variables are setup. Often, this is `initialize`.
B. Check to see if this `Class` is called in any _other_ `Class`es
C. If true, repeat steps A and B for the new `Class`. If false, start process

Many `Class`es in object-oriented programming serve a singular purpose - they
may just be a way to store some specific piece data along with a few methods for
accessing and changing that data. These are often secondary `Class`es -
primarily used in other `Class`es and are typically easy to spot. Whatever
'parent' `Class` handles the application logic that utilizes these secondary
`Class`es is likely the best place to start.

## Identify Inputs and Outputs

In code following standard Ruby `Class` syntax inputs will most often be found
in the `initialize` method. Inputs, however, can be passed in to any method:

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

Instance and class variables, while not explicitly passed in as an argument, can
often be considered inputs in our process - unless they are being initialized,
methods using these values are accessing and possibly changing existing values.

Equally, instance and class variables are often part of the 'output', the result
of methods. In `change_name`, for instance, `@first_name` and `@last_name` are
both modified, then a second method `full_name` is returned. The `full_name`
uses the instance variables we _just_ set, returning a String of the two
variables combined.

## Instructions

Apply the process for understanding complex code to the `Class`es in `lib`,
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
