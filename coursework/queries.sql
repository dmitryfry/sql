use yobobo;

SELECT
    user_gift_cards.*,
    giftcards.image_url
  FROM
    user_gift_cards AS user_gift_cards
  JOIN giftcards AS giftcards ON user_gift_cards.giftcard_id = giftcards.id
  AND user_gift_cards.is_activated = false
  WHERE user_gift_cards.user_id = 2;

SELECT
	giftcards.*,
	  user_gift_cards.price
	FROM
	  giftcards AS giftcards
	LEFT JOIN
	user_gift_cards ON giftcards.id = user_gift_cards.giftcard_id AND user_gift_cards.is_activated = false
	ORDER BY giftcards.price DESC 
	LIMIT 10;


SELECT count(gender) FROM ad_compaings group by gender;

SELECT * from logs;

CALL all_videos();

SELECT * from activated_users_gift_cards;
SELECT * from  users_video_statustics;