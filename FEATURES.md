## Project Purpose

To simulate an operating elevator


# Features

### 1. Setup

- 1.1 ✓ Initial floor 0

### 2. Operations

- 2.1 ✓ move the elevator to a floor
- 2.2 ✓ request the elevator visit a floor
- 2.3 ✓ route the elevator to all requested floors (if requests)

### 3. Assess

- 3.1 ✓ record each floor visit (for diagnostics)

### 4. Interactions

- 4.1 simulate random elevator requests as a console app
	- 4.1.1 display floors visited

### 5. Not Right Now


## Movement algorithm

* Continue traveling in the same direction while there are remaining requests in that same direction.
* If there are no further requests in that direction, then stop and become idle, or change direction if there are requests in the opposite direction.


## Assumptions and Constraints

* Number of elevators? 1
* Single request button on each floor, not up/down