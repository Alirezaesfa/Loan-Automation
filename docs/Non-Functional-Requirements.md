# Non-Functional Requirements (NFR)

This document outlines the non-functional expectations for the Automated Loan Decisioning System (ALDS). These requirements ensure the solution performs reliably, securely, and consistently under real operating conditions.

---

## 1. Performance Requirements

- The system shall process standard loan applications end-to-end in under **2 minutes** during normal operating conditions.  
- The system shall support at least **500 concurrent application sessions** without functional degradation.  
- Customer-facing screens shall load within **2 seconds** for typical user connections.

---

## 2. Availability & Reliability

- The system shall maintain **99.5% monthly uptime**.  
- Core components shall be deployed with redundancy and failover capabilities.  
- The system shall support rollback and recovery workflows for partial failures.

---

## 3. Security

- Data at rest must be encrypted with **AES-256** or equivalent.  
- Data in transit must use **TLS 1.2 or higher**.  
- Role-based access control (RBAC) shall govern access to internal tools and sensitive data.  
- Decision logs must be immutable and tamper-evident.

---

## 4. Compliance

- The solution shall comply with OSFI B-20 guidelines, AML/KYC expectations, and Canadian privacy legislation.  
- Audit logs must be retained for at least **seven years**.  
- Decision rules and templates must support versioning for regulatory review.

---

## 5. Integration Requirements

- Integrations with credit bureaus and income verification partners must adhere to agreed SLAs.  
- The system shall implement retry, timeout, and backoff strategies for external API calls.  
- Integration failures must be logged and surfaced through monitoring tools.

---

## 6. Monitoring & Observability

- The system shall provide monitoring for failed transactions, performance thresholds, and SLA breaches.  
- Alerts must be raised to operations teams when thresholds are exceeded.

---

## 7. Architecture Alignment

![Architecture](../diagrams/architecture.png)

The architecture supports non-functional goals through a layered design, API gateway, dedicated rules engine, and centralized logging.

---

## 8. State Behavior Considerations

![State Machine](../diagrams/state-machine.png)

Defined state transitions ensure predictable behavior during retries, failures, and manual interventions.

---

## 9. Acceptance of NFRs

NFRs are considered met when:

- Performance targets are validated in testing.  
- Security controls pass audit review.  
- Monitoring and alerting function as expected.  
- Compliance teams sign off on retention, encryption, and traceability.
