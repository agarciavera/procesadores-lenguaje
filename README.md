# Procesadores del Lenguaje
Final PECL for "Procesadores del Lenguaje" for course 2016/2017

## Introduction

This project builds an analyzer (lexical, syntactic and semantic) for an imperative language. That language only use two control structures ('if' and 'while'). The variables are explicitly declare as integer or boolean.

The syntax of this analyzer uses jLex and Java Cup.

## Getting Started

### Prerequisites
* [**Java SE Development Kit**](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

### Get up and running
#### Manually
Put in a terminal:
```bash
java JLex.Main lex.lex
javac lex.lex.java
```

You can analyze created tests or create new tests.
If you want to analyze, for example, the `test1.txt`, put in a terminal:
```bash
java Yylex test1.txt      #Analyze the file text1.txt
```

#### Through a sript
I created a script to make typing required commands faster. This way you will only need to run the script with the file you want to analyze or execute the script without the file if you want to compile the whole project
```bash
./make.sh test1.txt       #Analyze the file test1.txt
```

## License

This proyect is under the [MIT License](http://www.opensource.org/licenses/MIT).
See [LICENSE.md](LICENSE.md)
