# /// script
# requires-python = ">=3.10"
# dependencies = [
#     "PyMuPDF",
# ]
# ///
import fitz
import sys

def extract_matrices(pdf_path):
    doc = fitz.open(pdf_path)
    page = doc[0]
    words = page.get_text("words")
    
    words.sort(key=lambda w: (round(w[1], 1), round(w[0], 1)))
    for w in words:
        if w[4].replace('-', '').replace('.', '').isdigit():
             print(f"y: {w[1]:.1f}, x: {w[0]:.1f}, val: {w[4]}")

if __name__ == "__main__":
    extract_matrices(sys.argv[1])
