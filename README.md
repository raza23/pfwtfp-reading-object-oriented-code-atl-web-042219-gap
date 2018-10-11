# Reading Object Oriented Code

## Learning Goals

- Recognize how process for unfamiliar code can be used with classes in Ruby
- Apply process to example class

## Introduction

- Discuss how process can be used with entire Ruby classes with many methods
- Point out some changes (classes input is in `initialize`, output based on method)

## Discuss Process for Ruby Classes

- Identify inputs of a class (initialize)
- Identify outputs of a class (method specific, won't apply at a class level)
- Added step:
  - Choose the which method to walk through first. If not clear, start with the largest
- Separate actions within an existing method
- Distinguish clear vs opaque portions
- Walk through method
- Drill down and repeat process on any opaque portions or helper methods
- Summarize method purpose
- Infer relationships between methods

## Demonstrate Process with Example

- Use code snippet example of Ruby class with `initialize` and class and instance methods

#### Identify inputs of a class

- First the class's initialize

#### Identify outputs of a class (method specific)

- Won't really apply to the class level

#### Choose Which Method to Walk Through

- Look for a method that uses class variables or other actions from the initialize method
- If not clear, start with the largest method in the class
- Restart steps for the specific method

#### Identify Inputs of the Method

- Inputs may not be present in a method
  Questions To Ask Here:
  what data type is it? how many inputs? how are they related?

#### Identify Outputs of the Method

Questions To Ask Here:

Is it clear what the output of the method is supposed to be? can you test it with a few of your own inputs and predict what the output will be? Maybe there is no output at all! Why? The purpose of a method can often be determined by what it returns

#### Separate Actions within an Existing Method

#### Distinguish Clear vs Opaque Portions

- Opaque portions now include helper and private methods in Ruby classes

#### Walk Through Method

- Use dummy data and comments to step through method until the first opaque portion

#### Repeat Process on Opaque Portions

- Repeat steps in brief for a private method and an unfamiliar block of code
- Continue to walk through code after

#### Summarize Method Purpose

#### Infer relationships between methods

- Take time to distinguish which methods you've now walked through and how they relate

## Conclusion

- Identify any methods you have not walk through
- Repeat process until all methods are understood

## Resources
