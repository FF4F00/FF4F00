# Operators
---

## Arithmetic

```haskell
-- ––––––––––––––––––––––––––––– arithmetic
-- • –––––––––– • –––––––––– • –––––––––– •
-- | **         | *          | /          |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | +          | -          | =          |
-- • –––––––––– • –––––––––– • –––––––––– •
```

## +
<small>addition</small>

<small>Identity Expressions</small>
$$a + 0 = a$$


---
<p style="font-family: monospace; text-align: right; font-size: 12px;"><b>+/-</b></p>
<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[integer]</p>
$$24 + 48 = 72$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[decimal]</p>
$$10.10 + 01.01 = 11.11$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[fraction]</p>
$$2\frac{5}{8} + \frac{9}{12} $$
$$\frac{8 * 2 + 5}{8} = \frac{21}{8} + \frac{9}{12}$$
$$\frac{21*3}{8*3} + \frac{9*2}{12*2} = \frac{63}{24} + \frac{18}{24}$$
$$\frac{81÷24}{24} = 3 \frac {9}{24}$$
$$\frac3{9÷3}{24÷3} = 3 \frac{3}{8}$$


<small>
<ol>
    <li>Multiple the whole number by the denominator and then add the numerator to the product.</li>
    <li>Rewrite as impropoer fraction.</li>
    <li>Carryout arithemtic operations</li>
    <li>Convert to mixed number</li>
    <li>Simplify.</li>
</ol>
</small>$$4^2 + 4^6 = 16 + 4096 = 4112$$

$$4^2 - 4^6 = 16 - 4096 = 4080$$

$$4^2 * 4^6 = 4^8 = 65536$$

$$4^2 * 4^-6 = 4^-4 = 256$$
<small>
<ol>
    <li>If bases are the same</li>
    <li>keep the base</li>
    <li>add the exponents</li>
</ol>
</small>
## -
<small>subtraction</small>

---

<small>Identity Expressions</small>
$$a - 0 = a$$

---


<p style="font-family: monospace; text-align: right; font-size: 12px;"><b>+</b> UInt</p>
<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[integer]</p>
$$1 + 1$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[mixed]</p>
$$\frac{1}{1} + 1\frac{1}{1}$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[decimal]</p>
$$1.0 + 1.0$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[exponent]</p>
$$2^2 + 3^6$$
$$4^2 - 4^6$$



## *
<small>multiplication</small>

---
<small>Identity Expressions</small>
$$a * 1 = a$$

---
<p style="font-family: monospace; text-align: right; font-size: 12px;"><b>+</b> UInt</p>
<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[integer]</p>
$$1 + 1$$



<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[mixed]</p>
$$\frac{1}{1} + 1\frac{1}{1}$$


<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[improper]</p>
$$1\frac{1}{1} + 1\frac{1}{1}$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[decimal]</p>
$$1.0 + 1.0$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[exponent]</p>
$$2^2 + 3^6$$
$$4^2 + 4^6$$




## ÷
<small>division</small>

---
<small>Identity Expressions</small>
$$a ÷ 1 = a$$

---
<p style="font-family: monospace; text-align: right; font-size: 12px;"><b>+</b> UInt</p>

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[integer]</p>
$$1 + 1$$


<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[mixed]</p>
$$\frac{1}{1} + 1\frac{1}{1}$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[improper]</p>
$$1\frac{1}{1} + 1\frac{1}{1}$$

<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[decimal]</p>
$$1.0 + 1.0$$


<p style="text-align: right; font-family: monospace; font-size: 10px; font-weight: 400;">[exponent]</p>
$$2^2 + 3^6$$

$$4^2 + 4^6$$



## Comparison
---

```haskell
-- ––––––––––––––––––––––––––––– comparison
-- • –––––––––– • –––––––––– • –––––––––– •
-- | ==         | !=         | >          |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | <          | >=         | <=         |
-- • –––––––––– • –––––––––– • –––––––––– •
```

## ==
---
<small>equal</small>

$$ x \equiv y $$

```mojo
var x: String = "SFO"
var y: String = "SFO"
if x == y: print(x, "🔥") else: print("🥶")
```



## !=
---
<small>not equal</small>

$$ x \neq y $$
```
var x: String = "SEA"
var y: String = "PDX"
if x != y: print(x, "🔥") else: print("🥶")
```

# >
---
<small>greater</small>

$$ x > y $$
```
var x: Int = 650
var y: Int = 206
if x > y: print(x, "🔥") else: print("🥶")
```


## <
---
<small>lesser</small>

$$ x < y $$

