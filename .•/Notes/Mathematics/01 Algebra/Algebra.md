# Algebra
---

```
# algebra
# introduction
# expressions
# functions
# geometry
# trigonometry
# statistics
```


Constant: A fixed value that does not change. In expressions, constants are numbers without variables.
$$9$$
Variable: A symbol, usually a letter, that represents an unknown or changeable number in an equation or expression.
$$x$$
Coefficient: A number that multiplies a variable in an algebraic expression. For example, in 4x, 4 is the coefficient of x.
$$4x$$




**Expression**: A mathematical phrase that combines numbers, variables, and operators but does not contain an equality sign. Example: 3x + 2.

$$
3x + 5 +2y
$$

**Monomial**: An algebraic expression that contains only one term, which may include a constant, a variable, or a product of constants and variables with non-negative integer exponents.

$$
7
$$

**Binomial**: An algebraic expression that consists of exactly two terms connected by addition or subtraction.

$$
x^2 - 4
$$

**Trinomial**: An algebraic expression that contains exactly three terms connected by addition or subtraction.

$$
x^2 + 5x + 6
$$

**Polynomial**: A general term for an algebraic expression consisting of one or more terms (monomials), where each term includes a variable raised to a non-negative integer exponent. Polynomials can have any number of terms.

$$
x^4 - 4x^3 + x - 7
$$

**Equation**: A mathematical statement that asserts the equality of two expressions, often containing variables. 

- Arithmetic Operators

$$
2x + 3 = 7
$$

**Inequality**: A relation between two expressions that shows one is greater than, less than, greater than or equal to, or less than or equal to the other. 

- Comparison Operators

$$
x + 2 > 5.
$$

**Like terms** are terms in an algebraic expression that have the exact same variable(s) raised to the same power(s). Only the coefficients (numerical parts) of like terms may differ.

$$
3x + 7x
$$

$$
\frac{3x}{4x} = \left\{\frac{3}{4} \times \frac{x}{x}\right\} = \frac{3}{4} \times 1 = \frac{3}{4}
$$

$\times$ $÷$ $+$ $-$

$$
3x + 7x = 10x
$$

**Unlike terms** are terms in an algebraic expression that have different variables or variable powers, making them incompatible for direct addition or subtraction. Unlike terms cannot be combined because their variable parts differ in some way.

You can only perform addition or subtraction on **like terms**, while **unlike terms** cannot be added or subtracted together.

$$
3x + 4y
$$

$$
3x - 4y
$$

$$
3x \times 4y = \left\{ 12xy\right\}
$$

$$
3x ÷ 4y = \left\{ \frac{3x}{4y}\right\}
$$























## Properties
---
### commutative
> `multiplication`
$$ a * b = b * a $$
```haskell
fn mul(x: Int, y: Int) -> Int:
    return x * y

print(mul(5,8), mul(8,5))
```


> `addition`
$$ a + b = b + a $$


```haskell
fn add(x: Int, y: Int) -> Int:
    return x + y

print(add(9,6), add(6,9))
```

### associative

**Associative** - A property indicating that the grouping of numbers does not affect the result of an operation.


> **(×)** `multiplication`
$$ a \cdot(b \cdot(c\cdot (x\cdot y)))=(a \cdot b \cdot c\cdot x)\cdot y $$
```haskell
fn mul(x: Int,y: Int,z: Int) -> Bool:

    var a: Int = ( x * y ) * z
    var b: Int = x * ( y * z )
    return a == b 

print("Associative =", mul(9, 6, 4))
```
> **(+)** `addition`
$$ a+(b+(c+(x+y)))=(a+b+c+x)+y $$

```hask
fn mul(x: Int,y: Int,z: Int) -> Bool:

    var a: Int = ( x + y ) + z
    var b: Int = x + ( y + z )
    return a == b 

print("Associative =", mul(9, 6, 4))
```

### commutative

> **(×)** `multiplication`

$$a×b=b×a$$


> **(+)** `addition`

$$a+b=b+a$$

**Commutative** - A property indicating that the order of numbers does not affect the result of an operation.


### identity
> **(×)** `multiplication`
$$a×1=a$$


> **(÷)** `division`

$$a÷1=a$$

> **(+)** `addition`
$$a+0=a$$

>**(-)**`subtraction`

$$a−0=a$$


**Identity** - A property indicating that there exists an identity element for an operation, which leaves other elements unchanged.




### inverse

> **(×)** `multiplication`
$$a×\frac{1}{a}=1 (for a≠0)$$


