# Week 8: Dart Programming Fundamentals (Part 2) – Control Structures & Logic

**Student Name:** Sam Lawrence A. Trigusa
**Course & Section:** BSIT3.3
**Institution:** National Teachers College  
**Academic Year:** AY 2026–2027  

---

## Scenario Description
This application expands upon the **Week 7 Burger Meal Order System** by integrating control structures, functions, and error handling. It validates raw inputs with `try/catch`, processes itemized breakdown logs using `for` loops, computes order subtotal and packaging fees via custom functions, and evaluates promo tiers using `if / else if / else` conditional logic.

---

## Control Structures & Features
- **Error Handling (`try/catch`):** Catches invalid input string parsing (`int.parse('2_invalid')`) and safely defaults to a valid quantity.
- **Loop (`for`):** Iterates through each ordered burger item to log its preparation step.
- **Functions:** Custom modular functions (`calculateSubtotal`, `evaluatePromoTier`, `applyPackagingFee`) with parameters and explicit return types.
- **Conditional Logic (`if/else`):** Checks takeout flags to apply packaging fees and evaluates order totals to apply tier promotions.

---

## How to Run the Code

### Prerequisites
Make sure you have either the **Dart SDK** or **Flutter SDK** installed on your system. 

Check if Dart is installed by running this command in your terminal:
```bash
dart --version
