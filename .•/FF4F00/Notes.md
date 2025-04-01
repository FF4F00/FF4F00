# Notes

to:do
<hr>
==Model Context Protocol==

- [ ] `1.` FF4F00 (Laravel)
	- [ ] Core
		- [x] FF4F00 (Octane)
		- [ ] picows (Reverb)
	- [ ] Routing
		- [ ] definition and handling
		- [ ] model binding
		- [ ] caching
			- [ ] cache drivers
				- [ ] file
				- [ ] database
				- [ ] redis
			- [ ] cache tagging
		- [ ] Static File Serving
	- [ ]  Event System
		- [ ] even broadcasting
		- [ ] event listeners
	- [ ] Signals
	- [ ] Compression
		- [ ] zstd
	- [ ] I8N / L10N
		- [ ] gettext (builtin)
			- [ ] multi-language support
			- [ ] language file management
		- [ ] zoneinfo (builtin)
	- [ ] Database
		- [ ] ORM (SurrealDB)
			- [ ] abstraction layer
			- [ ] query builder
			- [ ] model relationships
		- [ ] graphQL
		- [ ] Database Migrations
			- [ ] version control for database schema
			- [ ] database seeding
		- [ ] Meilisearch (Scouts)
	- [ ] File Storage
		- [ ] local and cloud storage integration
		- [ ] file upload handeling
	- [ ] Authentication
		- [ ] authentication system
		- [ ] authentication guards
		- [ ] password reset functionality
		- [ ] iD (Socialite)
		- [ ] iD (JWT)
	- [ ] Authorization
		- [ ] gates for defining authorization rules
		- [ ] policies for model-specific authorization
	- [ ] Session Management
		- [ ] Cookies
	- [ ] Validation
		- [ ] form request validation
		- [ ] custom validation rules
	- [ ] Queues
		- [ ] job queueing and processing
		- [ ] multiple queue drivers
	- [ ]  Task Scheduling
		- [ ] cron-job like task scheduling
		- [ ] FF4F00 Task Queues (Horizon)
	- [ ] Error Handling and Logging
		- [ ] exception handling
		- [ ] logging configuration
	- [ ] Testing
		- [ ] unit Integration
		- [ ] browser testing
	- [ ] Security
		- [ ] CSRF protection
		- [ ] XSS protection
		- [ ] SQL injection prevention
	- [ ] Template Engine
		- [ ] component system
		- [ ] directives and control structures
		- [ ] HTMX (Echo)
	- [ ] Marketplace
		- [ ] Bazaar (Cashier)
	- [ ] Mail
		- [ ] malleable functions
		- [ ] multiple mail drivers
	- [ ] Notifications
		- [ ] multi-channel notifications (mail, SMS, Slack)
	- [ ] Admin Panel
		- [ ] Telemetry (Pulse, Telescope)
		- [ ] Feature Flags (Pennant)
		- [ ] AWS/Bhyve/Bastille (Sail)
	- [ ]  Console
		- [ ] command line interface for FF4F00
			- [ ] agentic
			- [ ] mcp server
			- [ ] prompt to build
			- [ ] framework batteries included guard rails
		- [ ] custom command creation
		- [ ] Modular LSP (Pint)
	- [ ] Package Management
		- [ ] magic integration
- [ ] `2.` iD (_Authentication_)
- [ ] `3.` IO (_Firebase, Laravel Cloud_)
	- [ ] Network Layer
	- [ ] Compute Layer
	- [ ] Data Layer
	- [ ] Storage Layer
	- [ ] Dashboard
- [ ] `4.` Bazaar (Marketplace)
- [ ] `5.` cirqol (Community)
	- [ ] M87 (Social Network)
	- [ ] Broadcast (Streaming)
		- [ ] Syndication
	- [ ] Queue (Messaging)
	- [ ] Beacon (Notifications)
	- [ ]  Synergy (Engagement)
- [ ] `6.` Maia
- [ ] `7.` UI ()
	- [ ] Zuri
	- [ ] Canvas
- [ ] `8.` XYZ (AI powered Design Language)
- [ ] `9.` `02LAUNCH` (Accelerator) Gamification
	- [ ] MARS (Salesforce)
	- [ ] HALO (Salesforce)
	- [ ] `0G` (Salesforce)














