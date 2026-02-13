---
layout: default
title: How to Use
---

<div class="page-hero">
<h1>How to Use This Toolkit</h1>
<p class="subtitle">Guide for Award Committee members assembling nomination packages</p>
</div>

This guide is intended for **Award Committee members** who need to assemble the final nomination package after collecting all materials.

## The Nomination Workflow

<div class="workflow-overview">

**Step 1.** Faculty member sends nomination letter to the Award Committee.

**Step 2.** Committee contacts nominee to request: CV, teaching evaluations, and letter writer names.

**Step 3.** Committee contacts letter writers to request support letters.

**Step 4.** Committee assembles all materials into a single PDF package (this guide).

**Step 5.** Committee convenes to review packages and select recipient(s).

</div>

---

## Assembling the Package (Step 4)

### Prerequisites

- A LaTeX distribution (e.g., [TeX Live](https://www.tug.org/texlive/), [MiKTeX](https://miktex.org/), or [Overleaf](https://www.overleaf.com/))
- The `pdfpages` package (included in most distributions)
- All collected materials as PDF files

### 4.1 Choose the Correct Template

| If the nominee is... | Use this template |
|-----------------------|-------------------|
| An **assistant professor** in **math** (not stat) | [Butz Award](butz-award) |
| An **associate or full professor** in **math or stat** | [Kraska Award](kraska-award) |
| Any rank, recognized for **teaching + research** | [Jack B. Brown Award](jack-b-brown-award) |

### 4.2 Download the Template

Download or clone the entire template directory for the chosen award. Each directory contains:
- The main `.tex` file
- The `nomination-package.sty` style file
- Placeholder PDF files

### 4.3 Gather Collected Materials

By this point, the committee should have collected:

| Material | Source | Format |
|----------|--------|--------|
| Nomination letter | Nominating faculty member | Signed PDF |
| CV | Nominee | PDF |
| Teaching evaluations | Nominee (from Auburn's system) | PDF (often landscape) |
| Peer evaluation | Faculty colleague | Signed PDF |
| Support letters | Students, alumni, faculty | Signed PDFs |
| Research statement | Nominee (Jack B. Brown only) | PDF |

Use the [Email Templates](email-templates) for sample request emails.

### 4.4 Replace Placeholder PDFs

Replace each placeholder file with the actual collected document, **keeping the same filename**, or update the `\vfile{}` / `\hfile{}` commands in the `.tex` file to match your filenames.

### 4.5 Edit the LaTeX File

Open the `.tex` file and update:

```latex
\def\Nominee{Dr. Actual Name}          % nominee's name
\def\Award{2026 the Robert K. Butz...} % award name and year
```

Then adjust section titles and `\vfile` / `\hfile` commands:

```latex
% Portrait PDF (letters, CV):
\vfile{./Actual_Letter_Filename.pdf}

% Landscape PDF, all pages:
\hfile{./Teaching_Evals_2024.pdf}{-}

% Landscape PDF, specific pages:
\hfile{./Teaching_Evals_2024.pdf}{1-3}

% Selected pages from a combined file:
\hselectedfile{./All_Evals.pdf}{5,6,7}
```

### 4.6 Compile

```bash
pdflatex Nomination_Package_Butz.tex
pdflatex Nomination_Package_Butz.tex   # run twice for table of contents
```

Or upload to **Overleaf** for online compilation.

### 4.7 Review the Package

- Check the PDF for correct page ordering and readability.
- Verify the table of contents is accurate.
- Confirm the nominee's name appears in the footer of every page.
- Save the final PDF for committee review.

---

## Tips

- **Landscape evaluations:** Teaching evaluations from Auburn's system are often landscape-oriented. Use `\hfile{}` (rotated 90 degrees) for these.
- **Page selection:** If evaluations for multiple courses are in one PDF, use `\hselectedfile{file.pdf}{1,2,5-7}` to pick specific pages.
- **Section dividers:** The `\myPart{}` command creates a centered divider page. Each major section should start with one.
- **Adding more sections:** Just add another `\myPart{\section{...}}` followed by `\vfile{...}` or `\hfile{...}`.
- **Removing sections:** Comment out or delete the relevant `\myPart` and `\vfile`/`\hfile` lines.

---

## LaTeX Commands Reference

| Command | Purpose | Example |
|---------|---------|---------|
| `\vfile{file.pdf}` | Include all pages of a portrait PDF | `\vfile{./CV.pdf}` |
| `\hfile{file.pdf}{pages}` | Include landscape pages (rotated) | `\hfile{./Evals.pdf}{1-3}` |
| `\hselectedfile{file.pdf}{pages}` | Include selected landscape pages | `\hselectedfile{./Evals.pdf}{2,5,6}` |
| `\myPart{content}` | Centered section divider page | `\myPart{\section{CV}}` |

The special page range `-` means "all pages."

---

*Back to [Home](./)*
