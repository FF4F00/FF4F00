# Number Sets


```haskell
-- ––––––––––––––––––––––––––– Number Types
-- • –––––––––– • –––––––––– • –––––––––– •
-- | Natural    | Whole      | Integer    |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | Rational   | Irrational | Complex    |
-- • –––––––––– • –––––––––– • –––––––––– •
```



---

## Natural
```mojo
var natural: Int = 1
if natural >=  1: print(natural, "= Natural") else: print("👎")
```
$$1 \to \infty$$

Natural - The set of positive integers used for counting.



## Whole
---
```mojo
var whole: Int = 0
if whole >=  0: print(whole, "= Whole") else: print("👎")
```
$$0 \to \infty$$

Whole - The set of natural numbers including zero.


## Integer
---
```
var integer: Int = -42
if integer >=  0 or integer <= 0: print(integer, "= Integer") else: print("👎")
```

$$-\infty \to \infty$$


Integers - The set of whole numbers that includes positive numbers, negative numbers, and zero.


## Rational
---
var rational: Int = 0
if x >=  0 or x <= 0: print(rational, "= Rational") else: print("👎")

$$\frac{-6}{-9}, 0.42, -\infty \longleftrightarrow \infty$$

Rational - Numbers that can be expressed as a fraction of two integers, where the denominator is not zero.

## Irrational
---

$$\sqrt{5}, \pi, e$$

Irrational - Numbers that cannot be expressed as a fraction of two integers, with non-repeating, non-terminating decimal expansions.


## Real
Real - The set of all numbers that can be found on the number line, including both rational and irrational numbers.

## Complex
Complex - Numbers consisting of a real part and an imaginary part.