`magic run pip install surrealdb`
`magic run pip install "strawberry-graphql[debug-server]"`
`magic run pip install cdp-sdk`



Bazaar - you really don't have to setup an true crypto network, thats not the smartest strategy what you want is the existing fiat system, per user transaction ledger and the illusion of transacting in bitcoin during the transacting phase. Design the user interface to appear to the user that they are transacting in BTC, in actuality it's just fiat on the merchant side of things, as such we hold a large portion of BTC, and payout to merchants from our holdings and at the end of each day convert the fiat to BTC. This just effectively changes when the the conversion happens we feel that its better for us to choose when conversion is most advantageous depending on the price of BTC, so conversion is at our discretion but functionally this means nothing to the user, all transactions are just represented as BTC, fiat is never recognised as a legit currency. So you just need to wrap a fiat payment system 
1. Interaction with server
	1. Create Wallet
	2. Observe Balance 
	3. Transfer BTC I/O
2. Purchase BTC directly in app
3. Physical Card
	1. Spend Crypto like Fiat 
		1. Conversion at POS/Time of purchase


web framework
<hr>

1. only works as backbend _api_ for apple(multi platform), android(multi platform), cf pages, 
2. api compiles down to single binary
3. deploys to AWS
















## Syntax
Types
<hr>
The Types section covers the classification of data and variables in programming languages. It explains the distinction between primitive types, such as integers, floats, and booleans, and complex types like arrays, lists, and objects. Understanding types is crucial because they dictate how data can be manipulated, stored, and interacted with, ensuring proper memory allocation and efficient execution of code.




1.001
<hr>

Type Checking
- Static
- Dynamic
- Gradual

Type Enforcement
- Strong
- Weak

Type Inference
Explicit
Implicit

Type Polymorphism
- Ad-Hoc
- Parametric
- Sub-typing

Type Mutability
- Mutable
- Immutable



1.002
<hr>

The **Primitives** section deals with the most basic data types provided by programming languages, such as integers, floating-point numbers, characters, and booleans. These primitives form the building blocks of more complex data structures and operations. Understanding primitives is essential for efficient memory management and computational tasks, as they determine how the language handles basic data and operations.

---




#### Boolean
---
The `Bool` type represents a Boolean value, which can be either `True` or `False`. 



> Haskell 
```haskell
b :: Bool -> IO (); b x = print x
main :: IO (); main = do; b True
```

> C23

With C23 booleans are fully integrated into the language. The `bool` type and the `true`/`false` literals are now keywords, eliminating the need for `<stdbool.h>`. Additionally, scalar values are implicitly convertible to `bool`, enhancing type safety and making code more intuitive. This change ensures boolean logic is a core part of the language, improving consistency and readability.

```c
#include <stdio.h>

void p(long long value, const char* format) {
    printf(format, value);
}

int main() {
    bool t = true;
    bool f = false;

    p(t, "%lld\n");
    p(f, "%lld\n");

    return 0;
}
// using legacy C99 booleans
// #include <stdbool.h>
```

> SQL 

```sql
-- surreal
DEFINE FIELD b AS BOOLEAN;

-- neon
CREATE TABLE types (b BOOLEAN);
```






#### Character
---

Char - The `Char` type represents a single Unicode character.

> Haskell 
```haskell
c :: Char  -> IO (); c x = print x
main :: IO (); main = do; c 'λ'
```

> C23
```c
// C23 examples
// char
// signed char
// unsigned char
```

> SQL
```sql
-- surreal
DEFINE FIELD c AS STRING;
DEFINE FIELD c AS STRING(1);

-- neon
CREATE TABLE types (c CHAR(50));
CREATE TABLE types (c VARCHAR(10));
```






#### Float
---


> Haskell 
```haskell
f :: Float -> IO (); f x = print x
main :: IO (); main = do; f 1.0
```

> C23

```c
// code goes here
```

> SQL

```sql
-- code goes here
```


Float - he `Float` type represents a single-precision floating-point number (i.e., a decimal number).



```
sign
|
|   exponent      mantissa
|   |             |
[31][30][...][23]•[22][][][][][][][][][0]
\_/ \___________/ \_____________________/
|        |       |
1bit     8bits   23bits
```

