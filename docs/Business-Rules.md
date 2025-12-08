# Business Rules

This document outlines the core business rules enforced by the Automated Loan Decisioning System (ALDS). These rules govern eligibility, risk categorization, routing, and decision outcomes.

---

## 1. Eligibility Rules

- Applicants must be Canadian residents with valid government-issued identification.  
- Minimum credit score for auto-approval is **680**.  
- Applicants with credit scores below **580** are automatically declined.  
- Recent bankruptcies (within the last 6 years) result in automatic decline.

---

## 2. Income & DTI Rules

- Income must be verified via an approved third-party provider.  
- Declared vs. verified income discrepancies trigger warning flags.  
- DTI must not exceed **43%** for auto-approval.  
- DTI between **44% and 55%** routes applications to manual review.  
- DTI above **55%** is considered high risk and leads to decline unless an exception is approved.

---

## 3. Risk Categorization

- Applicants are categorized as **Low**, **Medium**, or **High** risk via the rules engine.  
- Rules must be transparent and traceable through audit logs.  
- Stable income and low debt may qualify for preferential rates.

---

## 4. Routing Rules

- Medium-risk applications go to the underwriting queue.  
- Fraud-flagged applications are routed to Fraud Operations.  
- Incomplete applications trigger “More Information Needed” status and applicant notification.

---

## 5. Decision Rules

- Applications meeting all thresholds are auto-approved.  
- Applications failing baseline criteria are auto-declined.  
- Any manual override must include a justification and be logged with actor and timestamp.  
- Regulatory hold periods must be respected prior to disbursement.

---

## 6. Communication & Logging Rules

- Approval and decline communications must use standardized, version-controlled templates.  
- Applicants must receive real-time status updates as their application state changes.  
- All rule executions, decisions, and overrides must be recorded in immutable logs.

---

## 7. Supporting Diagram

![Architecture](../diagrams/architecture.png)

Rules are executed within the centralized rules engine component and surfaced through application workflows and dashboards.
