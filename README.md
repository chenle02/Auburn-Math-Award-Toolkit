# Auburn Math & Stats — Faculty Award Nomination Toolkit

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen)](https://chenle02.github.io/Auburn-Math-Award-Toolkit/)

Templates, guidelines, and tools for preparing nomination packages for the three departmental faculty awards in the **Department of Mathematics and Statistics at Auburn University**.

## Awards Covered

| Award | Frequency | Eligibility |
|-------|-----------|-------------|
| **Robert K. Butz Award** for Excellence in Teaching | Annual | Assistant professors (Math only) |
| **Marie Kraska Award** for Excellence in Teaching | Annual | Associate/full professors (Math & Stat) |
| **Jack B. Brown Endowed Faculty Award** | Every 2 years | All ranks (teaching + research) |

## Website

**[https://chenle02.github.io/Auburn-Math-Award-Toolkit/](https://chenle02.github.io/Auburn-Math-Award-Toolkit/)**

The website provides:
- Detailed award descriptions, eligibility criteria, and past recipients
- Links to the [official Auburn award page](https://www.auburn.edu/cosam/departments/math/faculty%20awards/index.htm)
- Email templates for requesting letters
- Step-by-step instructions for preparing packages

## Quick Start

```bash
git clone https://github.com/chenle02/Auburn-Math-Award-Toolkit.git
cd Auburn-Math-Award-Toolkit/templates/butz-award/   # or kraska-award/ or jack-b-brown-award/
```

1. Replace placeholder PDFs with actual documents
2. Edit the `.tex` file (update nominee name, year, course titles)
3. Compile: `pdflatex Nomination_Package_*.tex` (run twice for TOC)

## Repository Structure

```
.
├── _config.yml                     # Jekyll / GitHub Pages config
├── index.md                        # Home page
├── butz-award.md                   # Butz Award details
├── kraska-award.md                 # Kraska Award details
├── jack-b-brown-award.md           # Jack B. Brown Award details
├── email-templates.md              # Sample emails
├── how-to-use.md                   # Step-by-step guide
├── templates/
│   ├── shared/
│   │   └── nomination-package.sty  # Shared LaTeX style
│   ├── butz-award/
│   │   ├── Nomination_Package_Butz.tex
│   │   ├── nomination-package.sty
│   │   ├── README.md               # Checklist
│   │   └── *.pdf                   # Placeholder PDFs
│   ├── kraska-award/
│   │   ├── Nomination_Package_Kraska.tex
│   │   ├── nomination-package.sty
│   │   ├── README.md
│   │   └── *.pdf
│   └── jack-b-brown-award/
│       ├── Nomination_Package_JBBrown.tex
│       ├── nomination-package.sty
│       ├── README.md
│       └── *.pdf
└── assets/
    ├── generate_mock_pdfs.sh       # Script to regenerate placeholders
    └── mock-pdfs/                  # Generated placeholder PDFs
```

## Requirements

- A LaTeX distribution ([TeX Live](https://www.tug.org/texlive/), [MiKTeX](https://miktex.org/), or [Overleaf](https://www.overleaf.com/))
- The `pdfpages` package (standard in most distributions)

## Official Links

- [Auburn Math Faculty Awards](https://www.auburn.edu/cosam/departments/math/faculty%20awards/index.htm)
- [COSAM Awards](https://www.auburn.edu/cosam/awards/academic_awards/index.htm)
- [Department of Mathematics and Statistics](https://www.auburn.edu/cosam/departments/math/index.htm)

## Faculty Award Committee (2025 Fall -- Present)

- **Le Chen** (Chair)
- **Bingyang Hu**
- **Jerzy Szulga**

## License

This work is licensed under the [Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). You are free to share and adapt these templates with appropriate attribution.
