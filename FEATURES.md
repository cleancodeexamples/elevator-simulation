## Purpose

To simulate an operating elevator

# Features

### Setup

1.1 Initial floor 0

### Operations

2.1 (done) move an elevator to a floor
2.2 (done) request the elevator visit a floor
2.3 (done) route the elevator to all requested floors (if requests)

### Assess

3.1 (done) record each floor visit (for diagnostics)

## Movement algorithm

* Continue traveling in the same direction while there are remaining requests in that same direction.
* If there are no further requests in that direction, then stop and become idle, or change direction if there are requests in the opposite direction.

## Assumptions and Constraints

* Number of elevators? 1
* Top floor? not yet implemented
* Lowest floor? not yet implemented
* Single request button on each floor, not up/down