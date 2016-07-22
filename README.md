# Elevator Simulation

An experimental elevator simulation for experimenting with object-oriented and Clean Architecture principles.

## Purpose

To simulate an operating elevator

# Features

### Setup

### Operations

* move an elevator to a floor
* request the elevator visits a floor
* route the elevator to all requested floors

### Assess

## Movement algorithm

* Continue traveling in the same direction while there are remaining requests in that same direction.
* If there are no further requests in that direction, then stop and become idle, or change direction if there are requests in the opposite direction.

## Assumptions and Constraints

* Number of elevators? 1
* Top floor? 5
* Lowest floor? -1
* Single request button on each floor, not up/down

## Running tests

```sh
$ bin/rspec --format doc
```

## State Diagram

![State](images/Elevator-State-Diagram.png)
