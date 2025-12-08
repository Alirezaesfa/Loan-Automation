-- Loan funnel metrics
-- Counts applications at each major stage in the funnel.

WITH events AS (
    SELECT
        application_id,
        MAX(CASE WHEN status = 'STARTED' THEN 1 ELSE 0 END) AS started,
        MAX(CASE WHEN status = 'SUBMITTED' THEN 1 ELSE 0 END) AS submitted,
        MAX(CASE WHEN status = 'CREDIT_PULLED' THEN 1 ELSE 0 END) AS credit_pulled,
        MAX(CASE WHEN status = 'INCOME_VERIFIED' THEN 1 ELSE 0 END) AS income_verified,
        MAX(CASE WHEN status = 'AUTO_APPROVED' THEN 1 ELSE 0 END) AS auto_approved,
        MAX(CASE WHEN status = 'MANUAL_REVIEW' THEN 1 ELSE 0 END) AS manual_review,
        MAX(CASE WHEN status = 'FINAL_APPROVED' THEN 1 ELSE 0 END) AS final_approved
    FROM application_status_history
    GROUP BY application_id
)
SELECT
    SUM(started) AS applications_started,
    SUM(submitted) AS applications_submitted,
    SUM(credit_pulled) AS credit_pulled,
    SUM(income_verified) AS income_verified,
    SUM(auto_approved) AS auto_approved,
    SUM(manual_review) AS manual_review,
    SUM(final_approved) AS final_approved
FROM events;
