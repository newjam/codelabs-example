---
id: codelabs-tutorial

---
# Getting Started with Google Codelabs

## Introduction

[Google codelabs](https://codelabs.developers.google.com/) is a collection of technology tutorials hosted by google. It is also an open source project that provides a tool named [claat](https://github.com/googlecodelabs/tools), which can generate the website files for the tutorials. This is document is a tutorial on how to get started generating codelabs.

## Install `claat`

This tutorial assumes you are using the Ubuntu operating system.
First, Install go
```bash
$ sudo apt install golang-go
```
Next, install `claat`
```bash
$ go get github.com/googlecodelabs/tools/claat
```
This will create a `~/go/bin` directory with the executable `claat`
We can add this our `$PATH` environment variable to be able to use `claat` anywhere.
```bash
$ echo 'PATH=$PATH:~/go/bin' >> ~/.shrc
```

## Using `claat`

`claat` can transform either markdown files or google documents into beatiful static websites or markdown. For example, we will generate this tutorial itself. First, download the git repository of this tutorial.
```bash
$ git clone https://github.com/newjam/codelabs-example
$ cd codelabs-example
```
This tutorial is generated from the file file `README.md`. We can generate this tutorial using the command
```bash
$ claat export -o www README.md
```
This creates a directory `./www/codelabs-tutorial` which contains the rendered html. They are placed in that directory because of the `-o www` flag in the command, and because the metadata `id: codelabs-tutorial` in the file `README.md`. We can serve the tutorial by running
```bash
$ cd www
$ claat serve
```
Now you can view it in your web browser!

