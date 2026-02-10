---
layout: default
title: Jack B. Brown Award
---

# Jack B. Brown Endowed Faculty Award

> **Frequency:** Every 2 years
>
> **Award:** $2,000 per two years (pre-tax) and a plaque
>
> **Official Page:** [Auburn Math Faculty Awards](https://www.auburn.edu/cosam/departments/math/faculty%20awards/index.htm)

---

## Background

The Faculty Award Endowment is designed to support superior faculty in the Department of Mathematics and Statistics. The faculty member must **personify Dr. Jack B. Brown** and demonstrate a strong commitment to students and the provision of excellence in teaching and research.

## Eligibility

1. **Assistant, associate, or full professor** in the Department of Mathematics and Statistics
2. Must **personify Dr. Jack B. Brown**
3. Must demonstrate a **strong commitment to students**
4. Must show **excellence in both teaching and research**

## Selection Process

1. Nominations must be submitted to the **Chair of DMS** by **April 1**.
2. Nominations are reviewed by the Chair and a committee composed of:
   - The **previous award recipient**
   - The **Graduate Program Officer (GPO)**
   - The **Chair of the Undergraduate Studies Committee**
3. The selection must receive **final approval from the Dean of COSAM**.

## Award Details

- **Term:** Two years, non-renewable (but the faculty member may be nominated again in future years)
- **Funds:** May be used as salary support, or for travel, equipment, resources, assistants, etc.
- **Plaque:** Usually presented at the departmental end-of-spring-semester gathering.

---

## Past Recipients

| Year | Recipient |
|------|-----------|
| 2025--2027 | Yuming (Paul) Zhang |
| 2023--2025 | *(not awarded)* |
| 2021--2023 | Thi-Thao-Phuong Hoang |
| 2019--2021 | Guanqun Cao |
| 2017--2019 | Junshan Lin |
| 2015--2017 | Xiaoying (Maggie) Han |
| 2013--2015 | Peng Zeng |
| 2011--2013 | Erkan Nane |

---

## Nomination Package Contents

A complete Jack B. Brown Award nomination package should include:

| # | Item | Description |
|---|------|-------------|
| 1 | **Nomination Letter** | Addressing how the nominee personifies Dr. Brown's legacy of teaching + research excellence |
| 2 | **Nominee's CV** | Current curriculum vitae (emphasizing both teaching and research) |
| 3 | **Teaching Evaluations** | Student evaluations from the **past 3--5 years** |
| 4 | **Research Statement** | Brief summary of research accomplishments and impact |
| 5 | **Supporting Letters** | 2--3 letters from faculty and/or students |

**Note:** Because this award recognizes both teaching *and* research excellence, the nomination letter and supporting letters should address both dimensions.

---

## Download Template Package

**[Download Jack B. Brown Award Template (ZIP)](templates/jack-b-brown-award/)**

The template directory contains:

```
jack-b-brown-award/
  Nomination_Package_JBBrown.tex     # Main LaTeX file
  nomination-package.sty              # Shared style file
  README.md                           # Instructions & checklist
  Nomination_Letter.pdf               # PLACEHOLDER - replace with real letter
  CV.pdf                              # PLACEHOLDER - replace with real CV
  Research_Statement.pdf              # PLACEHOLDER - replace with real statement
  Teaching_Evals_2024.pdf             # PLACEHOLDER - replace with real evals
  Teaching_Evals_2023.pdf             # PLACEHOLDER
  Teaching_Evals_2022.pdf             # PLACEHOLDER
  Support_Letter_Faculty.pdf          # PLACEHOLDER - replace with faculty letter
  Support_Letter_Student.pdf          # PLACEHOLDER - replace with student letter
```

### How to Use

1. Download the template directory.
2. Replace each placeholder PDF with the actual document.
3. Edit `Nomination_Package_JBBrown.tex`:
   - Update `\def\Nominee{Dr. NOMINEE NAME}` with the actual name.
   - Update `\def\Award{YYYY--YYYY Jack B. Brown Endowed Faculty Award}` with years.
   - Adjust `\section` and `\subsection` titles as needed.
4. Compile with `pdflatex Nomination_Package_JBBrown.tex` (run twice for TOC).
5. Submit the resulting PDF to the Department Chair by **April 1**.

---

*See also: [Email Templates](email-templates) for sample emails requesting nomination and support letters.*
