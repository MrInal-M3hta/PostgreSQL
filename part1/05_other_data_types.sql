

DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events (

    -- UUID - 
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    event_name TEXT NOT NULL,

    -- JSONB
    -- The :: operator means cast (convert).
    -- It converts the string '{}' into the JSONB type.
    metadata JSONB DEFAULT '{}'::jsonb,

    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO basics.app_events (event_name, metadata)
VALUES
(
    'sign_up',
    '{"browser": "Safari"}'
),
(
    'sign_in',
    '{"user": "Mrinal"}'
);

-- SELECT * FROM basics.app_events;

SELECT 
   event_name,
   metadata ->> 'browser' AS browser
FROM basics.app_events
WHERE metadata ? 'browser'; -- “Does the metadata JSON contain a key called browser?”
-- Output:
-- ---------------------------
-- |event_name |      |browser|
-- ---------------------------
-- |sign_up    |        Safari|

SELECT
    event_name,
    metadata ->> 'user' AS user
FROM basics.app_events
WHERE metadata ? 'user'; -- “Does the metadata JSON contain a key called user?”
-- Output:
-- ---------------------------
-- |event_name  |      | user|
-- ---------------------------
-- |sign_in     |      Mrinal|