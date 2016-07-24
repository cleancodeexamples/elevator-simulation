# Elevator Simulation

An experimental elevator simulation for experimenting with object-oriented and Clean Architecture principles.

For project purpose, features, assumptions and constraints,
	see FEATURES.md

## Running tests

```sh
$ cd tests
$ ruby test_elevator.rb
```

```sh
$ bin/rspec --format doc
```

## State Diagram

![State](images/Elevator-State-Diagram.png)

Contribution
---

We are following [this](http://nvie.com/posts/a-successful-git-branching-model/) model.

### Steps

#### Create a new branch from `master` branch

```sh
# from master branch
$ git checkout -b <branch_name>
```

#### Do the required changes

```sh
$ git add .
$ git commit -m "message for commit"
```

#### Push to the remote `origin`

```sh
$ git push origin <name_of_the_newly_created_branch>
```
