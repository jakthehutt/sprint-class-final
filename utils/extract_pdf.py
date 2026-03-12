# /// script
# requires-python = ">=3.10"
# dependencies = [
#     "PyMuPDF",
# ]
# ///
import fitz
import sys

def extract(pdf_path, txt_path):
    doc = fitz.open(pdf_path)
    text = ""
    for page in doc:
        text += page.get_text() + "\n\n--- PAGE BREAK ---\n\n"
    with open(txt_path, "w", encoding="utf-8") as f:
        f.write(text)
    print(f"Extracted {len(doc)} pages, {len(text)} characters to {txt_path}")

if __name__ == "__main__":
    extract(sys.argv[1], sys.argv[2])
