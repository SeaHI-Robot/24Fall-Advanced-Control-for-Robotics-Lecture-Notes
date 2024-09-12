---
layout: page
title: haha
---

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
<br>

</details>



# 24Fall SDM5008 Advanced Robot Control - Lecture 1


<!-- [TOC] -->

## Rigid Body Configuration (Pose)

### Basic Concepts

1. **Free Vector**
> Geometriic quantity with length and direction

***Notation:***
$$
v \ \text{denotes a free vactor}
$$
$$
{}^Av \  \text{denotes a coordinate wrt frame\{A\}}
$$

<br>

$$
\text{Through "vector", we express "physice quantities" in different frames.}
$$


2. **Point**
> Point is NOT FREE VECTOR, a point $p$ specifies a "physical" point in space

***Notation:***
$$
p \ \text{denotes a point in a physical space,}
$$
$$
{}^Ap \  \text{denotes a coordinate wrt frame\{A\}}
$$


3. **Cross Product**
> Not much to say, except the skew-symmetric

***The Skew Symmetric Representation:***
$$
a \times b = [a]b, \ \
where [a] = 
\begin{bmatrix} 
0 & -a_3 & a_2 \\
a_3 & 0 & -a_1 \\
-a_2 & a_1 & 0 \\
\end{bmatrix}
$$
***The Skew Symmetric Properties:***
- $[a] = -[a]^\top$
- !!! $[a][b] - [b][a] = [a \times b]$ !!! ***Jacobi's identity***


4. **Rotation Matrix**
> "Orthonormal(Orthogonal)"

 

$$
{}^A R _B = [ {}^A \hat{x} _B, {}^A \hat{y} _B, {}^A \hat{z} _B  ]
$$

***Rotation Matrix Properties:***
- $R^\top R = I$
- $det(R) = 1$


5. **Spatial Orthogonal Group**
> "$SO(n)$" 

***Definition:*** 
Rotation Matrices in $\mathbb{R}^n$ is defined as:
$$
SO(n) = { R \in \mathbb{R}^{n \times n } : R^\top R = I, det(R) = 1}
$$

$$
{}^A R _B = [ {}^A \hat{x} _B, {}^A \hat{y} _B, {}^A \hat{z} _B  ]
$$



6. **Use of Rotation Matrix**
- 1. Representing an Orientation
- 2. Changing the reference frame $^A R _B$

$$
\text{point } P \text{ in frame } A: p_A = [ \alpha_1 \hat x_A,\ \alpha_2 \hat x_A,\ \alpha_3 \hat x_A  ], \\
\text{point } P \text{ in frame } B: p_B = [ \beta_1 \hat x_B,\ \beta_2 \hat x_B,\ \beta_3 \hat x_B  ]
$$
*Proof:*
$$
p_A = ^A p_A = [ \alpha_1 \ ^A \hat x_A,\ \alpha_2 \ ^A\hat x_A,\ \alpha_3 \ ^A\hat x_A  ]
$$

- 3. Rotationg a vector in a frame: $Rot(\hat\omega, \theta)$, which will be discussed later.

7. **Rigid Body Configuration (Pose)**

- Given a (free) vector $r$:
$$
^A {r} = ^A{R}_B \ ^A r \ \ \ \  \sqrt{}
$$
- Given a point $p$:
$$
^B p = ^A R _B \ ^B p \ \ \ \  \times
$$
<br>

$$
\text{Since: } \ \ ^A p = ^A( \vec{O_A P_A} ), ^B p = ^B( \vec{O_A P_B} ), \\\\
^A p = ^A( \overrightarrow{O_A P_A} ) = ^A ( \overrightarrow{O_A O_B} + \overrightarrow{O_B P_B} ) = ^A O _B + ^A R _B ^B p  \ \ \ \ \sqrt{}
$$


8. **Homogeneous Transformation**
\\ TODO
$$
^A T _B = blabla
$$
\\ TODO

***Notation:***
We use ~ to express a homogeneous expression of a vector in $SO(3)$

***QUIZ:***
*Prove that $^A T _B = ^A T _C \  ^C T _B.$*

## Rigid Body Velocity (Twist)
> 用旋量来描述刚体速度，可以实现coordinate-free。
>
> 在同一坐标系下描述刚体上的点的速度，避免使用变换矩阵的复杂运算。

- **General Motion:**

For a point "i" on a rigid body, its velocity could be expressed by:
$$
v_{p,i} = \frac{d p_i}{dt} = \frac{q + \overrightarrow{q p_i}}{dt} = v_{p, 0} + \vec{\omega} \times \overrightarrow{q p_i}, \\ \text{where } q \text{ is an intermediate point, that fixed on that rigid body.} 
$$

- What if "the $q$" is not on the rotation axis?
<!-- > Let's say we still keep the expression: $v_{p, i} = v_{q, 0} + \vec{\omega} \times \vec{q p_i}$ -->







[Back to Top](#)
