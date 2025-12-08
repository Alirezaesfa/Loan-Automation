# User Stories and Gherkin Specifications

This document captures the core user stories for the Automated Loan Decisioning System (ALDS), along with representative Gherkin-style scenarios. These stories reflect the needs of applicants, underwriters, compliance, product, and architecture stakeholders.

---

## 1. Applicant – Automatic Income Verification

**User Story**  
As an applicant, I want my income to be verified automatically so I don’t need to upload documents.

**Scenario: Successful income verification**  
Given the applicant submits a loan application  
When the system retrieves income data from the income API within 5 seconds  
Then the applicant’s income fields auto-populate  
And any mismatch between declared and verified income triggers a warning flag  
And the verification request is logged with timestamp and data source  

**Scenario: Income API unavailable**  
Given the applicant submits a loan application  
When the income API is unavailable  
Then the applicant sees a clear retry message  

---

## 2. Underwriter – Medium-Risk Routing

**User Story**  
As an underwriter, I want medium-risk cases routed to me so I can focus on judgment-based decisions.

**Scenario: Medium-risk application routing**  
Given a loan application is evaluated as medium risk  
When the system processes the application  
Then it appears in the underwriter’s work queue  
And the underwriter can view detailed risk rationale  
And manual escalation is possible  
And routing actions are logged for audit and compliance  

---

## 3. Compliance Officer – Decision Logs

**User Story**  
As a compliance officer, I want decision logs stored securely so audits are consistent and complete.

**Scenario: Log creation**  
Given a loan application is processed  
When a decision (manual or automated) is made  
Then an immutable log entry is created capturing timestamp, data, rules fired, and outcome  
And logs are stored securely in accordance with retention and encryption standards  
And compliance users can retrieve logs via a secure interface  
And modification attempts trigger alerts or are blocked  

---

## 4. Architect – Standardized APIs

**User Story**  
As an architect, I want APIs to follow standard patterns so integrations are predictable.

**Scenario: API implementation**  
Given the loan system integrates with external services  
When APIs are implemented  
Then all APIs follow REST conventions with standardized authentication and error codes  
And API contracts are version controlled  
And failures return structured error responses  
And integrations support retries with exponential backoff  
And API response times meet defined SLAs  

---

## 5. Product Manager – Real-Time Reporting

**User Story**  
As a product manager, I want real-time reporting so I can track drop-off and conversion.

**Scenario: Reporting dashboard**  
Given loan applications are being processed  
When metrics are updated  
Then the dashboard reflects conversion, drop-off, approval, decline, and API failure rates  
And filters allow segmentation by product, channel, and risk tier  
And dashboards load within 2 seconds  
And data accuracy remains within defined tolerances  

---

## 6. Applicant – Instant Status Updates

**User Story**  
As an applicant, I want instant status updates so I’m not confused about progress.

**Scenario: Status notifications**  
Given a loan application is in process  
When the status changes  
Then the applicant receives immediate notifications in the portal  
And the system displays states such as “In Review”, “Approved”, “Declined”, or “More Info Needed”  
And applicants do not see internal underwriting notes or raw bureau data  
And error states provide clear next steps  

---

## 7. Underwriter – Auto-Calculated Risk Metrics

**User Story**  
As an underwriter, I want auto-calculated risk metrics so I don’t waste time on math.

**Scenario: Risk metrics calculation**  
Given applicant data is available  
When the system calculates DTI, risk tier, and credit utilization  
Then calculations follow standardized business rules  
And underwriters can view formulas or inputs used  
And anomalies trigger a system flag  
And metrics are recorded in the audit log  

---

## 8. Call Centre Lead – Clear Status Categories

**User Story**  
As a call centre lead, I want clear status categories so my team can support callers efficiently.

**Scenario: Customer status view**  
Given an application exists in the system  
When call centre agents view it  
Then they see simplified customer-safe status categories  
And reasons for holds (e.g., pending verification, manual review)  
And categories map to internal workflow states  
And agents can escalate unclear cases  

---

## 9. Supporting Diagram

![Sequence Diagram](../diagrams/sequence.png)

The sequence diagram helps confirm that user interactions, system calls, and decisioning flows align with the stories defined above.
