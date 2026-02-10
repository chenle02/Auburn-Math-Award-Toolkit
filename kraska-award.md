---
layout: default
title: Kraska Award
---

# Marie Kraska Award for Excellence in Teaching

> **Frequency:** Annual (Spring semester)
>
> **Award:** $1,000 (pre-tax) and a plaque
>
> **Official Page:** [Auburn Math Faculty Awards](https://www.auburn.edu/cosam/departments/math/faculty%20awards/index.htm)

---

## Background

This annual award was established by **Dr. Marie Kraska**, a Mildred Cheshire Fraley Distinguished Professor in the Department of Educational Foundations, Leadership and Technology. Dr. Kraska received a Master's degree in Probability and Statistics from the Department of Mathematics and Statistics at Auburn University.

## Eligibility

1. **Associate or full professor** in the Department of Mathematics and Statistics
2. **Both mathematics and statistics faculty** are eligible
3. Must be an innovative, challenging teacher who is respected by faculty and students

## Selection Criteria

The recipient of the Kraska Award will be named by the Chair of the Department, in consultation with the selection committee. The donor recommends that selection criteria include **letters from program graduates**.

A recipient is eligible to receive the award in subsequent years if selected.

## Selection Committee

The Kraska Award Committee consists of:

1. A **COSAM faculty member** (identified by the Dean or Associate Dean responsible for graduate studies)
2. An **alumnus** of the graduate program in mathematics or statistics
3. A **current graduate student** in the mathematics or statistics program

---

## Past Recipients

| Year | Recipient |
|------|-----------|
| 2025--2026 | Jingyi (Ginny) Zheng |
| 2021--2022 | Erkan Nane |
| 2020--2021 | Philippe Gaillard |
| 2019--2020 | Jessica McDonald |
| 2018--2019 | Wenxian Shen |
| 2017--2018 | Dean Hoffman |
| 2016--2017 | Ash Abebe |
| 2015--2016 | Peng Zeng |
| 2014--2015 | Nedret Billor |
| 2013--2014 | Bertram Zinner |

---

## Nomination Package Contents

A complete Kraska Award nomination package should include:

| # | Item | Description |
|---|------|-------------|
| 1 | **Nomination Letter** | From a faculty member, addressing the nominee's teaching excellence |
| 2 | **Nominee's CV** | Current curriculum vitae |
| 3 | **Teaching Evaluations** | Student evaluations from the **past 3 years**, organized by semester and course |
| 4 | **Supporting Letters** | 2--3 letters from faculty, graduate alumni, and/or current graduate students |

**Note:** The donor recommends including letters from program graduates. This is especially valued by the selection committee.

---

## Download Template Package

**[Download Kraska Award Template (ZIP)](templates/kraska-award/)**

The template directory contains:

```
kraska-award/
  Nomination_Package_Kraska.tex      # Main LaTeX file
  nomination-package.sty              # Shared style file
  README.md                           # Instructions & checklist
  Nomination_Letter.pdf               # PLACEHOLDER - replace with real letter
  CV.pdf                              # PLACEHOLDER - replace with real CV
  Teaching_Evals_2024.pdf             # PLACEHOLDER - replace with real evals
  Teaching_Evals_2023.pdf             # PLACEHOLDER
  Teaching_Evals_2022.pdf             # PLACEHOLDER
  Support_Letter_Faculty.pdf          # PLACEHOLDER - replace with faculty letter
  Support_Letter_Grad_Student.pdf     # PLACEHOLDER - replace with student letter
  Support_Letter_Alumnus.pdf          # PLACEHOLDER - replace with alumnus letter
```

### How to Use

1. Download the template directory.
2. Replace each placeholder PDF with the actual document.
3. Edit `Nomination_Package_Kraska.tex`:
   - Update `\def\Nominee{Dr. NOMINEE NAME}` with the actual name.
   - Update `\def\Award{YYYY Marie Kraska Award...}` with the year.
   - Adjust `\section` and `\subsection` titles as needed.
   - Add or remove `\vfile{}` / `\hfile{}` / `\hselectedfile{}` commands to match your files.
4. Compile with `pdflatex Nomination_Package_Kraska.tex` (run twice for TOC).
5. Submit the resulting PDF to the committee chair.

---

*See also: [Email Templates](email-templates) for sample emails requesting nomination and support letters.*
