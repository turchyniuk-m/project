query = """
SELECT
  s.date,
  s.ga_session_id,
  sp.continent,
  sp.country,
  sp.device,
  sp.browser,
  sp.mobile_model_name,
  sp.operating_system,
  sp.language,
  sp.name AS traffic_source,
  sp.channel AS traffic_channel,
  acs.account_id,
  acc.is_verified,
  acc.is_unsubscribed,
  p.category,
  p.name,
  p.price,
  p.short_description
FROM `DA.session` AS s
LEFT JOIN `DA.session_params` AS sp
  ON sp.ga_session_id = s.ga_session_id
LEFT JOIN `DA.account_session` AS acs
  ON acs.ga_session_id = s.ga_session_id
LEFT JOIN `DA.account` AS acc
  ON acc.id = acs.account_id
LEFT JOIN `DA.order` AS o
  ON o.ga_session_id = s.ga_session_id
LEFT JOIN `DA.product` AS p
  ON p.item_id = o.item_id
  """
