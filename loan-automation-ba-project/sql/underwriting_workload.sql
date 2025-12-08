-- Underwriting workload snapshot
-- Provides queue size, average review time, and fraud escalations.

-- Queue size: applications currently waiting for manual review
SELECT COUNT(*) AS manual_review_queue_size
FROM loans
WHERE status = 'MANUAL_REVIEW';

-- Average review time for completed manual reviews
SELECT
    AVG(EXTRACT(EPOCH FROM (decision_at - assigned_to_underwriter_at)) / 3600.0) AS avg_review_time_hours
FROM underwriter_reviews
WHERE decision_at IS NOT NULL;

-- Fraud escalations in the last 30 days
SELECT
    COUNT(*) AS fraud_escalations_30d
FROM audit_logs
WHERE event_type = 'FRAUD_ESCALATED'
  AND created_at >= NOW() - INTERVAL '30 days';
