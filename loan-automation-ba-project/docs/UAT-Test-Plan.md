# User Acceptance Testing (UAT) Plan

This document describes the UAT approach for the Automated Loan Decisioning System (ALDS). UAT ensures that the solution meets business expectations and behaves correctly in end-to-end scenarios.

---

## 1. Objectives

- Validate that business rules and workflows behave as designed.  
- Confirm automated and manual decision paths produce expected outcomes.  
- Verify that status updates, notifications, and documents are accurate.  
- Ensure the system is ready for production from a business perspective.

---

## 2. Scope

UAT covers:

- Application submission and validation  
- Income and credit verification flows  
- Risk scoring and decisioning  
- Manual underwriting flows  
- Fraud routing  
- Notifications and letters  
- Audit logging

---

## 3. Reference Workflow

![BPMN Workflow](../diagrams/bpmn-workflow.png)

---

## 4. Core Scenarios

- Successful auto-approval of a low-risk applicant  
- Auto-decline due to low credit score  
- Medium-risk routing to underwriting  
- Income verification failure and retry behavior  
- Data validation errors for incorrect fields  
- Fraud flag and escalation routing  
- Approval and decline document generation  
- Audit log completeness and accuracy  
- Real-time status visibility for applicants

---

## 5. Test Data

Test data should cover:

- Low, medium, and high credit scores  
- Various DTI ranges (e.g., 30%, 45%, 60%)  
- Stable and unstable income profiles  
- Missing or inconsistent applicant details  
- Fraud-like patterns or mismatches  

---

## 6. Entry Criteria

- SIT completed with no critical blocking defects.  
- Test environment configured with required integrations.  
- Business testers trained on UAT flows and tools.

---

## 7. Exit Criteria

- All planned test cases executed.  
- Critical and high defects resolved or mitigated.  
- Business stakeholders sign off on readiness.

---

## 8. Roles

- UAT Lead: coordinates execution and reporting.  
- Business Analyst: ensures traceability to requirements.  
- Underwriters: validate manual review and routing.  
- Compliance: review logs and documentation.  
- Product Owner: final approval.

---

## 9. State Validation

![Loan State Machine](../diagrams/state-machine.png)

State changes are checked against expectations in UAT to ensure correct lifecycle behavior.
