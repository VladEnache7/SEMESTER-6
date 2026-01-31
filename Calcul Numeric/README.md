
# 🔢 Numerical Calculus

This course bridges the gap between theoretical mathematical analysis and practical computer implementation. It focuses on designing, analyzing, and implementing algorithms to solve continuous mathematical problems that cannot be solved analytically (or efficiently) by hand.

### 📅 Weekly Syllabus

The curriculum progresses from basic error analysis to complex integration and non-linear equation solving.

| Week | 👨‍🏫 Lecture Content | 💻 Laboratory Focus (MATLAB) |
|:---:|:---|:---|
| **1** | **Preliminaries:** Taylor polynomials, Error sources, Stability, Conditioning. | **Lab 1:** Introduction/Review of **MATLAB**. |
| **2** | **Linear Systems (Direct):** Gaussian elimination, LU, LUP, QR, Cholesky factorizations. | **Lab 2:** Taylor polynomials & Error propagation analysis. |
| **3** | **Linear Systems (Iterative):** Jacobi, Gauss-Seidel, SOR methods. Matrix conditioning. | **Lab 3:** Newton’s divided and finite differences. |
| **4** | **Interpolation I:** Lagrange interpolation, Optimal choice of nodes. | **Lab 4:** Linear Systems I: Gaussian elimination & Factorizations. |
| **5** | **Interpolation II:** Barycentric formula, Newton’s form, Aitken’s algorithm. | **Lab 5:** Linear Systems II: Iterative methods (Jacobi, SOR). |
| **6** | **Hermite Interpolation:** Interpolation with double nodes, General/Special cases. | **Lab 6:** Lagrange Interpolation I: Fundamental polynomials. |
| **7** | **Birkhoff Interpolation:** Peano’s theorem, Birkhoff fundamental polynomials. | **Lab 7:** Lagrange Interpolation II: Aitken’s algorithm. |
| **8** | **Splines:** Linear and Cubic splines. Least Squares approximation. | **Lab 8:** Hermite interpolation with double nodes. |
| **9** | **Differentiation & Integration:** Newton-Cotes quadratures (Trapezoidal, Simpson’s). | **Lab 9:** Cubic spline interpolation & Least Squares. |
| **10** | **Advanced Integration:** Adaptive quadratures, Romberg’s method, Gaussian quadratures. | **Lab 10:** Numerical Integration I: Newton-Cotes rules. |
| **11** | **Non-linear Equations:** Bisection, Secant, Newton’s method. Convergence analysis. | **Lab 11:** Numerical Integration II: Romberg & Gaussian methods. |
| **12** | **Systems of Non-linear Equations:** Newton’s method for systems. | **Lab 12:** Numerical methods for non-linear equations. |

---

### 💻 Laboratory & Algorithms

The laboratories are strictly focused on implementing the mathematical formulas discussed in lectures using **MATLAB**.

#### 🧪 Unit 1: Fundamentals & Linear Algebra
*   **Error Analysis:** Understanding how floating-point arithmetic errors propagate.
*   **Systems:** Solving $Ax = b$ using:
    *   **Direct Methods:** $LU$ decomposition (fast for multiple $b$), Cholesky (for symmetric positive-definite matrices).
    *   **Iterative Methods:** $x^{(k+1)} = M x^{(k)} + c$. Essential for sparse matrices where $O(n^3)$ direct methods are too slow.

#### 🧪 Unit 2: Approximation & Interpolation
*   **Lagrange:** Finding a polynomial that passes exactly through a set of points.
*   **Splines:** Connecting points with smooth piecewise polynomials (Cubic Splines) to avoid the oscillatory "Runge phenomenon" seen in high-degree polynomials.
*   **Least Squares:** Fitting a function to data that has noise (regression), minimizing the sum of squared errors.

#### 🧪 Unit 3: Quadrature (Integration)
*   **Newton-Cotes:** Approximating $\int_a^b f(x) dx$ using Trapezoidal and Simpson rules.
*   **Romberg:** Using Richardson extrapolation to improve the accuracy of the Trapezoidal rule.
*   **Gaussian Quadrature:** Selecting optimal node points to integrate polynomials of degree $2n-1$ exactly.

#### 🧪 Unit 4: Roots & Non-Linear Sets
*   **Root Finding:** Solving $f(x) = 0$.
*   **Convergence:** Comparing linear convergence (Bisection/Secant) vs. Quadratic convergence (Newton's Method).

---

### 🧠 Key Theoretical Concepts

*   **Conditioning:** A problem is *ill-conditioned* if a small change in input leads to a massive change in output (e.g., solving linear systems with a high Condition Number $\kappa(A)$).
*   **Stability:** An algorithm is *unstable* if it magnifies approximation errors during execution.
*   **Computational Complexity:** Understanding why Gaussian Elimination is $O(n^3)$ and why that matters for large matrices.

---

### 🛠️ Resources & Tools

*   **Primary Tool:** **MATLAB** (Matrix Laboratory).
*   **Alternative (if permitted):** Python (`numpy`, `scipy`).
*   **Focus:** Vectorized operations (avoiding `for` loops where possible for efficiency).

