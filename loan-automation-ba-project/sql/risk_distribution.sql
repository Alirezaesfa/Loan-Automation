-- Risk Tier Distribution Query
-- Produces % distribution of Low, Medium, and High risk applications.

SELECT
    risk_tier,
    COUNT(*) AS total_loans,
    ROUND(COUNT(*)::NUMERIC / SUM(COUNT(*)) OVER() * 100, 2) AS percentage
FROM loans
GROUP BY risk_tier
ORDER BY percentage DESC;