==Haskell==
Float - 32 bit floating point number
Double - 64 bit floating number
==C==
float 32bit floating point number
double 64 bit floating point number
long double 80-128 bit depending on system
==SQL==
_surreal_
Float - Represents a 64-bit floating-point number.
Double - Represents a 128-bit precise decimal number.
==SQL==
_standard_
BIGINT 64BIT
FLOAT 32BIT
REAL 32BIT
DOUBLE / DOUBLE PRECISION 64BIT DOUBLE PERCISION
DECIMAL / NUMERIC
BIT









#### Integer
---


Int - The `Int` type represents a fixed-precision integer (whole numbers). The exact range of values for `Int` is platform-dependent, but it's typically large enough for many applications (e.g., it can represent numbers in the range from `-2^29` to `2^29-1` on 32-bit systems).

> Haskell 
```haskell
i :: Int   -> IO (); i x = print x
main :: IO (); main = do; i 444
{--
Int 32bit on 32 bit systems and 64bit on 64 bit systems
Integer - arbitrary precision signed integer
word - platform dependent unsigned integer similar to int
int8 - 8 bit signed integer 
int8 - 16 bit signed integer 
int8 - 32 bit signed integer 
int8 - 64 bit signed integer 

word8 - 8 bit unsigned integer
word16 - 16 bit unsigned integer
word32 - 32 bit unsigned integer
word64 - 64 bit unsigned integer
--}
```
> C23

```c
#include <stdio.h>
#include <limits.h>
void p(long long value, const char* format) {
    printf(format, value);
}
int main() {

    int imin                  = INT_MIN;    p(imin,  "INT_MAX:   %d\n"    );
    int imax                  = INT_MAX;    p(imax,  "INT_MAX:   %d\n\n"  );
    unsigned int uimin        = 0;          p(uimin, "UINT_MIN:   %u\n"   );
    unsigned int uimax        = UINT_MAX;   p(uimax, "UINT_MAX: %u\n\n"   );
    short smin                = SHRT_MIN;   p(smin,  "SHRT_MIN:   %d\n"   );
    short smax                = SHRT_MAX;   p(smax,  "SHRT_MAX: %d\n\n"   );
    unsigned short usmin      = 0;          p(usmin, "USHRT_MIN:  %u\n"   );
    unsigned short usmax      = USHRT_MAX;  p(usmax, "USHRT_MAX:%u\n\n"   );
    long lmin                 = LONG_MIN;   p(lmin,  "LONG_MIN:   %ld\n"  );
    long lmax                 = LONG_MAX;   p(lmax,  "LONG_MAX: %ld\n\n"  );
    unsigned long ulmin       = 0;          p(ulmin, "ULONG_MIN:  %lu\n"  );
    unsigned long ulmax       = ULONG_MAX;  p(ulmax, "ULONG_MAX:%lu\n\n"  );
    long long llmin           = LLONG_MIN;  p(llmin, "LLONG_MIN:  %lld\n" );
    long long llmax           = LLONG_MAX;  p(llmax, "LLONG_MAX:%lld\n\n" );
    unsigned long long ullmin = 0;          p(ullmin,"ULLONG_MIN:  %llu\n");
    unsigned long long ullmax = ULLONG_MAX; p(ullmax,"ULLONG_MAX:%llu\n\n");

	return 0;
}
```


> SQL

```sql
-- code goes here
```

==SQL==
_standard_
TINTINT 8BIT
SMALLINT 16BIT
INT / INTEGER 32BIT
==SQL==
_surreal_
Integer - Represents a 64-bit signed integer.







1.003
<hr>

The **Composites** section explores complex data types and structures built from primitive data types, such as arrays, lists, dictionaries, and objects. Composites allow for the organization and manipulation of large sets of data efficiently. This section highlights how composite structures enable the creation of more complex software solutions and improve the ability to manage relationships between multiple pieces of information.

---











accessor methods for all composites, indexing, iterate over, 



> Homogenous

#### Array



#### List



#### Map



#### Set



#### String

