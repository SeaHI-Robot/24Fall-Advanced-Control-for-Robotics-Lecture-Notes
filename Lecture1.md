---
layout: page
title: Lecture 1
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



# Lecture 1

<br>

## Rigid Body Configuration (Pose)
{: .fs-7}
<br>


### **1. Free Vector**
{: .fs-6}
> Geometriic quantity with length and direction

<br>
   
***Notation:***

$$
v \ \text{denotes a free vactor}
$$

$$
{}^Av \  \text{denotes a coordinate w.r.t. frame\{A\}}
$$

<br>


Through "vector", we express "physice quantities" in different frames.


<br>

### **2. Point**
{: .fs-6}
> Point is NOT FREE VECTOR, a point $p$ specifies a "physical" point in space
<br>

***Notation:***

$$
p \ \text{denotes a point in a physical space,}
$$

$$
{}^Ap \  \text{denotes a coordinate w.r.t. frame\{A\}}
$$

<br>


### **3. Cross Product**
{: .fs-6}
> Not much to say, except the skew-symmetric
<br>

***The Skew Symmetric Representation:***
$$
a \times b = [a]b, \ \
where \  [a] = 
\begin{bmatrix} 
0 & -a_3 & a_2 \\
a_3 & 0 & -a_1 \\
-a_2 & a_1 & 0 \\
\end{bmatrix}
$$
<br>

***The Skew Symmetric Properties:***
- $[a] = -[a]^\top$
- !!! $[a][b] - [b][a] = [a \times b]$ !!! ***Jacobi's identity***

<br>

### **4. Rotation Matrix**
{: .fs-6}
> "Orthonormal(Orthogonal)"

<br>
 
<center>
$$
\text{frame B in frame A: }
{}^A R _B =
\begin{bmatrix}
{}^A \hat{x} _B& {}^A \hat{y} _B& {}^A \hat{z} _B  
\end{bmatrix}
$$
</center>

<br>

***Rotation Matrix Properties:***
- $R^\top R = I$
- $det(R) = 1$

<br>

### **5. Spatial Orthogonal Group**
{: .fs-6}
> "$SO(n)$" 
<br>

***Definition:*** 

$$
\text{Rotation Matrices in } \mathbb{R}^n \text{ is defined as: } \\
SO(n) = \{ R \in \mathbb{R}^{n \times n } : R^\top R = I, det(R) = 1\}
$$


<br>

### **6. Use of Rotation Matrix**
{: .fs-6}
- Representing an Orientation
- Changing the reference frame $^A R _B$


***Proof:***

$$
\text{point } P \text{ in frame } A: 
p_A = [ \alpha_1 \hat x_A,\ \alpha_2 \hat y_A,\ \alpha_3 \hat z_A  ], 
$$

$$
\text{point } P \text{ in frame } B: p_B = [ \beta_1 \hat x_B,\ \beta_2 \hat y_B,\ \beta_3 \hat z_B  ]
$$

$$
p_B = ^B p_B = 
\begin{bmatrix}
 \beta_1 \ ^B \hat x_B&\ \beta_2 \ ^B\hat y_B&\ \beta_3 \ ^B\hat z_B   
\end{bmatrix} = 
\begin{bmatrix}
\ ^B \hat x_B&\  \ ^B\hat y_B&\  \ ^B\hat z_B  
\end{bmatrix}
\begin{bmatrix}
\beta_1 \\
\beta_2 \\
\beta_3 \\
\end{bmatrix}
$$

$$
^A p_B = 
\begin{bmatrix}
 \beta_1 \ ^A \hat x_B&\ \beta_2 \ ^A\hat y_B&\ \beta_3 \ ^A\hat z_B   
\end{bmatrix} = 
\begin{bmatrix}
\ ^A \hat x_B&\  \ ^A\hat y_B&\  \ ^B\hat z_B  
\end{bmatrix}
\begin{bmatrix}
\beta_1 \\
\beta_2 \\
\beta_3 \\
\end{bmatrix} \\
\longrightarrow \ \   {}^A p _B = {}^A R _B \ p_B
$$

