---
title: "Overview"
linkTitle: "Overview"
weight: 1
description: >
  What's this guide about and who's it for?
---

If you're a programmer, do any of the following situations apply to you?

- You want to run an app (or toolchain) your machine, but you don't want to
install it.

- You want to connect to other services, like database servers, but you don't
want to install them on your own machine (or maybe you want to test against
multiple versions).

- You want to share your app with others, but it only runs in certain
environments, or it has dependencies that must be installed first to be able to
run.

- You want to deploy your app to a server somewhere where other users can
connect to it, but you don't want to have to manage the installation of your app
and its dependencies on the server.

- You want to be confident that what you package up will run the same way on
each machine it runs on.

## Enter Docker

These are all scenarios that Docker can help you with.

Docker refers to a technology, tooling, and an ecosysem that makes it possible
to package up software, share it with others, and run it in a special, isolated
environment called a
[container](https://www.docker.com/resources/what-container) on any [supported
operating system](https://docs.docker.com/engine/install/).

The key to unleashing Docker's power is understanding how to write a Dockerfile.
If you've seen Docker commands or Dockerfile instructions and they seemed a bit
arcane to you, keep reading.

## Is this for you?

In this guide, you'll learn how write Dockerfiles so that you can containerize
just about anything. Unlike most other guides that focus on learning Docker
first before diving into writing a Dockerfile, we're going to invert that model.

Since you're a programmer, we're going to focus right off the bat on writing
Dockerfiles coming from a programmer perspective. We're going to build on a
series of examples that will develop your knowledge and confidence in writing
Dockerfiles.

You will become familiar with Docker as you build on your Dockerfile skills. If
you choose to work your way through the entire guide, you'll learn best
practices for creating industrial strength Dockerfiles, like the ones used for
official images on Docker Hub, and you'll have the confidence to apply your
skills to containerize anything for fun and profit.

## What's next?

We're going to start from ground zero and the only assumptions up front are that
you already have:

- basic familiarity with using the command line in a terminal
- basic understanding of file systems and networking
- access to a programmer / text editor (not a formatting word processor), like
[nano](https://www.nano-editor.org/), [vim](https://www.vim.org/), or [Visual
Studio Code](https://code.visualstudio.com/).

The journey begins with the first step, so let's dive in with [Getting
Started](getting-started).