> **(÷)** `division`
$$a÷a=1 (for a≠0)$$


> **(+)** `addition`
$$a+(−a)=0$$

>**(-)**`subtraction`
$$a−a=0$$

**Inverse** - A property indicating that for every number, there exists another number that combines with it to yield the identity element for that operation.




### zero property of multiplication

$$a×0=0$$

**Zero Property of Multiplication** - states that the product of any number and zero is always zero.




### distributive

**Distributive** - A property indicating that multiplication distributes over addition or subtraction.

> **(×)**`multiplication over addition`
$$ a(b + c) = (a * b) + (a * c) $$


```haskell
fn mul(a: Int, b: Int, c: Int) -> Bool:

    var x = a*(b+c)
    var y = (a*b) + (a*c)
    return x == y

print("Distributive mul/+ =", mul(4, 4, 4))
```

> `multiplication over subtraction`
$$ a(b + c - d) = a \cdot b + a \cdot c - a \cdot d = ab + ac - ad $$


```haskell
fn mul(a: Int, b: Int, c: Int, d: Int) -> Bool:

    var x = a * (b + c - d)
    var y = a * b + a * c - a * d
    var z = (a*b) + (a*c) - (a*d)
    return x == y and y == z 

print("Distributive mul/- =", mul(4, 4, 4, 4))
```


> Parenthetic    
$$ 3 + 6 \times (5 + 4) \div 3 - 7 $$
> Exponentiation 
$$ 2^3 + 4 \times (6 - 2) $$

> Multiplication 
$$ 5 \times (3 + 4) - 2 $$

> Division
$$ 12 \div 3 + 6 - 4 $$



> Addition       
$$ 3 + 6 + 4 - 2 $$
> Subtraction    
$$ 9 - (3 + 4) + 2 $$
```haskell
fn pemdas(a: Int, b: Int, c: Int, x: Int, y: Int, z: Int) -> Float64:

    var R: Float64 = a + b * ( c + x ) / y - z
    return R

print(pemdas(3,6,5,4,3,7))
```


$$ 3 + 6 \times (5 + 4) \div 3 - 7 = 14$$


```
fn mul(x: Int, y: Int) -> Int:
    return x * y

print(mul(7,-12))
```

> `Division`
$$ (-84) \div (-12) = 7.0 $$

```haskell
fn div(x: Int, y: Int) -> Float64:
    return x / y

print(div(-84,-12))
```
## Precedence
---

$$parenthetic    $$ $$2(\sqrt{16})$$
```
fn par(x: Int) -> Int:
    return x * sqrt(16)
print(par(2))
```


$$exponentiation $$ $$2^2$$
```
fn exp(x: Int) -> Int:
    return 2 ** 2
print(exp(2))
```


$$multiplication $$ $$2 * 2$$

```
fn mul(x: Int) -> Int:
    return x * x
print(mul(2))
```

$$division       $$ $$2 \div 2$$


```
fn div(x: Float64) -> Float64:
    return x / x 
print(div(2))
```


$$addition       $$ $$2 + 2$$
```
fn add(x: Int) -> Int:
    return x + x 
print(add(2))
```



$$subtraction    $$ $$2 - 2$$

```
fn sub(x: Int) -> Int:
    return x - x 
print(sub(2))
```











```
- expression
- equations
- inequalities
- functions
```




Notation
Expression
Function


**Solving Equations**

$$
4x + 2x -7 +9 +x = 5x -x
$$

$$
(4x + 2x + x) + (-7 +9) = 5x -x
$$

$$
7x+2=5x-x
$$

$$
7x - 4x + 2 = 4x - 4x
$$

$$
3x+2=0
$$

$$
3x+\left\{2-2\right\}=0-2
$$

$$
3x=-2
$$

$$
3÷3x=-2÷3
$$

$$
x=-\frac{2}{3}
$$

**Solving Inequalities**

**Graphing Inequalities** 

- Open Circle - used when the endpoint is *not included* in the solution
    - $x > 2  or  x < 2$
- Closed Circle - sed when the endpoint *is included* in the solution
    - $x \geq 2  or  x \leq 2$

$$
2x -5x+4\leq10
$$

$$
-3x+4\leq10
$$

$$
-3x+4-4\leq10-4
$$

$$
-3x\leq6
$$

$$
x\geq-2
$$

Coordinate Plane

- **Quadrant 01**: Both  x  and  y  are positive. (Top right)
- **Quadrant 02**:  x  is negative, and  y  is positive. (Top left)
- **Quadrant 03**: Both  x  and  y  are negative. (Bottom left)
- **Quadrant 04**:  x  is positive, and  y  is negative. (Bottom right)

