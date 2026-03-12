# /// script
# requires-python = ">=3.10"
# dependencies = [
#     "PyMuPDF",
# ]
# ///
import fitz
import sys
import os
import glob

def extract(pdf_path, md_path):
    print(f"Extracting {pdf_path} to {md_path}...")
    try:
        doc = fitz.open(pdf_path)
        text = ""
        for page in doc:
            text += page.get_text() + "\n\n--- PAGE BREAK ---\n\n"
        with open(md_path, "w", encoding="utf-8") as f:
            f.write(text)
        print(f"Extracted {len(doc)} pages, {len(text)} characters to {md_path}")
    except Exception as e:
        print(f"Failed to extract {pdf_path}: {e}")

if __name__ == "__main__":
    base_dir = "/Users/jakthehut/Documents/Private/sprint-class-final/Social_Network_Models"
    pdf_files = glob.glob(os.path.join(base_dir, "**/*.pdf"), recursive=True)
    
    print(f"Found {len(pdf_files)} PDF files.")
    for pdf_path in pdf_files:
        md_path = pdf_path.rsplit(".", 1)[0] + ".md"
        extract(pdf_path, md_path)