```
var x: Int = 425
var y: Int = 808
if x < y: print(x, "🔥") else: print("🥶")
```


## >=
---
<small>greater || equal</small>
$$ x \ge y $$ 
```
var x: Float16 = 122.0
var y: Float16 = 47.0
if x >= y: print(x, "🔥") else: print("🥶")
```


## <=
---
<small>lesser or equal</small>
$$ x \le y $$
```
var x: Int = -8
var y: Int = -8
if x <= y: print(x, "🔥") else: print("🥶")
```


### *



<div style="float: right;">× , • ,  * , a(b)</div>


<small>Multiplying</small><br>
<small>Integers</small>
<hr>
When multiplying two positive numbers, the result is positive.
$$7 × 3 = 21$$
the product of a negative and positive is always negative.
$$a\times-a=-a$$
When multiplying two negative numbers, the result is positive.
$$-7 × -3 = 21$$
the product of a negative and a negative is always positive.
$$a-a\times-a=a$$
When multiplying a negative and a positive number, the result is negative.
$$-7 × 3 = -21$$


Multiplying
Decimals
$$32.8 × 9.2 = 301.76$$
Multiplying
Fractions
$$3\frac{3}{4} \times 2\frac{5}{9}$$
To convert the mixed number $  w\frac{n}{d}$ to an improper fraction $\frac{n>d}{d<n}$ multiply the whole number by the denominator and add the numerator to the product $\frac{w \times d+n}{d}$.
$$3\frac{3*4+3}{4} \left\{ \frac{15}{4} \times \frac{23}{9} \right\}  \frac{2*9+5}{9}$$
Unlike adding and subtracting fractions, when multiplying and dividing fractions, there is no need to find the LCD. Once the mixed numbers are converted to improper fractions, simply carry out the operation.
To simplify the improper fraction, divide both the numerator and denominator by their greatest common divisor, greatest common factor interchangeably (GCD,GCF) the largest positive integer that divides two or more integers without leaving a remainder.
$$\frac{15\times23}{4\times9} = \frac{345÷3}{36÷3}= \left\{ \frac{115}{12}\right\}$$
Simplify the improper fraction by converting it back into a mixed number. To do this, divide the denominator into the numerator. The quotient becomes the whole number. To find the new numerator, subtract the product of the quotient and the denominator from the original numerator. The denominator remains the same. If the fraction is not in its lowest terms, further reduce it.
$$\frac{115}{12} = 9\frac{7}{12}$$
$$\frac{-3}{4} \times \frac{5}{-7}$$
$$\frac{-3*5}{4*-7} = \frac{-15}{-28}$$
When multiplying or dividing fractions, if both numerator and denominator  $\frac{-n}{-d}$  are negative, they cancel each other out, resulting in a  positive $\frac{n}{d}$ fraction.
$$\frac{-15}{-28} = \frac{15}{28}$$
Multiplying
Precentages
$$30\% × 50\%$$
$$0.30×0.50=0.15$$
$$0.15×100=15\%$$
Multiplying
Exponents
(b$^e$) - An operation that raises a number to the power of another number.
$$a^b$$
Multiplying exponents, if the bases are the same the exponents can be added.
$$2^3 \times 2^4 = \left\{ 2^{(3+4)}\right\} = 2^7$$
$$2^7 = 128$$
When the bases differ, evaluate each exponent separately and then multiply the results together to obtain the final product.
$$2^4 × 2^3$$
$$2^4 × 2^3 = 2^{4+3} = 2^7 = 128$$
$$2^4 × 2^{-3}$$
$$2^4 × 2^{-3} = 2^{4+(-3)} = 2^1 = 2$$
$$2^{-4} × 2^{-3}$$
$$2^{-4} × 2^{-3} = 2^{-4+(-3)} = 2^{-7}$$
$$22^{-7} = \frac{1}{2^7} = \frac{1}{128}$$
$$-2^4 × 2^3$$
$$-2^4 × 2^3 = -(2^4 × 2^3) = -2^7 = -128$$
÷
÷ , / , $\frac{n}{d}$
Dividing
Integers

