local Preferences = require("Preferences")

-- 1. Initialize (Loads existing data or creates a new instance)
local userPrefs = Preferences:new("user_settings.json")

-- 2. Get a value (with a default fallback if not found)
local volume = userPrefs:get("music_volume", 100)
print("Current Volume:", volume)

-- 3. Set new values
userPrefs:set("music_volume", 80)
userPrefs:set("username", "PlayerOne")

-- 4. Save to disk (Must be called manually to persist changes)
userPrefs:save()
