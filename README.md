# Procesadores del Lenguaje
Final PECL of "Procesadores del Lenguaje" for course 2016/17

## Introduction

This project builds an analyzer (lexical, syntactic and semantic) for an imperative language. That language only use two control structures ('if' and 'while'). The variables are explicitly declare as integer or boolean.

The syntax of this analyzer uses jLex and Java Cup.

## Getting Started

### Prerequisites
* [**Java SE Development Kit**](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

### Get up and running
#### Manually
- Run at the command prompt to compile the project:
```bash
java JLex.Main lex.lex
javac lex.lex.java
```

- You can analyze created tests or create new ones.
For example, if you want to analyze `test1.txt`, run in a terminal:
```bash
java Yylex test1.txt      #Analyze the file test1.txt
```

#### Through a script
In order to do it faster, you may run this script in two ways:
- Launch script without parameters for compile the project:
```bash
./make.sh               
```
- Launch the script with tests files to analyze it:
```bash
./make.sh test1.txt     #Analyze the file test1.txt
```

## License

This proyect is under the [MIT License](http://www.opensource.org/licenses/MIT).
See [LICENSE.md](LICENSE.md)
