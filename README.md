## ruLint
simple ruby linter with basic functionalities that will look only
for naming conventions for variables, classes and modules

[![Status](https://img.shields.io/badge/status-active-success.svg)](https://github.com/mohamedSabry0/ruLint)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/umohamedSabry0/ruLint/issues)
[![GitHub2 Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/mohamedSabry0/ruLint/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

## Getting Started

### The Followed Style Guide
- [Guide](https://rubystyle.guide/#camelcase-classes)
- Please refer to this guide for any concerns about the followed rules for this linter

### Live Demo
- [Demo](https://repl.it/@mohammadSabri/ruLint)
- to run online type `bin/ruLint` in the interactive shell
- to run tests online type `rspec` in the interactive shell

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Text Editor (VSCode is suggested.)
- [Ruby](https://ruby-doc.org/downloads/)

### Setup

- Install [git](https://git-scm.com/downloads)
- Open Terminal
- Change directory to folder to download repository
- Use `cd <file-path>`
- Run `git clone https://github.com/mohamedSabry0/ruLint.git`
- Install [Ruby](https://ruby-doc.org/downloads/)
- `cd ruLint`

#### Testing
- Install `gem install rspec`
- Initialize `rspec --init`
- Run `rspec`


### Use Instruction
#### using the example
- copy the code example provided below in [Example Input File section](#example-input-file) and add it to a new ruby file in a directory
- in terminal `cd` to that `dir` then apply the following steps:
- run `bin/ruLint` command
**or**
- give it file paths as arguments to run on specific ones e.g:
`bin/ruLint file1 dir/file2.rb`

#### a bit shorter running command
- if you have the following directory in your PATH 
`/usr/local/bin/`

- you can run this in your terminal from the project directory
`ln -s $PWD/bin/ruLint /usr/local/bin/`

- then simply use command `ruLint` instead of `bin/ruLint`

### Example Input File
```
class bad_example
end

class bad; end

class Bad_Example
end

class GoodExample
    var = 1
    sec += 1
end

class Mu_Foo; end

class GOODNAME #passed rubocop because abbreviations like HTML should pass
end

class badname; end
class GoodName; end
```

### Example Output
```
naming_warning @(example.rb, line#2):
'bad_example' is not a good class name. Follow CamelCase naming convention

naming_warning @(example.rb, line#5):
'bad' is not a good class name. Follow CamelCase naming convention

naming_warning @(example.rb, line#7):
'Bad_Example' is not a good class name. Follow CamelCase naming convention

naming_warning @(example.rb, line#15):
'Mu_Foo' is not a good class name. Follow CamelCase naming convention

naming_warning @(example.rb, line#20):
'badname' is not a good class name. Follow CamelCase naming convention

```

## Built With

- Ruby

### Author

👤 **Mohamed Sabry**

- Github: [@mohamedSabry0](https://github.com/mohamedSabry0)
- Twitter: [@mohsmh0](https://twitter.com/mohsmh0)
- Linkedin: [Mohamed Sabry](https://www.linkedin.com/in/mohamed-sabry-1322b1105/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome! Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description to the development branch of the original project for a review


## Show your support

Give a ⭐️ if you like this project!
