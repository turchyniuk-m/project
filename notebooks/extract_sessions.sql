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
  sp.channel AS traffic_channel
FROM `DA.session` AS s
LEFT JOIN `DA.session_params` AS sp
  ON sp.ga_session_id = s.ga_session_id;
