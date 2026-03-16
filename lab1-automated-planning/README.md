# Automated Planning Exercises with PDDL

## 1. Nine‑Tile Puzzle (8‑Puzzle)

**Domain definition:**  
The puzzle is modeled as a 3×3 grid with 8 numbered tiles and one empty cell.  
Adjacency between grid cells is fixed and declared in the problem.  
A tile can be slid into the empty cell when the two positions are adjacent.  
The domain includes:
- where each tile is located  
- which position is empty  
- adjacency relations  
- a single slide action that swaps a tile with the empty space  

**Problem definition:**  
Encodes the initial scrambled configuration and the goal configuration (canonical ordering from 1 to 8).  
All adjacency facts are explicitly listed.

---

## 2. Painting Robot

**Domain definition:**  
A robot moves across a tiled grid and can paint the tile it stands on if it carries the correct color. 
There are two robot that carry fixed colors. A robot can only move to adjacent, unpainted tiles.
The domain describes:
- robot location  
- color the robot holds  
- adjacency between tiles  
- the color state of each tile  
- an additional predicate to prevent the robot from stepping onto already painted tiles  
- actions: move and paint  

**Problem definition:**  
Defines the grid shape, the robot’s starting point and available colors. The tiles' initial unpainted state is not specified since it's already derived from Closed World Assumption.
The goal requires producing a checkerboard pattern starting with a specific color in a specific tile.

---

## 3. Tower of Hanoi (modeled using only one object type)

**Domain definition:**  
By modeling the bars as very big support disks (bigA, bigB, bigC) that are larger than all real disks, only the real disks can move, and a single uniform move action is sufficient.
The domain contains:
- an `on` relation between disks  
- a `clear` predicate indicating which disk has no disk on top  
- the `smaller` relation enforcing legal moves  
- a single `move` action  

Because bars are large disks, the entire system behaves like a size-constrained Blocksworld.

**Problem definition:**  
Defines:
- four real disks d1–d4  
- three large disks representing the bars  
- complete size ordering (real disks + bars)  
- an initial tower on bigA  
- the goal tower on bigC  

This formulation ensures a clean and minimal STRIPS model that the parser can solve without type hierarchies.

---

# How to Run

Use the provided script:

```bash
python read_and_solve.py <path-to-domain-pddl> <path-to-problem-pddl>
```

The planner will parse, ground, and attempt to solve the selected planning task.

---
