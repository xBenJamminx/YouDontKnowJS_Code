SELECT "purchase_events"."created_at" AS "created_at",
  CAST("purchase_events"."seller" AS TEXT) AS "seller",
  CAST("purchase_events"."seller_username" AS TEXT) AS "seller_username",
  CAST("purchase_events"."buyer" AS TEXT) AS "buyer",
  CAST("purchase_events"."buyer_username" AS TEXT) AS "buyer_username",
  "purchase_events"."price" AS "price",
  "purchase_events"."price_floor_at_time" AS "price_floor_at_time",
  "purchase_events"."alpha" AS "alpha",
  CAST("purchase_events"."player" AS TEXT) AS "player",
  "purchase_events"."serial" AS "serial",
  CAST("purchase_events"."set_id" AS TEXT) AS "set_id",
  CAST("purchase_events"."play_id" AS TEXT) AS "play_id",
  CAST("purchase_events"."transaction_id" AS TEXT) AS "transaction_id",
  CAST("set_play_metadata"."play_category" AS TEXT) AS "play_category",
  "set_play_metadata"."play_circulation_count" AS "play_circulation_count",
  "set_play_metadata"."play_retired" AS "play_retired",
  "set_play_metadata"."set_locked" AS "set_locked",
  "set_play_metadata"."set_series_number" AS "set_series_number",
  CAST("set_play_metadata"."set_series_name" AS TEXT) AS "set_series_name",
  CAST("set_play_metadata"."set_visual_id" AS TEXT) AS "set_visual_id",
  CAST("set_play_metadata"."birth_date" AS TEXT) AS "birth_date",
  CAST("set_play_metadata"."current_team" AS TEXT) AS "current_team",
  "set_play_metadata"."date_of_moment" AS "date_of_moment",
  "set_play_metadata"."draft_year" AS "draft_year",
  CAST("set_play_metadata"."jersey_number" AS TEXT) AS "jersey_number",
  "set_play_metadata"."player_id" AS "player_id",
  CAST("set_play_metadata"."player_name" AS TEXT) AS "player_name",
  CAST("set_play_metadata"."primary_position" AS TEXT) AS "primary_position",
  CAST("set_play_metadata"."away_team_name" AS TEXT) AS "away_team_name",
  CAST("set_play_metadata"."home_team_name" AS TEXT) AS "home_team_name",
  CAST("set_play_metadata"."nba_season" AS TEXT) AS "nba_season"
FROM "public"."purchase_events" "purchase_events"
  INNER JOIN "public"."set_play_metadata" "set_play_metadata" ON ((CAST("purchase_events"."play_id" AS TEXT) = CAST("set_play_metadata"."play_guid" AS TEXT)) AND (CAST("purchase_events"."set_id" AS TEXT) = CAST("set_play_metadata"."set_guid" AS TEXT)))
  