**Rate Of Change:** refers to the measure of how one quantity changes in relation to another quantity. In algebra, it’s commonly used to describe how the value of a variable changes with respect to time or another variable. For linear relationships, the rate of change is constant and is equivalent to the *slope* of the line, calculated as the change in the  y -value divided by the change in the  x -value between two points. Rate of change is essential in understanding trends and making predictions in various contexts, such as speed in physics, economic growth rates, and gradients in calculus.

**Positive Rate of Change:** occurs when one quantity increases as the other quantity also increases. In the context of a graph, this is represented by a line or curve that rises as it moves from left to right. A positive rate of change indicates a direct or proportional relationship between the variables.

- trend up

**Negative Rate of Change:** occurs when one quantity decreases as the other quantity increases, indicating an inverse relationship between the variables. On a graph, this appears as a line or curve that falls as it moves from left to right. A negative rate of change means that as one variable goes up, the other goes down.

- trend down

**Slope**: In a linear equation represented as  y = mx + b , the slope  m  quantifies how steep the line is. It is calculated as the change in  y  divided by the change in  x  (often referred to as “rise over run”).

$$
m = \frac{y_2-y_1}{x_2-x_1}
$$

$$
\frac{2-(-8)}{-6-(-3)}=\frac{10}{-3}
$$

$$
\frac{2-(-8)}{-6-(-3)}=\frac{10}{-3}
$$

**Double Negative Rule:** subtracting a negative number is equivalent to adding its positive counterpart **** $-(-y_1) = y_1$  

Given a set of coordinates 

$$
(x_1,y_1)  (x_2,y_2)
$$

$y_1$ and  $y_2$ can be used interchangeably in the formula  $y=mx+b$ to determine the slope-intercept.

$$
y=mx+b
$$

$$
2=\frac{-10}{3} \times -6 + b
$$

$$
2=\frac{60}{3}+ b
$$

$$
2-2=20-2+b
$$

$$
0=18+b
$$

The **y-intercept** is the point where a graph intersects the y-axis, indicating the value of the dependent variable (usually y) when the independent variable (usually x) is zero. Conversely, the **x-intercept** is the point where a graph intersects the x-axis, representing the value of the independent variable (usually x) when the dependent variable (usually y) is zero. Together, these intercepts help define the position of a graph in a Cartesian coordinate system.

$$
x=-3
$$


**Operator**: A symbol representing a mathematical operation, such as +, -, *, or /.

**Operand**: The values (variables or constants) upon which an operator acts in an expression. For example, in 3 + x, 3 and x are operands, and + is the operator.

**Foundations of Algebra and Basic Operations**

**Absolute Value**: The distance of a number from zero on the number line, always non-negative. Denoted as |a|.

**Transitive**: A property of equality and inequality where if a = b and b = c, then a = c.

**Reflexive**: A property of equality that states any number is equal to itself; for example, a = a.

**Polynomial Expressions**

**Polynomial**: An algebraic expression that consists of variables and coefficients, combined using addition, subtraction, and multiplication, with non-negative integer exponents. Example: 3x^2 + 2x - 5.

**Radicals and Exponents**

**Radical**: An expression that includes a root symbol $\sqrt{}$, often representing the square root or other roots (e.g., cube root).

**Logarithmic and Exponential Expressions**

**Logarithmic**: Pertains to a function, the logarithm, which is the inverse of an exponential function. It answers the question, “To what power must a base be raised to produce a given number?” Example: \log_b x is the logarithm of x with base b.

**Basics of Functions**

**Function**: A relation in which each input (or x-value) has exactly one output (or y-value). A function can be represented as f(x).

**Quadratic Functions**

**Quadratic**: A polynomial of degree 2, with the standard form $ax^2 + bx + c = 0$, where a, b, and c are constants, and $a \neq 0$.

**Conic Sections**

**Conic Section**: A curve obtained by intersecting a cone with a plane; includes circles, ellipses, parabolas, and hyperbolas.

**Tangent**: In geometry, a line that touches a curve at a single point without crossing it. For circles, it’s a line perpendicular to the radius at the point of contact.

**Linear Functions**

**Slope**: A measure of the steepness of a line on the Cartesian plane, defined as the change in y-values divided by the change in x-values between two points. Formula: \frac{y_2 - y_1}{x_2 - x_1}.

**Cartesian Coordinate Plane**: A two-dimensional plane divided by a horizontal x-axis and a vertical y-axis, allowing points to be represented as ordered pairs (x, y).