```
SPECIFIERS –––––––––––––––––––––––––––––
• –––––––––– • –––––––––– • –––––––––– •
| %c         | %d         | %e         |
• –––––––––– • –––––––––– • –––––––––– •
| %E         | %f         | %g         |
• –––––––––– • –––––––––– • –––––––––– •
| %G         | %i         | %o         |
• –––––––––– • –––––––––– • –––––––––– •
| %p         | %s         | %u         |
• –––––––––– • –––––––––– • –––––––––– •
| %x         | %X         | %%         |
• –––––––––– • –––––––––– • –––––––––– •


ESC SEQUENCES ––––––––––––––––––––––––––
• –––––––––– • –––––––––– • –––––––––– •
| \a         | \b         | \f         |
• –––––––––– • –––––––––– • –––––––––– •
| \n         | \r         | \t         |
• –––––––––– • –––––––––– • –––––––––– •
| \v         | \\         | \'         |
• –––––––––– • –––––––––– • –––––––––– •
| \"         | \?         | \ooo       |
• –––––––––– • –––––––––– • –––––––––– •
| \xhh       | \uhhhh     | \Uhhhhhhhh |
• –––––––––– • –––––––––– • –––––––––– •
```

```haskell
-- SPECIFIERS
-- • –––––––––– • –––––––––– • –––––––––– •
-- | %c         | %d         |  %e        |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | %E         | %f         |  %g        |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | %G         | %i         |  %o        |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | %s         | %x         |  %X        |
-- • –––––––––– • –––––––––– • –––––––––– •



-- ESC SEQUENCES
-- • –––––––––– • –––––––––– • –––––––––– •
-- | \a         | \b         | \f         |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | \n         | \r         | \t         |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | \\         | \'         | \\x        |
-- • –––––––––– • –––––––––– • –––––––––– •
-- | \v         |            |            |
-- • –––––––––– • –––––––––– • –––––––––– •
```

regex



#### Tree






> Heterogenous


#### Enum



#### Struct



#### Tuple













**Operators**
<hr>
The **Operators** section introduces the various symbols and constructs used in programming to perform operations on data. It covers arithmetic, relational, logical, and assignment operators that enable basic calculations, comparisons, and manipulations of variables. A solid understanding of operators is crucial for building functional and efficient algorithms that drive software behavior and decision-making processes.

2.001
<hr>
The **Arithmetic** section focuses on operators used for mathematical operations such as addition, subtraction, multiplication, division, and modulus. It also covers the precedence of these operations and how they impact the results of expressions. This section provides the foundational knowledge for performing calculations in code and ensures that developers can accurately manipulate numerical data in their programs.

2.002
<hr>
The **Logical** section examines the operators used for logical operations, such as AND, OR, and NOT, which are fundamental to decision-making in programs. Logical operators are used to evaluate conditions and control the flow of execution. This section emphasizes their importance in building decision trees, controlling loops, and forming complex conditional statements that govern program behavior.

2.003
<hr>
The **Bitwise** section explores operators that manipulate data at the binary level, operating directly on individual bits of integers. This section covers bit shifts, AND, OR, XOR, and NOT operations, explaining how they work and when to use them. Bitwise operations are often used in systems programming, performance optimization, and handling low-level data processing tasks.




**Keywords**
<hr>
The **Keywords** section provides an overview of reserved words in programming languages that have a predefined meaning and function. Keywords, such as `if`, `while`, and `return`, form the backbone of language syntax and control flow. Understanding how to use these keywords effectively is vital to writing correct and readable code, as they dictate how programs behave at a fundamental level.

3.001
<hr>
The **Data** section covers the types, storage, and manipulation of information within a program. It examines the different forms of data, such as numeric, textual, and binary, and the structures used to organize and process them. A strong grasp of data handling ensures that programmers can work with information effectively, optimizing storage and retrieval methods to improve program performance.

3.002
<hr>
The **Flow** section focuses on the control flow of a program, which dictates the order in which statements are executed. It covers conditional statements (like `if` and `switch`), loops (like `for` and `while`), and other constructs that influence the flow of execution. Mastering flow control is essential for creating logic that responds dynamically to various conditions and user inputs.

3.003
<hr>
The **Contextual** section explores how the meaning of a piece of code can change depending on its surroundings. This includes scoping rules, variable lifetime, and how names and values are interpreted based on the context in which they appear. Understanding the context is key for debugging and maintaining clean code, as it ensures variables and functions are used correctly within their appropriate environments.



## Semantics

