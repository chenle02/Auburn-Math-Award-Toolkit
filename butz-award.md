---
layout: default
title: Butz Award
---

<div class="page-hero">
<h1>Robert K. Butz Award for Excellence in Teaching</h1>
<p class="subtitle">Annual &bull; $1,500 + plaque &bull; Assistant Professors (Math) &bull; <a href="https://www.auburn.edu/cosam/departments/math/faculty%20awards/index.htm">Official Page &rarr;</a></p>
</div>

---

## 2026 Deadlines

| Milestone | Date |
|-----------|------|
| **Nominations due** (names only) | Friday, February 20, 2026 |
| **Complete packages due** | Friday, March 20, 2026 |

---

## Background

This annual award was established by **Dr. Phillip W. Bean**, who received his collegiate training in mathematics at Auburn University. **Dr. Robert K. Butz** was a faculty member of the Department of Mathematics at Auburn University; he passed away in 2012.

## Eligibility

1. **Assistant professor** in the Department of Mathematics and Statistics
2. **Mathematics faculty only** (statistics faculty are not eligible)
3. **At least one year** at Auburn University (new faculty are not eligible)
4. Must have **taught undergraduate-level math courses**
5. Must remain at the level of assistant professor for the duration of the award

## Selection Criteria

The recipient must be an **innovative and challenging teacher** who is:
- Respected by the faculty
- Appreciated by his/her students

A recipient is eligible for consideration in future years provided they satisfy all requirements.

## Selection Committee

The **Departmental Faculty Awards Committee** makes the selection.

---

## Past Recipients

| Year | Recipient |
|------|-----------|
| 2025--2026 | Michael Brown |
| 2021--2022 | Gregory Puleo |
| 2020--2021 | Thi Thao Phuong Hoang |
| 2019--2020 | Hans-Werner van Wyk |
| 2018--2019 | Hans-Werner van Wyk |
| 2017--2018 | Hans-Werner van Wyk |
| 2016--2017 | Ziqin Feng |
| 2015--2016 | Junshan Lin |
| 2014--2015 | Xiaoyu (Sophie) Li |
| 2013--2014 | Jessica McDonald |
| 2012--2013 | Erkan Nane |
| 2011--2012 | Xiaoying (Maggie) Han |
| 2010--2011 | Dmitry Glotov |

---

## Nomination Package Contents

A complete Butz Award nomination package should include:

| # | Item | Description |
|---|------|-------------|
| 1 | **Nomination Letter** | From a faculty member, addressing the nominee's teaching excellence |
| 2 | **Nominee's CV** | Current curriculum vitae |
| 3 | **Teaching Evaluations** | Student evaluations from the **past 3--5 years**, organized by semester and course |
| 4 | **Peer Teaching Evaluation** | At least one classroom observation report from a colleague |
| 5 | **Supporting Letters** | 2--3 letters from students and/or faculty attesting to teaching quality |

---

## Download Template Package

<a href="https://github.com/chenle02/Auburn-Math-Award-Toolkit/tree/main/templates/butz-award" class="btn-download">Download Butz Award Template</a>

The template directory contains:

```
butz-award/
  Nomination_Package_Butz.tex       # Main LaTeX file
  nomination-package.sty             # Shared style file
  README.md                          # Instructions & checklist
  Nomination_Letter.pdf              # PLACEHOLDER - replace with real letter
  CV.pdf                             # PLACEHOLDER - replace with real CV
  Teaching_Evals_2024.pdf            # PLACEHOLDER - replace with real evals
  Teaching_Evals_2023.pdf            # PLACEHOLDER
  Teaching_Evals_2022.pdf            # PLACEHOLDER
  Peer_Evaluation.pdf                # PLACEHOLDER - replace with peer eval
  Support_Letter_Student_1.pdf       # PLACEHOLDER - replace with real letter
  Support_Letter_Student_2.pdf       # PLACEHOLDER - replace with real letter
```

### How to Use

1. Download the template directory.
2. Replace each placeholder PDF with the actual document.
3. Edit `Nomination_Package_Butz.tex`:
   - Update `\def\Nominee{Dr. NOMINEE NAME}` with the actual name.
   - Update `\def\Award{YYYY the Robert K. Butz Award...}` with the year.
   - Adjust `\section` and `\subsection` titles as needed.
   - Add or remove `\vfile{}` / `\hfile{}` commands to match your files.
4. Compile with `pdflatex Nomination_Package_Butz.tex` (run twice for TOC).
5. Submit the resulting PDF to the committee chair.

---

*See also: [Email Templates](email-templates) for sample emails requesting nomination and support letters.*
