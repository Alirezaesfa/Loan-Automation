# To-Be Workflow

The to-be workflow defines how the Automated Loan Decisioning System (ALDS) will automate and streamline the lending process. It focuses on reducing manual work, improving decision consistency, and enhancing customer experience.

---

## 1. Overview

The future-state model introduces automated verification, rules-driven decisioning, and real-time notifications. Most standard applications will be processed without manual intervention, while edge cases are routed to underwriters or fraud teams.

---

## 2. To-Be Workflow Diagram

![To-Be Workflow](../diagrams/bpmn-workflow.png)

---

## 3. Future-State Steps

1. Applicant completes a structured online form with validation.  
2. System retrieves income data from a verification API.  
3. System retrieves credit score and history from credit bureau APIs.  
4. Rules engine calculates DTI, assigns risk tier, and evaluates eligibility.  
5. Low-risk applications are auto-approved; high-risk applications are auto-declined.  
6. Medium-risk applications are routed to underwriters; flagged cases go to Fraud Operations.  
7. Applicant receives real-time status updates.  
8. Approval or decline letters are generated automatically.  
9. Approved loans are passed to the core banking system for disbursement.

---

## 4. Key Improvements

- Decision time reduced from days to under an hour.  
- Objective, rules-based decisions.  
- Clear, consistent communication with applicants.  
- Reduced manual workload for underwriters.  
- Stronger compliance posture through structured logging.

---

## 5. Enablers

- External API integrations (credit and income).  
- Centralized rules engine.  
- Unified application and status portal.  
- Underwriter dashboards.  
- Audit log and monitoring infrastructure.
