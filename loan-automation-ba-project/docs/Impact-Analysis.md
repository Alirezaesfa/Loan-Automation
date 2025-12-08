# Impact Analysis

This document summarizes the operational, technical, compliance, and financial impact of the Automated Loan Decisioning System (ALDS).

---

## 1. Operational Impact

- Manual underwriting tasks significantly reduced.  
- Underwriters focus on complex and borderline cases.  
- Call centre volume decreases due to better self-service status visibility.

---

## 2. Customer Impact

- Faster decisions (minutes instead of days).  
- Clear status updates at each stage.  
- Fewer document uploads and less friction.

---

## 3. Technology Impact

![Architecture](../diagrams/architecture.png)

- New integrations with credit, income, and identity providers.  
- Centralized rules engine and logging components.  
- Increased requirements for monitoring and alerting.

---

## 4. Compliance Impact

- Stronger audit trails through immutable logs.  
- Better enforcement of lending policies and thresholds.  
- Easier preparation for regulatory reviews.

---

## 5. Financial Impact

- Lower operational cost per application.  
- Higher approval conversion due to faster processing.  
- Expected ROI within 12–18 months post-implementation.

---

## 6. Risks & Mitigations

- Dependency on third-party APIs → mitigated by retries and SLAs.  
- Configuration errors in rules → mitigated by governance and UAT.  
- Adoption challenges → mitigated by communication and training.

---

## 7. Strategic View

ALDS positions NorthRiver Bank more competitively in digital lending, providing a scalable model for future products while controlling risk and maintaining compliance.
