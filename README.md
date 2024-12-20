# String Calculator

This project aims to provide a string calculator which takes a string of numbers as an input and calculates the sum of the numbers in the given string.

### Ruby version

```shell
3.3.6
```

Install Ruby with,

```
rvm install 3.3.6
```

## Install

### Clone the repository

```shell
git clone git@github.com:KalyaniShirsat/string_calculator.git
cd string_calculator
```

### Install dependencies

```shell
gem install rspec
```

### Usage

```shell
Calculator.add('3,5,1')

# Output: 9

```

You can provide newline characters instead comma to separate the numbers in the input string.

```shell
Calculator.add('2\n8,0')

# Output: 10

```

To change the delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]"

```shell
Calculator.add('//;\n1;20')

# Output: 21

```

Calling `Calculator.add` with a negative number will throw an exception.

### Test

```shell
rspec
```
