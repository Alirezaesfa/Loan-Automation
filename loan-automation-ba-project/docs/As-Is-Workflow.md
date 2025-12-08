# As-Is Workflow

This document describes the current-state process used by NorthRiver Bank to evaluate personal loan applications. The existing workflow is manual, slow, and inconsistent, forming the baseline for future-state improvements.

---

## 1. Overview

Applicants currently complete loan applications using paper forms or a basic digital interface. Underwriters perform most verification tasks manually, including document review, credit checks, and eligibility assessments. Communication with applicants is fragmented and often delayed.

---

## 2. As-Is Workflow Diagram

![As-Is Workflow](../diagrams/bpmn-workflow.png)

(This diagram can represent both as-is and to-be with swimlanes or annotations. In this project, it primarily supports the future-state, but the current issues are derived from this flow.)

---

## 3. Current-State Steps

1. Applicant fills out a paper or basic online form.  
2. Applicant uploads or emails income documents.  
3. Underwriter manually calculates DTI.  
4. Underwriter retrieves credit report from bureau portals.  
5. Underwriter evaluates employment stability and income adequacy.  
6. Underwriter makes approval, decline, or hold decision.  
7. Decision is communicated to applicant, typically after several days.  
8. Call centre receives frequent status inquiries.  
9. Compliance performs spot checks on underwriting quality.  
10. Final letters and documentation are prepared manually.

---

## 4. Pain Points

- Long processing times (5–7 days).  
- Inconsistent underwriting decisions.  
- Heavy manual workload for underwriters.  
- Poor transparency for applicants.  
- Increased call centre burden.  
- Limited auditability and traceability.

---

## 5. Baseline for Transformation

These pain points inform the design of the to-be workflow and the automation scope for ALDS.
