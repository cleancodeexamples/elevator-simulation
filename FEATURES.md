## Project Purpose

To simulate an operating elevator

# Features

### Setup

- 1.1 ✓ Initial floor 0

### Operations

- 2.1 ✓ move the elevator to a floor
- 2.2 ✓ request the elevator visit a floor
- 2.3 ✓ route the elevator to all requested floors (if requests)

### Assess

- 3.1 ✓ record each floor visit (for diagnostics)

## Movement algorithm

* Continue traveling in the same direction while there are remaining requests in that same direction.
* If there are no further requests in that direction, then stop and become idle, or change direction if there are requests in the opposite direction.

## Assumptions and Constraints

* Number of elevators? 1
* Top floor? not yet implemented
* Lowest floor? not yet implemented
* Single request button on each floor, not up/down