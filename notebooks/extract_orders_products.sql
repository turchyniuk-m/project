SELECT
  o.ga_session_id,
  p.category,
  p.name AS product_name,
  p.price,
  p.short_description
FROM `DA.order` AS o
LEFT JOIN `DA.product` AS p
  ON p.item_id = o.item_id;