- Rotationg a vector in a frame: $Rot(\hat\omega, \theta)$, which will be discussed later.

<br>

### **7. Rigid Body Configuration (Pose)**
{: .fs-6}

- Given a (free) vector $r$:
<center>
$$
^A {r} = ^A{R}_B \ ^A r \ \ \ \  \sqrt{}
$$
</center>

- Given a point $p$:
<center>
$$
^B p = ^A R _B \ ^B p \ \ \ \  \times
$$
</center>
<br>

$$
\text{Since: } \ \ ^A p = ^A( \vec{O_A P_A} ), ^B p = ^B( \vec{O_A P_B} ), \\
$$

$$
^A p = ^A( \overrightarrow{O_A P_A} ) = ^A ( \overrightarrow{O_A O_B} + \overrightarrow{O_B P_B} ) = ^A O _B + ^A R _B ^B p  \ \ \ \ \sqrt{}
$$

<br>

### **8. Homogeneous Transformation**
{: .fs-6}

$$
^A T _B = \begin{bmatrix}
{}^A R _B & {}^A O _B  \\
0_{3 \times 3 } & 0  \\
\end{bmatrix}
$$


***Notation:***

We use ~ to express a homogeneous expression of a vector in $SO(3)$

**e.g.** 

$$
\vec p =
\begin{bmatrix}
a   \\
b  \\
c  \\
\end{bmatrix}, \ \tilde{p} = \begin{bmatrix}
a   \\
b  \\
c  \\
1  \\
\end{bmatrix}
$$ 

<br>
<br>
<br>

***QUIZ:***

*Prove: $^A T _B = ^A T _C \  ^C T _B.$*

<br>

---
<br>

## Rigid Body Velocity (Twist)
{: .fs-7}
> 用旋量来描述刚体速度，可以实现coordinate-free。
>
> 在同一坐标系下描述刚体上的点的速度，避免使用变换矩阵的复杂运算。

<br>

### **General Motion (Important Derications!)**
{: .fs-6}
<br>

#### *reference point on the rotation axis, and also body-fixed*
{: .fs-4 }
<br>

For a point "i" on a rigid body, its velocity could be expressed by:
$$
v_{pi} = \frac{d p_i}{dt} = \frac{p_0 + \overrightarrow{p_0 p_i}}{dt} = v_{p_ 0} + \vec{\omega} \times \overrightarrow{p_0 p_i}, \\ \text{where } p_0 \text{ is at the rotation axis, and fixed on the body.} 
$$
<br>

#### *What if reference point is not on the rotation axis?*
{: .fs-4 }
<br>

Considering arbitrary body-fixed point $q$, with velocity $v_q$:


$$
v_{p_i} = v_{q} + \vec{\omega} \times \overrightarrow{q p_i}
$$


***Proof:***

By using $p_0$ above as an intermediate variable:

$$
\text{Since } q \text{ is also a fixed point on the rigid body: }\\

\begin{align*}
\longrightarrow v_q = &  \ v_{p_0} + \omega \times \overrightarrow{p_0 q} \\
\ = &  \ v_{p_i} -\vec{\omega} \times \overrightarrow{p_0 p_i}  + \omega \times \overrightarrow{p_0 q} \\

\longrightarrow v_{p_i}= &  \ v_{q} + \omega \times \overrightarrow{q p_i} \\
\end{align*}
$$

<br>

#### *What if the reference point is not fixed on the rigid body?*
{: .fs-4 }
> Let's say we still want to keep the "$v + \omega \times p$" formulation.
<br>

Now we note the "$q = q(t)$" becomes "$r$", to make it clear, $r$ is not body-fixed.

Although $r$ is not "physically" on the rigid body, however, we assume $r$ is still "extended" from that rigid body, still "body-fixed".

