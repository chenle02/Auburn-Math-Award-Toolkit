# Kraska Award Nomination Package Template

**Marie Kraska Award for Excellence in Teaching**

## Checklist

- [ ] Update `\def\Nominee{...}` in `Nomination_Package_Kraska.tex`
- [ ] Update `\def\Award{YYYY Marie Kraska Award...}` with the correct year
- [ ] Replace `Nomination_Letter.pdf` with the actual nomination letter (signed PDF)
- [ ] Replace `CV.pdf` with the nominee's current CV
- [ ] Replace `Teaching_Evals_YYYY.pdf` files with actual evaluations (past 3 years)
- [ ] Replace `Support_Letter_Faculty.pdf` with a faculty colleague's letter
- [ ] Replace `Support_Letter_Grad_Student.pdf` with a current graduate student's letter
- [ ] Replace `Support_Letter_Alumnus.pdf` with a graduate alumnus letter (recommended by the donor)
- [ ] Update section/subsection titles in the `.tex` file to match actual courses
- [ ] Adjust `\hfile` / `\hselectedfile` page ranges to match actual evaluations
- [ ] Compile twice: `pdflatex Nomination_Package_Kraska.tex && pdflatex Nomination_Package_Kraska.tex`
- [ ] Review the output PDF for correctness

## Eligibility Reminder

1. Associate or full professor
2. Both math and statistics faculty are eligible

## Selection Committee (not the Faculty Award Committee)

1. A COSAM faculty member
2. A graduate alumnus of the math/stat program
3. A current graduate student

## Files in This Directory

| File | Purpose | Action |
|------|---------|--------|
| `Nomination_Package_Kraska.tex` | Main LaTeX file | Edit |
| `nomination-package.sty` | Shared style file | Do not edit |
| `Nomination_Letter.pdf` | Placeholder | **Replace** |
| `CV.pdf` | Placeholder | **Replace** |
| `Teaching_Evals_2024.pdf` | Placeholder | **Replace** |
| `Teaching_Evals_2023.pdf` | Placeholder | **Replace** |
| `Teaching_Evals_2022.pdf` | Placeholder | **Replace** |
| `Support_Letter_Faculty.pdf` | Placeholder | **Replace** |
| `Support_Letter_Grad_Student.pdf` | Placeholder | **Replace** |
| `Support_Letter_Alumnus.pdf` | Placeholder | **Replace** |