**Semantics** - is the study of the meaning of words, symbols, and phrases in a programming language.
**Definition** - A statement that introduces a name for a value or function and assigns a corresponding value or expression to it.
**Declaration** - A declaration is a statement that introduces a named entity into the program, such as a function, constant, or variable.
**Binding** - The process of creating a relationship between a value and a name. The `let` keyword binds the declaration (e.g., `x`) of type `&str` to the value ("λ").
**Constant** - Immutable data contained within a named memory location, referenced by its unique identifier.
**Mutation** - The act or process of being altered or changed.
**Variable** - Mutable data contained within a named memory location, referenced by its unique identifier.
**Delimiter** - A character or a sequence of characters that indicates the beginning or end of a specific construct.
**Scope** - Block-level, local, or global visibility in the context of program execution.






Reading
<hr>





4.001
<hr>
The **Semantics** section focuses on the meaning and comprehension of programming constructs. Building on the understanding of syntax, this section delves deeper into **program literacy**—interpreting what programs mean and how they operate. It transitions learners into the **technique stage**, where the emphasis is on reading, understanding, and analyzing code as a process of computation.


4.002
<hr>
The **Semantics** section focuses on the meaning and comprehension of programming constructs. Building on the understanding of syntax, this section delves deeper into **program literacy**—interpreting what programs mean and how they operate. It transitions learners into the **technique stage**, where the emphasis is on reading, understanding, and analyzing code as a process of computation.


4.003
<hr>
The **Semantics** section focuses on the meaning and comprehension of programming constructs. Building on the understanding of syntax, this section delves deeper into **program literacy**—interpreting what programs mean and how they operate. It transitions learners into the **technique stage**, where the emphasis is on reading, understanding, and analyzing code as a process of computation.


Writing
<hr>






5.001
<hr>



5.002
<hr>



5.003
<hr>





Comprehension
<hr>





6.001
<hr>



6.002
<hr>



6.003
<hr>
Lazy
Eager
Concurrency
Cores
Threads
Parallelism
Asynchronous
Synchronous


## Synthesis

Design - Objective
Engineering Process - Execution
Validation - 
Agenda
Outline
Requirements
Roadmap
Strategy
Timeline


write 12 introductory synopsis for the topics in outline -> { analysis, market, cost, technical, specification objective, outline, timeline, implementation, operation, management, development}

- Outline
	- Analysis
		1. Market Analysis (How to find and evaluate problems)
			1. "Solving the right problems is just as important as asking the right questions, and in fact, they are reciprocal."
			2. this section teaches students how to ask the right questions to find the right problems to solve.
		2. Cost (how much will it cost to build, the financials of software engineering)
		3. Technical (feasibility study, constraints(time and cost))
	- Specification
		1. Objective (what being built)
		2. Outline (how its being built)
		3. Timeline(time to market )
	- Implementation
		1. Operations (Dev/Ops etc..)
		2. Management (Project Management )
		3. Development (Prompt to Production)





Analysis looks at finding problems worth solving so Market analysis is vital to that quest, once they find a problem they need to analyze  the cost to build, lastly technical analyses is about time to market given the current state of technology and feasibility  in relation to your timeline. Analysis is problem analysis, feasibility study, and cost and time constraints. Specification builds off analysis at this point students have a concrete problem they're working and specification outlines the problem they're trying to solve and how they are going to solve said problem 



Analysis
<hr>




7.001
<hr>



7.002
<hr>



7.003
<hr>

Design
design is what to build 
the specification of what to build is a detailed schematic outlining every detail of the solution


Engineering Spec
engineering is how designs come to life
the specification is a detailed plan that implores the systems, practices and tools of engineering in a detailed plan of execution a set of directions of directions 



Specification
<hr>




8.001
<hr>



8.002
<hr>



8.003
<hr>



Implementation 
<hr>



9.001
<hr>
Smooth operations are the backbone of successful software development. This section dives into DevOps practices, exploring tools and workflows that enhance collaboration between development and operations teams. You’ll learn about continuous integration, deployment, and monitoring processes that streamline development cycles. By implementing effective operational strategies, you’ll ensure your project runs efficiently, reduces downtime, and adapts quickly to changing requirements. This section provides practical insights into creating scalable, reliable, and high-performing systems, enabling seamless integration of development efforts into operational workflows.


9.002
<hr>
Project management is the key to maintaining control and achieving goals in software engineering. This section introduces core principles such as planning, organizing, and monitoring progress while adapting to evolving challenges. You’ll explore agile methodologies, resource allocation, risk assessment, and team leadership strategies. By learning how to balance competing priorities and manage expectations, you’ll ensure that your projects are completed on time, within scope, and aligned with stakeholder needs. This section equips you with the tools to effectively guide your team and manage the complexities of software development projects.


