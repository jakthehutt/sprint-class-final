# /// script
# requires-python = ">=3.10"
# dependencies = [
#     "numpy",
# ]
# ///
import numpy as np

def relu(x):
    return np.maximum(0, x)

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def softmax(x):
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()

def format_vector(v, name):
    lines = [f"### {name}"]
    v = np.array(v).flatten()
    lines.append("$$")
    lines.append("\\begin{pmatrix}")
    for val in v:
        if isinstance(val, (int, np.integer)) or float(val).is_integer():
            lines.append(f"{int(val)} \\\\")
        else:
            lines.append(f"{val:.2f} \\\\")
    lines.append("\\end{pmatrix}")
    lines.append("$$\n")
    return "\n".join(lines)

def solve():
    x = np.array([1, 0, -1, 2, 1, 0, -2, 1]).reshape(-1, 1)

    A1 = np.array([
        [1, 0, 0, 1, 0, 0, 0, 0],
        [0, 1, 1, 0, 0, 0, 0, 0],
        [1, -1, 0, 0, 1, 0, 0, 0],
        [0, 0, 0, 1, 0, 1, 1, 0]
    ])
    b1 = np.array([0, 1, -1, 0]).reshape(-1, 1)

    A2 = np.array([
        [1, 0, 0, 0],
        [0, 1, 0, 0],
        [1, 1, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1],
        [1, 0, 1, 0]
    ])
    b2 = np.array([0, 0, -1, 0, 0, 0]).reshape(-1, 1)

    A3 = np.array([
        [1, 0, 0, 0, 0, 0],
        [0, 1, 0, 0, 0, 0],
        [0, 0, 1, 0, 0, 0],
        [0, 0, 0, 1, 0, 0],
        [1, 0, 1, 0, 0, 0]
    ])
    b3 = np.array([0, 0, 0, 0, 0]).reshape(-1, 1)

    with open("assignment_2_solution.md", "w") as f:
        f.write("# Step-by-Step Solution for Assignment 2\n\n")
        f.write("## 1. Determine the final output vector\n\n")
        
        f.write("### Given Data\n")
        f.write("Input vector $x$:\n")
        f.write("$$ x = \\begin{pmatrix} 1 \\\\ 0 \\\\ -1 \\\\ 2 \\\\ 1 \\\\ 0 \\\\ -2 \\\\ 1 \\end{pmatrix} $$\n\n")

        # Layer 1
        f.write("### Layer 1: First Hidden Layer (ReLU)\n")
        z1 = A1 @ x + b1
        f.write(f"Calculate $z^{{(1)}} = A^{{(1)}}x + b^{{(1)}}$:\n\n")
        f.write(format_vector(A1 @ x, "A^{(1)}x"))
        f.write(format_vector(z1, "z^{(1)}"))
        
        a1 = relu(z1)
        f.write("Apply ReLU activation $a^{(1)} = \\max(0, z^{(1)})$:\n")
        f.write(format_vector(a1, "a^{(1)}"))
        
        # Layer 2
        f.write("### Layer 2: Second Hidden Layer (Sigmoid)\n")
        z2 = A2 @ a1 + b2
        f.write(f"Calculate $z^{{(2)}} = A^{{(2)}}a^{{(1)}} + b^{{(2)}}$:\n\n")
        f.write(format_vector(A2 @ a1, "A^{(2)}a^{(1)}"))
        f.write(format_vector(z2, "z^{(2)}"))

        a2 = sigmoid(z2)
        f.write("Apply Sigmoid activation $a^{(2)} = \\frac{1}{1 + e^{-z^{(2)}}}$:\n")
        f.write(format_vector(a2, "a^{(2)}"))

        # Layer 3
        f.write("### Layer 3: Output Layer (Softmax)\n")
        z3 = A3 @ a2 + b3
        f.write(f"Calculate $z^{{(3)}} = A^{{(3)}}a^{{(2)}} + b^{{(3)}}$:\n\n")
        f.write(format_vector(A3 @ a2, "A^{(3)}a^{(2)}"))
        f.write(format_vector(z3, "z^{(3)}"))

        a3 = softmax(z3)
        f.write("Apply Softmax activation $a^{(3)}_i = \\frac{e^{z^{(3)}_i}}{\\sum e^{z^{(3)}_j}}$:\n")
        f.write(format_vector(a3, "a^{(3)}"))

        f.write("\n## 2. Represent your neural network as a composite function\n")
        f.write("The complete composite function is given by applying the transformations sequentially:\n\n")
        f.write("$$ f(x) = \\text{softmax}(A^{(3)}\\sigma(A^{(2)}\\text{ReLU}(A^{(1)}x + b^{(1)}) + b^{(2)}) + b^{(3)}) $$\n\n")
        f.write("Where:\n")
        f.write("- **ReLU(z)** = $\\max(0, z)$\n")
        f.write("- **$\\sigma(z)$** = $\\frac{1}{1 + e^{-z}}$\n")
        f.write("- **softmax(z)** = $\\frac{e^z}{\\sum e^z}$\n")

if __name__ == "__main__":
    solve()