Positive ÷ Negative = Negative
the quotient of a negative and positive is always negative.
$$a÷-a=-a$$
Negative × Negative = Positive
the quotient of a negative and negative is always positive.
$$-a÷-a=a$$
$$21 ÷ 3 = 7$$
When dividing two positive numbers, the result is positive.
$$21 ÷ -3 = -7$$
When dividing a positive by a negative number, the result is negative.
$$-21 ÷ 3 = -7$$
When dividing a negative by a positive number, the result is negative.
$$-21 ÷ -3 = 7$$
When dividing two negative numbers, the result is positive.
Dividing
Decimals
$$301.76 ÷ 9.2 = 32.8$$
Dividing
Fractions
$$4\frac{5}{7} ÷ \frac{2}{9}$$
The reciprocal of a fraction is flipping the numerator and denominator of the right operand. 
$$\frac{a}{b} ÷ \frac{c}{d} \left\{ \frac{a}{b} \times \frac{d}{c} \right\}$$
$$\frac{33}{7}÷\frac{2}{9}=\left\{ \frac{33}{7}\times \frac{9}{2} \right\}$$
$$\frac{297}{14} = \left\{21\frac{3}{14}\right\}$$
When dividing exponents, if the bases are the same, you can subtract the exponents and then evaluate the result. If the bases are different, evaluate each expression separately before performing the division.
Dividing
Precentages
$$80\% ÷ 20\%$$
$$0.80÷0.20=4$$
Dividing
Exponents
$$\frac{2^3}{2^6}$$
Subtract the exponents
$$\left\{2^{3-6}\right\} 2^3 =  8 $$
$$2^4 ÷ 2^3$$
$$2^4 ÷ 2^3 = 2^{4-3} = 2^1 = 2$$
$$2^4 ÷ 2^{-3}$$
$$2^4 ÷ 2^{-3} = 2^{4-(-3)} = 2^7 = 128$$
$$2^{-4} ÷ 2^{-3}$$
$$2^{-4} ÷ 2^{-3} = 2^{-4-(-3)} = 2^{-1}$$
$$2^{-1} = \frac{1}{2^1} = \frac{1}{2}$$
$$-2^4 ÷ 2^3$$
$$-2^4 ÷ 2^3 = -(2^4 ÷ 2^3) = -2^1 = -2$$
+
Adding
Integers
Positive + Positive = Positive
Since both numbers are positive the result will be positive.
$$7 + 3 = 10$$
Negative + Negative = Negative
$$32.8 - 9.2 = 23.6$$
Since both numbers are negative the result will be negative.
$$-7 + -3 = -10$$
Sign is determined by greater number
Since 7 is larger the result will be positive.
$$7 +-3=4$$
Since 7 is larger the result will be negative.
$$-7 + 3 = -4$$
Adding
Decimals
$$32.8 + 9.2$$
Adding
Fractions
$$4\frac{2}{5} + \frac{3}{7}$$
Convert mixed number to improper fraction
$$\frac{4*5+2}{5} + \frac{3}{7}$$
Add the numerators
$$\frac{22*7}{5*7} + \frac{3*5}{7*5} = \left\{\frac{154}{35} + \frac{15}{35} = \frac{169}{35}\right\}$$
Convert improper fraction back to mixed number 
$$\frac{169}{35} = \left\{4\frac{29}{35}\right\}$$
Adding
Precentages
$$75\%+85\%=160\%$$
$$\frac{160\%}{2}=80\%$$
Adding
Exponents
$$2^4 + 2^3$$
$$2^4 + 2^3 = 16 + 8 = 24$$
$$2^4 + 2^{-3}$$
Evaluate 2^4
$$2^4 = 16$$
Evaluate 2^(-3)
$$2^{-3} = \frac{1}{2^3} = \frac{1}{8}$$
Add the results
$$16 + \frac{1}{8}$$
Find a common denominator
$$16 = \frac{16}{1} = \frac{16 * 8}{1 * 8} = \frac{128}{8}$$
Add fractions
$$\frac{128}{8} + \frac{1}{8} = \frac{128 + 1}{8} = \frac{129}{8}$$
$$2^{-4} + 2^{-3}$$
Simplify each exponent
$$2^{-4} = \frac{1}{2^4} = \frac{1}{16}$$
$$22^{-3} = \frac{1}{2^3} = \frac{1}{8}$$
Find a common denominator
$$\frac{1}{16} + \frac{1}{8} = \frac{1}{16} + \frac{2}{16}$$
Add the fractions
$$\frac{1}{16} + \frac{2}{16} = \frac{3}{16}$$
$$-2^4 + 2^3$$
$$-2^4 + 2^3 = -16 + 8 = -8$$
-
Subtracting
Integers
L.Operand - R.Operand = greater number
Since we're subtracting a smaller positive number from a larger one, the result is positive.
$$7 - 3 = 10$$
-L.Operand - R.Operand = greater number
Subtracting a positive number from a negative number results in a larger negative number.
$$-7 - 3 = -10$$
L.Operand - (-R.Operand) = Opeerand Operand
Subtracting a negative number is the same as adding its positive counterpart.
$$7 - (-3) = 10$$
-L.Operand - (-R.Operand) = -Difference
Subtracting a negative number from a negative number is like adding a positive to a negative.
$$-7 - (-3) = -4$$
Subtracting
Decimals
$$32.8 - 9.2 = 23.6$$