9.003
<hr>
The process of bringing software ideas to life requires creativity, precision, and iteration. This section focuses on the journey from initial concepts to fully developed products. You’ll learn about development cycles, from writing and testing code to refining and deploying solutions. Best practices in software engineering, such as version control and collaboration tools, are explored to ensure high-quality outcomes. By focusing on continuous improvement and adaptation, this section empowers you to transform ideas into functional, impactful software that meets user needs and market demands.


## Business Intelligence

>[!warning] Languages: { Elixir, Swift, SQL }

>[!error] No Esc Hatch { SwiftUI, Jetpack }


API <code> -> </code> FrontEnd

Acceptable Protocols and Data Formats
1. rest 
	1. Plain Text
	2. Form Data
	3. Binary Data
2. websockets
	1. Text
	2. Binary Data
3. grpc
	1. Protocol Buffers
	2. Standard Data Types
	3. Streaming Data

Unacceptable Protocols and Data Formats
1. GraphQL
2. JSON

Communications on the frontend makes use of _URLSession_ in relation to **SwiftUI** and _KTOR_ in relation to **Jetpack Compose**. The backend is written in **Elixir**(Phoenix) with support for _Gleam_ where type safety is a concern. API's can also be implemented in _Go_ as an alternative if specific performance characteristic (cpu intensive processing) are a concern. GRPC is only the protocol of choice if the backend API is written in Go, else the default is Rest and Web sockets  with and Elixir and Phoenix backend API, with Gleam integration as needed. 

Protocol buffers and schema go hand in hand you should develop them together giving careful thought to how you effectively codify your schema. 





**Philosophy: Native, Mobile-First Design**

The strategy focuses on delivering exceptional user experiences by targeting all Apple platforms via **SwiftUI** and Android/Windows platforms using **Jetpack Compose**. By committing to these modern declarative frameworks, we eliminate the need for JavaScript entirely, prioritizing native performance and platform-specific functionality. Web-based applications inherently lack the performance characteristics and deep integration with native features that SwiftUI and Jetpack Compose provide. While maintaining separate codebases introduces additional complexity, this can be effectively mitigated through the strategic use of **code generation tools**, enabling efficient development workflows and reduced duplication. Both SwiftUI and Kotlin's declarative paradigms make them uniquely suited for this approach.

**A Changing Landscape: From Web 2.0 to an Application-Centric Era**

The traditional web, as defined by the **Web 2.0** era of search engines and indexed content, is rapidly losing relevance. Platforms like Instagram and YouTube have become the primary discovery channels, far surpassing the influence of Google Search for the emerging generations. The cultural shift toward an **application-centric ecosystem** has reshaped user habits and expectations. Google, once synonymous with innovation, now mirrors IBM in its twilight, just before its decline. **ChatGPT and large language models (LLMs)** symbolize the final disruption to the old web paradigm. These AI-driven tools streamline the process of discovery by sifting through the vast, irrelevant noise of the web, offering users concise, conversational answers instead of requiring them to comb through outdated search results.

Consider the user experience: Why scroll endlessly through Yelp reviews to find a restaurant when an LLM can distill recommendations instantly? Why manually hunt for solutions to a math problem when an AI can walk you through it step-by-step? Users naturally gravitate toward the **path of least resistance**, and LLMs have demonstrated a superior way to access information and solve problems.

**The Case Against Web-Based Applications**

From both user and developer perspectives, **web-based applications pale in comparison to native alternatives**. Native applications offer better performance, superior UX, and deeper integration with platform-specific capabilities. For developers, the complexity of building and maintaining modern web apps—dealing with countless frameworks, browser inconsistencies, and performance trade-offs—is often greater than managing separate codebases for native platforms. SwiftUI and Jetpack Compose streamline development with declarative paradigms, making the maintenance of native apps a more sustainable and productive path forward.

**Web3: A Break from Web2's Legacy**

Web3 will not look or behave like Web2. The emerging paradigm focuses on decentralized and application-driven experiences, leaving behind the bloated, index-driven structure of Web2. As the world moves toward an application-first mindset, embracing native development ensures alignment with the evolving needs of users and developers alike.

<hr>

