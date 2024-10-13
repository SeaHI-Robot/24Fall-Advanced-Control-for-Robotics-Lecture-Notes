---
layout: page
title: Lecture 2
---

# Lecture 2
<br>

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
<br>

</details>

---
<br>

## Matrix Exponential
{: .fs-7}
<br>


### **1. What is the "Euler's Number" $e$ ?**
{: .fs-6}
> For an ODE: $\dot{z} = a z(t),\text{with initial condition } z(0)=z_0$, we tend to find some term whose derivitive is itself, which would be wonderful!

<br>
   

$$
\text{We don't need } e, \text{we need } e^x !
$$

<br>

$$
\text{Since } e^x \text{ has its derivitive that equals to itself !}
$$



<br>

### **2. Complex Exponential**
{: .fs-6}
> Expansion of $e^x$ can bu generalized! 

- For real number $x\in\mathbb{R}$, Taylor Approximation gives:
$$
\begin{aligned}e^x=\sum_{k=0}^\infty\frac{x^k}{k!}=1+x+\frac{x^2}{2!}+\frac{x^3}{3!}+\cdots\end{aligned}
$$

- This could be extended to complex number, since the basic rules of math operation still holds:
$$
\begin{aligned}e^z=\sum_{k=0}^\infty\frac{z^k}{k!}=1+z+\frac{z^2}{2!}+\frac{z^3}{3!}+\cdots\end{aligned}
$$
 
To be mentioned, combined with Taylor Approximation of $\sin(\theta)$ and $\cos(\theta)$, we can lead to Euler's Formula. 


<br>

### **3. Matrix Exponential**
{: .fs-6}
> Expansion of $e^x$ extends to Matrix! 

Similar to the real and complex cases, we can define the so-called matrix
exponential:

$$
e^A\triangleq\sum\limits_{k=0}^\infty\frac{A^k}{k!}=I+A+\frac{A^2}{2!}+\frac{A^3}{3!}+\cdots 
$$

### **4. Properties of Matrix Exponential**
{: .fs-6}


- $Ae^{A}= e^{A}A$

- $e^{A}e^{B}= e^{A+ B}$if$AB=BA$

- If $A=PDP^{-1}$, then $e^A=Pe^DP^{-1}$

- For every $t,\tau\in\mathbb{R},e^Ate^{A\tau}=e^{A(t+\tau)}$

- $\left ( e^A\right ) ^{- 1}= e^{- A}$




<br>


### **5. Autonomous Linear Systems**
{: .fs-6}
> "自动"线性系统，系统的发展和自己的状态有关; 

$$
\dot{x}(t)=Ax(t),\quad\text{with initial condition}x(0)=x_0, \quad x(t)\in\mathbb{R}^n, A\in\mathbb{R}^{n\times n}\text{ is constant matrix,} x_0\in\mathbb{R}^n\text{ is given.}
$$

<br>

**Solution:**

$$
x(t)=e^{At}x_0
$$




<br>


## **Rotation Operation via Differential Equation**
{: .fs-7}
> For a rotation process, it can be expressed as an ODE: $\dot{p}(t)=\hat{\omega}\times p(t)=[\hat{\omega}]p(t),\text{with }p(0)=p_0$, solution: $p(t)=e^{[\hat{\omega}]t}p_{0}$ 

<br>

After $t=\theta$:

$$
p(\theta) = [\hat{\omega}]p(\theta)
$$


<br>

<center>
$$
\begin{array}{l}\text{Every rotation matrix }R\text{ can be written as}R=\mathrm{Rot}(\hat{\omega},\theta)\triangleq e^{[\hat{\omega}]\theta}\text{,i.e.,it}\\\text{represents a rotation operation about }\hat{\omega}\text{ by } \theta.\end{array}
$$
</center>



<br>

<br>
---
**Not Finished Yet**


<br>
<br>


[Back to Top](#)
