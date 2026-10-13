# Week 8: Dart Programming Fundamentals (Part 2) – Control Structures & Logic

Student Name: Sam Lawrence A.Trigusa
Course & Section: BSIT 3.3 
Institution: National Teachers College  
Academic Year: AY 2026–2027  

---

 Scenario Description
This application expands upon the Week 7 Burger Meal Order System by integrating control structures, functions, and error handling. It validates raw inputs with `try/catch`, processes itemized breakdown logs using `for` loops, computes order subtotal and packaging fees via custom functions, and evaluates tier promotions using `if/else` conditional logic.

---
 Rubric Compliance Overview

| Criterion | Point Value | Implementation Details |
| :--- | :---: | :--- |
| **Conditional Logic** | **25 pts** | `if / else if / else` inside `evaluatePromoTier()` and `applyPackagingFee()` checks spending thresholds (`>= 300`, `>= 200`, `>= 100`) and takeout flags[cite: 1]. |
| **Loop** | **25 pts** | `for (int i = 1; i <= quantity; i++)` iterates through each ordered item and prints an order preparation log[cite: 1]. |
| **Function** | **25 pts** | Functions (`calculateSubtotal`, `evaluatePromoTier`, `applyPackagingFee`) accept parameters and return computed values (`double`, `String`)[cite: 1]. |
| **Error Handling** | **25 pts** | `try / catch` handles a deliberate `FormatException` when attempting `int.parse('2_invalid')`, falling back safely to a default quantity[cite: 1]. |

---

Project Execution Instructions

1. Open terminal in project root:
   ```bash
   cd dart_exercises