**Sequences and Series (Discrete Functions)**

**Sequence**: An ordered list of numbers, often following a specific pattern or rule. Example: $1, 2, 4, 8, \ldots$.

**Series**: The sum of the terms of a sequence. Example: $1 + 2 + 4 + 8 + \ldots$.

**PEMDAS**: This acronym stands for Parentheses, Exponents, Multiplication and Division (from left to right), Addition and Subtraction (from left to right). It is the order of operations used to solve mathematical expressions.

In arithmetic, aside from numbers, several other concepts can be classified - 

1. **Operations** -  Arithmetic operations can be classified into basic operations (addition, subtraction, multiplication, division) and advanced operations (exponentiation, roots).
2. **Properties of Operations** -  These include associative, commutative, and distributive properties, which describe how numbers interact during operations.
3. **Expressions** -  Mathematical expressions can be classified as algebraic (involving variables) or numerical (involving only numbers), as well as linear or nonlinear based on their form.
4. **Equations** -  Equations can be classified as linear, quadratic, polynomial, rational, and exponential, based on the degree and type of the terms involved.
5. **Inequalities** -  Similar to equations, inequalities can be classified into linear and nonlinear based on their expressions, as well as strict (using < or >) or non-strict (using ≤ or ≥).
6. **Functions** -  Although primarily related to numbers, functions can be classified based on their behavior and form, such as linear, quadratic, exponential, and logarithmic functions.
7. **Sequences and Series** -  These can be classified into arithmetic sequences (with a constant difference) and geometric sequences (with a constant ratio), among others.
8. **Patterns** -  In arithmetic, numerical patterns can be identified and classified, such as increasing sequences, repeating patterns, or symmetric arrangements.

**BODMAS**: Similar to PEMDAS, this acronym stands for Brackets, Orders (which includes exponents), Division and Multiplication (from left to right), Addition and Subtraction (from left to right). It represents the order of operations in mathematics.

**LIFO (Last In, First Out)**: This is a method of inventory management or data structure where the most recently added item is the first one to be removed. It's commonly used in stack data structures.

**FIFO (First In, First Out)**: This method indicates that the first item added to a queue will be the first one to be removed. It's often used in inventory management and queues in computer science.


$$ \frac{1}{6} \times \frac{1}{5} \times \frac{7}{4} $$
$$\frac{7}{120} $$
---
$$ \frac{2}{3} ÷ \frac{8}{3} $$
$$ \frac{2}{3} \times \frac{3}{8} $$
$$ \frac{6}{24} = \frac{1}{4} $$
---
$$ \frac{4}{9} + \frac{5}{12} $$
$$ \frac{4*4}{9*4} + \frac{5*3}{12*3} $$
$$ \frac{16}{36} + \frac{15}{36} $$
$$ \frac{31}{36} $$
---
$$ 6\frac{3}{5} + 7\frac{3}{5} $$
$$ \frac{6*5+3}{5} + \frac{7*5+3}{5} $$
$$ \frac{33}{5} + \frac{38}{5} $$
$$\frac{71}{5} = 14\frac{1}{5}$$
---

$$5\frac{5}{6} + 2\frac{3}{5}$$
$$\frac{5*6+5}{6} + \frac{2*5+3}{5}$$
$$\frac{35*5}{6*5} + \frac{13*6}{5*6}$$
$$\frac{175}{30} + \frac{78}{30} = \frac{253}{30}$$
$$8\frac{13}{30}$$
$$2\frac{1}{2} ÷ 3\frac{1}{3} = 2\frac{1}{2} \times 3\frac{3}{1}$$
$$\frac{2*2+1}{2} \times \frac{3*1+3}{1}$$
$$\frac{5}{2} \times \frac{6}{1} = \frac{30}{2}$$
$$\frac{30}{2} = 15$$
$$\frac{2*2+1}{2} + \frac{3*3+1}{3} = \frac{5}{2} + \frac{10}{3}$$
$$\frac{5*3}{2*3} + \frac{10*2}{3*2} = \frac{15}{6} + \frac{20}{6}$$
$$\frac{35}{6} = 5\frac{5}{6}$$
$$8-(5-13)+2-7$$
$$4÷2+(8-3)^2$$
$$4÷2+(5)^2$$
$$4÷2+25$$
$$2+25=27$$
$$frac{-4}{-2}$$




```
# linear algebra
# vectors
# matricies
# equations
# eigen
# transforms
# svd
# ai/ml
# tensors
```