Subtracting
Fractions

$$2\frac{5}{9} - 3\frac{4}{6}$$

$$\frac{2*9+5}{9} \left\{\frac{23}{9} - \frac{22}{6} \right\} \frac{3*6+4}{6}$$

Always simplify before carrying out the operation.

$$\frac{22}{6} = \frac{11}{3}$$

$$\frac{23*1}{9*1} - \frac{11*3} {3*3} = \left\{ \frac{23}{9} - \frac{33}{9} = \frac{-10}{9}\right\}$$

$$-\frac{10}{9} = \left\{ 1\frac{1}{9}\right\}$$

Subtracting
Exponents

Evaluate each exponential expression.

$$7^2 - 4^3$$

Perform the subtraction operation to obtain the difference.

$$49-64 \left\{ -15 \right\}$$

### Comparison

**(=)** - A relation indicating that two expressions represent the same value.
$$a=b$$

**(≠)** - A relation indicating that two expressions do not represent the same value.
$$a≠b$$

**(>)** - A relation indicating that one number is larger than another.
$$a>b$$

**(<)** - A relation indicating that one number is smaller than another.
$$a<b$$

**(≥)** - A relation indicating that one number is either larger than or equal to another.
$$a≥b$$

**(≤)** - A relation indicating that one number is either larger than or equal to another.
$$a≤b$$

### Units

Base

Length - is a fundamental physical quantity that describes the distance between two points in space. It is one of the most basic measures in physics and is used to describe the size or extent of an object or the separation between objects.

Mass - is a measure of the amount of matter in an object or substance. It is a fundamental property of physical bodies and is often used to determine the weight of an object in a gravitational field. Mass remains constant regardless of the object's location.

Time - is a measure of the duration between events or the progression of events. It is one of the most fundamental concepts used in physics to describe the sequence and interval of events in the universe.

Temperature - is a measure of the average kinetic energy of the particles in a substance, which is related to the substance's thermal energy.

Derived

Area - is a measure of the extent of a surface or region in two-dimensional space. It represents the amount of space within the boundaries of a shape or figure.

Acceleration - is the rate at which an object's velocity changes with respect to time. It is a vector quantity, meaning it has both magnitude and direction.

Velocity - is a vector quantity that refers to the rate at which an object changes its position, considering both speed and direction.

Volume - is a measure of the three-dimensional space occupied by an object or substance.

### Graphs
Graph - is a visual representation of data, equations, or functions, typically plotted on a coordinate plane. It shows the relationship between variables.

Cartesean Coordinate Plane - is a two-dimensional plane defined by two perpendicular axes: the x-axis (horizontal) and the y-axis (vertical). Each point on the plane is described by an ordered pair (x,y), where x is the horizontal position and y is the vertical position.

Quadrant - The Cartesian plane is divided into four regions based on the signs of the coordinates:

Axis - is a reference line used in a coordinate system to define the position of points. In two-dimensional space, the x-axis is the horizontal axis, representing the independent variable, while the y-axis is the vertical axis, representing the dependent variable. In three-dimensional space, the z-axis is perpendicular to both the x-axis and y-axis, adding depth to the system. The axes intersect at the origin (0, 0) in 2D and (0, 0, 0) in 3D. For example, in the point (3, 4) in 2D, 3 is the value on the x-axis and 4 is the value on the y-axis; in 3D, a point might be represented as (x, y, z).

Slope - is a measure of the steepness and direction of a line, calculated as the ratio of the change in the vertical direction (Δy) to the change in the horizontal direction (Δx). It is often expressed as m = (y2 - y1) / (x2 - x1). A positive slope indicates the line rises from left to right, while a negative slope means the line falls from left to right. Slope is a dimensionless quantity and reflects the relationship between the two variables represented on the graph.

Intercept - are the points where a graph crosses the axes. There are two types: the x-intercept, where the graph crosses the x-axis (when y = 0), and the y-intercept, where the graph crosses the y-axis (when x = 0). For example, in the equation y = 2x + 3, the y-intercept is 3 (at the point (0, 3)), and in the equation y = x² - 4, the x-intercepts are -2 and 2 (at the points (-2, 0) and (2, 0)).