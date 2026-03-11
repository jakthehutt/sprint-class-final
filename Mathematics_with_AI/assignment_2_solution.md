Jakob Hutter  
Assignment 2 - 11th of March 2026
## 1.determine the final output vector
Input vector $x$:
$$ x = \begin{pmatrix} 1 \\ 0 \\ -1 \\ 2 \\ 1 \\ 0 \\ -2 \\ 1 \end{pmatrix} $$

### Layer 1: First Hidden Layer (ReLU)
Calculating $z^{(1)} = A^{(1)}x + b^{(1)}$:

$$A^{(1)}x = 
\begin{pmatrix}
3 \\
-1 \\
2 \\
0 \\
\end{pmatrix}
,  z^{(1)}= 
\begin{pmatrix}
3 \\
0 \\
1 \\
0 \\
\end{pmatrix}
$$
Apply ReLU activation $a^{(1)} = \max(0, z^{(1)})$:
$$
a^{(1)} = 
\begin{pmatrix}
3 \\
0 \\
1 \\
0 \\
\end{pmatrix}
$$
### Layer 2: Second Hidden Layer (Sigmoid)
Calculate $z^{(2)} = A^{(2)}a^{(1)} + b^{(2)}$:
$$A^{(2)}a^{(1)} = 
\begin{pmatrix}
3 \\
0 \\
3 \\
1 \\
0 \\
4 \\
\end{pmatrix}
, z^{(2)}=
\begin{pmatrix}
3 \\
0 \\
2 \\
1 \\
0 \\
4 \\
\end{pmatrix}
$$
Apply Sigmoid activation $a^{(2)} = \frac{1}{1 + e^{-z^{(2)}}}$:
$$a^{(2)}=
\begin{pmatrix}
0.95 \\
0.50 \\
0.88 \\
0.73 \\
0.50 \\
0.98 \\
\end{pmatrix}
$$
### Layer 3: Output Layer (Softmax)
Calculate $z^{(3)} = A^{(3)}a^{(2)} + b^{(3)}$:

$$ A^{(3)}a^{(2)}=
\begin{pmatrix}
0.95 \\
0.50 \\
0.88 \\
0.73 \\
1.83 \\
\end{pmatrix}
, z^{(3)} = 
\begin{pmatrix}
0.95 \\
0.50 \\
0.88 \\
0.73 \\
1.83 \\
\end{pmatrix}
$$
Apply Softmax activation $a^{(3)}_i = \frac{e^{z^{(3)}_i}}{\sum e^{z^{(3)}_j}}$:
$$a^{(3)} =
\begin{pmatrix}
0.17 \\
0.11 \\
0.16 \\
0.14 \\
0.42 \\
\end{pmatrix}
$$

$a^{(3)}$ is the final output vector.

## 2. Represent NN as composite function
The complete composite function is given by applying the transformations sequentially:

$$ f(x) = \text{softmax}(A^{(3)}\sigma(A^{(2)}\text{ReLU}(A^{(1)}x + b^{(1)}) + b^{(2)}) + b^{(3)}) $$

