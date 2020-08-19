## ruLint
simple ruby linter with basic functionalities that will look only
for naming conventions for variables, classes and modules

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)](https://github.com/mohamedSabry0/ruLint)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/umohamedSabry0/ruLint/issues)
[![GitHub2 Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/mohamedSabry0/ruLint/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)
</div>

### Example Input File
```
# rubocop:disable Lint/Syntax
class bad_example
end
class Bad_Example; end
class GoodExample
end
class BADNAME
end
class badname; end
class GoodName; end

# rubocop:enable Lint/Syntax
```

### Example Output
```
naming_warning @(./example.rb, line#1):'bad_example' is not a good class name. Follow CamelCase naming convention
naming_warning @(./example.rb, line#8):'badname' is not a good class name. Follow CamelCase naming convention
```

## Built With

- Ruby

## Getting Started

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
- Run `ruby main.rb`

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
