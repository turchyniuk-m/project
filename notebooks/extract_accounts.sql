SELECT
  acs.account_id,
  acc.is_verified,
  acc.is_unsubscribed,
  acs.ga_session_id
FROM `DA.account_session` AS acs
LEFT JOIN `DA.account` AS acc
  ON acc.id = acs.account_id;
