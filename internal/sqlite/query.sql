-- name: GetGenerals :many
SELECT * FROM general;

-- name: RawInsert :one
INSERT INTO raw (source, json) VALUES (?, ?) RETURNING id;

-- 0|id|INTEGER|0||1
-- 1|report_id|TEXT|1||0
-- 2|auditee_certify_name|TEXT|1||0
-- 3|auditee_certify_title|TEXT|1||0
-- 4|auditee_contact_name|TEXT|1||0
-- 5|auditee_email|TEXT|1||0
-- 6|auditee_name|TEXT|1||0
-- 7|auditee_phone|TEXT|1||0
-- 8|auditee_contact_title|TEXT|1||0
-- 9|auditee_address_line_1|TEXT|1||0
-- 10|auditee_city|TEXT|1||0
-- 11|auditee_state|TEXT|1||0
-- 12|auditee_ein|TEXT|1||0
-- 13|auditee_uei|TEXT|1||0
-- 14|is_additional_ueis|TEXT|1||0
-- 15|auditee_zip|TEXT|1||0
-- 16|auditor_phone|TEXT|1||0
-- 17|auditor_state|TEXT|1||0
-- 18|auditor_city|TEXT|1||0
-- 19|auditor_contact_title|TEXT|1||0
-- 20|auditor_address_line_1|TEXT|1||0
-- 21|auditor_zip|TEXT|1||0
-- 22|auditor_country|TEXT|1||0
-- 23|auditor_contact_name|TEXT|1||0
-- 24|auditor_email|TEXT|1||0
-- 25|auditor_firm_name|TEXT|1||0
-- 26|auditor_foreign_address|TEXT|1||0
-- 27|auditor_ein|TEXT|1||0
-- 28|cognizant_agency|TEXT|0||0
-- 29|oversight_agency|TEXT|0||0
-- 30|date_created|date|1||0
-- 31|ready_for_certification_date|date|1||0
-- 32|auditor_certified_date|date|1||0
-- 33|auditee_certified_date|date|1||0
-- 34|submitted_date|date|1||0
-- 35|fy_end_date|date|1||0
-- 36|fy_start_date|date|1||0
-- 37|audit_year|TEXT|1||0
-- 38|audit_type|TEXT|1||0
-- 39|gaap_results|TEXT|1||0
-- 40|sp_framework_basis|TEXT|1||0
-- 41|is_sp_framework_required|TEXT|1||0
-- 42|sp_framework_opinions|TEXT|1||0
-- 43|is_going_concern_included|TEXT|1||0
-- 44|is_internal_control_deficiency_disclosed|TEXT|1||0
-- 45|is_internal_control_material_weakness_disclosed|TEXT|1||0
-- 46|is_material_noncompliance_disclosed|TEXT|1||0
-- 47|is_aicpa_audit_guide_included|TEXT|1||0
-- 48|dollar_threshold|int8|1||0
-- 49|is_low_risk_auditee|TEXT|1||0
-- 50|agencies_with_prior_findings|TEXT|1||0
-- 51|entity_type|TEXT|1||0
-- 52|number_months|TEXT|1||0
-- 53|audit_period_covered|TEXT|1||0
-- 54|total_amount_expended|int8|1||0
-- 55|type_audit_code|TEXT|1||0
-- 56|is_public|bool|1||0
-- 57|data_source|TEXT|1||0
-- 58|fac_accepted_date|date|1||0
-- 59|auditor_certify_name|TEXT|1||0
-- 60|auditor_certify_title|TEXT|1||0

-- name: StructuredInsert 
-- INSERT INTO general
-- (id,
-- report_id,
-- auditee_certify_name,
-- auditee_certify_title,
-- auditee_contact_name,
-- auditee_email,
-- auditee_name,
-- auditee_phone,
-- auditee_contact_title,
-- auditee_address_line_1,
-- auditee_city,
-- auditee_state,
-- auditee_ein,
-- auditee_uei,
-- is_additional_ueis,
-- auditee_zip,
-- auditor_phone,
-- auditor_state,
-- auditor_city,
-- auditor_contact_title,
-- auditor_address_line_1,
-- auditor_zip,
-- auditor_country,
-- auditor_contact_name,
-- auditor_email,
-- auditor_firm_name,
-- auditor_foreign_address,
-- auditor_ein,
-- cognizant_agency,
-- oversight_agency,
-- date_created,
-- ready_for_certification_date,
-- auditor_certified_date,
-- auditee_certified_date,
-- submitted_date,
-- fy_end_date,
-- fy_start_date,
-- audit_year,
-- audit_type,
-- gaap_results,
-- sp_framework_basis,
-- is_sp_framework_required,
-- sp_framework_opinions,
-- is_going_concern_included,
-- is_internal_control_deficiency_disclosed,
-- is_internal_control_material_weakness_disclosed,
-- is_material_noncompliance_disclosed,
-- is_aicpa_audit_guide_included,
-- dollar_threshold,
-- is_low_risk_auditee,
-- agencies_with_prior_findings,
-- entity_type,
-- number_months,
-- audit_period_covered,
-- total_amount_expended,
-- type_audit_code,
-- is_public,
-- data_source,
-- fac_accepted_date,
-- auditor_certify_name,
-- auditor_certify_title
-- ) 
-- VALUES
-- (
--   ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
--   ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
--   ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
--   ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
--   ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
--   ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
-- );