At some moment $t$, validated by the relationship we derived above:

$$
v_{p,i} = v_{q(t)} + \omega \times \overrightarrow{q p_i}(t)
$$

$$
\text{If we define: } v_r = v_{q(t)}, \text{then } v_{pi} = v_r + \omega \times \overrightarrow{rp_i}
$$


<br>
<br>

***Conclusion:***

$$
\text{For any body-fixed point } p \text{ on the rigid body: } \\
v_{pi} = v_r + \omega \times \overrightarrow{rp_i}
$$

<br>

### **Spatial Velocity (Twist)**
{: .fs-6}
> After the above derivation, define spatial velocity (Twist)

<br>

$$
\nu_r = [\omega, v_r]^\top, \nu_r \in \mathbb{R}^6
$$

#### An Interpretation
{: .fs-4 }

<br>

$$
\text{A rigid body with } \nu_r = [\omega, v_r]^\top \text{ can be "thought of" as translation at } v_r, 
$$

<center>
$$
\text{ while rotating with augular velocity } \omega \text{ about an axis passing through } r
$$
</center>
<br>

#### Spatial Velocity Representation (in a Reference Frame)
{: .fs-4 }
> Some Notations (**!!! Important !!!**)

<br>

- Given frame $\{A\}$ and a spatial velocity $\nu$

- Choose $O_A$, the origin of frame $\{A\}$ as a reference point

- Coordinates of $\nu$ in frame $\{A\}$:

$$
{}^A \nu_{O_A} = [ {}^A \omega, {}^A v _{O_A} ] ^ \top
$$

- By default (for the notiation), we assume the origin of the frame is used as the reference point: ${}^A \nu = {}^A \nu_{o_A}$ , ${}^A v = {}^A v_{O_A}$

<br>

#### Spatial Velocity (Twist) Transformation
{: .fs-4 }

<br>

$$
\text{For twist in frame } A \text{ and frame B, there relationshaip is connected by:}  
$$

$$

{}^A\nu = ^A X _B \ ^B\nu, \ \ \ \

where \ ^AX_B = \begin{bmatrix}
^A R _B & 0  \\
[^AO_B]^A R _B & ^A R _B  \\
\end{bmatrix} 
$$




***Proof:***

Let's say we want to express $\nu_A$ with $\nu_B$, define the transformation matrix $^AX_B$:

$$
\nu_A = ^AX_B \nu_B
$$

- **For the angular velocity**:

$$
^A\omega = ^A R_B ^B \omega
$$

- **For the linear velocity**:

Imagin frame {$A$} and frame {$B$}, we have the "Physics":

$$
\text{"Physicss":  }v_{O_A} = v_{O_B} + \omega \times \overrightarrow{O_B O_A}
$$

In frame {$A$}:

$$
^Av_{O_A} = ^Av_{O_B} + ^A\omega \times (- ^A O _B)
$$

$$
\longrightarrow {^Av_{O_A} = ^AR_B ^Bv_{O_B} + ^AR_B^B\omega \times (- ^A O _B)}
$$

$$
\longrightarrow {^Av_{O_A} = ^AR_B ^Bv_{O_B} +  ^A O _B \times ^AR_B^B\omega}
$$

- **Combine angular and linear velocity together (Twist):** 

$$
^A\omega = ^A R_B ^B \omega, \text{where } ^AX_B = \begin{bmatrix}
^A R _B & 0  \\
[^AO_B]^A R _B & ^A R _B  \\
\end{bmatrix} 

$$


<br>

## Screw Motion (Geometric Aspect)
{: .fs-7}
<br>



[Check Lecture Slides about Screw Motion: Page 26](https://seahi-robot.github.io/24Fall-Advanced-Control-for-Robotics-Lecture-Notes/assets/LN1_RigidBodyMotion.pdf)

---
**Not Finished Yet**


<br>
<br>


[Back to Top](#)
