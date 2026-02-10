#!/bin/bash
# Generate placeholder/mock PDFs for all three award template packages.
# Run from the public-site/ directory.
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
MOCK_DIR="$SCRIPT_DIR/mock-pdfs"
mkdir -p "$MOCK_DIR"

generate_pdf() {
    local filename="$1"
    local title="$2"
    local subtitle="$3"
    local body="$4"

    cat > "$MOCK_DIR/_tmp.tex" <<LATEX
\\documentclass[12pt]{article}
\\usepackage[margin=1.5in]{geometry}
\\usepackage{xcolor}
\\usepackage{lipsum}
\\begin{document}
\\thispagestyle{empty}
\\vspace*{2in}
\\begin{center}
{\\Huge\\bfseries\\color{blue!60!black} PLACEHOLDER}\\\\[1em]
{\\LARGE\\bfseries $title}\\\\[0.5em]
{\\large\\itshape $subtitle}\\\\[2em]
\\rule{4in}{0.4pt}\\\\[1.5em]
{\\normalsize $body}\\\\[1em]
{\\small\\color{gray} Replace this file with the actual document.}
\\end{center}
\\newpage
\\noindent This is a placeholder page demonstrating a multi-page document.\\\\[1em]
\\lipsum[1-3]
\\end{document}
LATEX

    (cd "$MOCK_DIR" && pdflatex -interaction=batchmode _tmp.tex >/dev/null 2>&1 && mv _tmp.pdf "$filename")
}

generate_landscape_pdf() {
    local filename="$1"
    local title="$2"

    cat > "$MOCK_DIR/_tmp.tex" <<LATEX
\\documentclass[12pt]{article}
\\usepackage[landscape,margin=1in]{geometry}
\\usepackage{xcolor}
\\usepackage{lipsum}
\\begin{document}
\\thispagestyle{empty}
\\vspace*{1in}
\\begin{center}
{\\Huge\\bfseries\\color{blue!60!black} PLACEHOLDER}\\\\[0.5em]
{\\LARGE\\bfseries $title}\\\\[0.5em]
{\\small\\color{gray} Replace this file with the actual teaching evaluations.}
\\end{center}
\\vspace{1em}
\\noindent\\begin{tabular}{|p{3in}|c|c|c|c|c|}\\hline
\\textbf{Question} & \\textbf{SA} & \\textbf{A} & \\textbf{N} & \\textbf{D} & \\textbf{SD} \\\\\\hline
The instructor was well-prepared & 85\\% & 10\\% & 5\\% & 0\\% & 0\\% \\\\\\hline
The instructor explained clearly & 80\\% & 15\\% & 5\\% & 0\\% & 0\\% \\\\\\hline
The course was well-organized & 75\\% & 20\\% & 5\\% & 0\\% & 0\\% \\\\\\hline
I would recommend this instructor & 90\\% & 8\\% & 2\\% & 0\\% & 0\\% \\\\\\hline
\\end{tabular}
\\newpage
\\noindent This is a second page of placeholder teaching evaluation data.\\\\[1em]
\\lipsum[1-2]
\\end{document}
LATEX

    (cd "$MOCK_DIR" && pdflatex -interaction=batchmode _tmp.tex >/dev/null 2>&1 && mv _tmp.pdf "$filename")
}

echo "Generating portrait placeholder PDFs..."
generate_pdf "Nomination_Letter.pdf" "Nomination Letter" "From Dr. [Nominator Name]" \
    "Dear Committee, I am pleased to nominate Dr. [Nominee] for the [Award Name]..."

generate_pdf "CV.pdf" "Curriculum Vitae" "Dr. [Nominee Name]" \
    "Education, Publications, Teaching, Service..."

generate_pdf "Peer_Evaluation.pdf" "Peer Teaching Evaluation" "By Dr. [Peer Name]" \
    "Classroom observation report for [Course] on [Date]..."

generate_pdf "Support_Letter_Student_1.pdf" "Supporting Letter" "From Student \#1" \
    "Dear Committee, I am writing in support of Dr. [Nominee]..."

generate_pdf "Support_Letter_Student_2.pdf" "Supporting Letter" "From Student \#2" \
    "Dear Committee, I am writing in support of Dr. [Nominee]..."

generate_pdf "Support_Letter_Faculty.pdf" "Supporting Letter" "From a Faculty Colleague" \
    "Dear Committee, I am pleased to support the nomination of Dr. [Nominee]..."

generate_pdf "Support_Letter_Grad_Student.pdf" "Supporting Letter" "From a Graduate Student" \
    "Dear Committee, I am writing as a graduate student to support Dr. [Nominee]..."

generate_pdf "Support_Letter_Alumnus.pdf" "Supporting Letter" "From a Graduate Alumnus" \
    "Dear Committee, As a graduate of the program, I strongly support Dr. [Nominee]..."

generate_pdf "Support_Letter_Student.pdf" "Supporting Letter" "From a Student" \
    "Dear Committee, I am writing in support of Dr. [Nominee]..."

generate_pdf "Research_Statement.pdf" "Research Statement" "Dr. [Nominee Name]" \
    "My research program focuses on... Key contributions include..."

echo "Generating landscape placeholder PDFs (teaching evaluations)..."
generate_landscape_pdf "Teaching_Evals_2024.pdf" "Teaching Evaluations -- 2024"
generate_landscape_pdf "Teaching_Evals_2023.pdf" "Teaching Evaluations -- 2023"
generate_landscape_pdf "Teaching_Evals_2022.pdf" "Teaching Evaluations -- 2022"

# Clean up temp files
rm -f "$MOCK_DIR/_tmp.tex" "$MOCK_DIR/_tmp.aux" "$MOCK_DIR/_tmp.log" "$MOCK_DIR/_tmp.out"

echo ""
echo "Done! Generated $(ls "$MOCK_DIR"/*.pdf 2>/dev/null | wc -l) placeholder PDFs in $MOCK_DIR/"
echo ""
echo "Now distributing to template directories..."

# Butz Award
for f in Nomination_Letter.pdf CV.pdf Teaching_Evals_2024.pdf Teaching_Evals_2023.pdf \
         Teaching_Evals_2022.pdf Peer_Evaluation.pdf Support_Letter_Student_1.pdf \
         Support_Letter_Student_2.pdf; do
    cp "$MOCK_DIR/$f" "$SCRIPT_DIR/../templates/butz-award/$f"
done

# Kraska Award
for f in Nomination_Letter.pdf CV.pdf Teaching_Evals_2024.pdf Teaching_Evals_2023.pdf \
         Teaching_Evals_2022.pdf Support_Letter_Faculty.pdf Support_Letter_Grad_Student.pdf \
         Support_Letter_Alumnus.pdf; do
    cp "$MOCK_DIR/$f" "$SCRIPT_DIR/../templates/kraska-award/$f"
done

# Jack B. Brown Award
for f in Nomination_Letter.pdf CV.pdf Research_Statement.pdf Teaching_Evals_2024.pdf \
         Teaching_Evals_2023.pdf Teaching_Evals_2022.pdf Support_Letter_Faculty.pdf \
         Support_Letter_Student.pdf; do
    cp "$MOCK_DIR/$f" "$SCRIPT_DIR/../templates/jack-b-brown-award/$f"
done

echo "All placeholder PDFs distributed to template directories!"
