--====================================================================================================
--PRE INIT
--====================================================================================================

-- info

ei_mod = {}
ei_mod.stage = "data"

-- lib and paths

require("lib/paths")

--====================================================================================================
--MAIN CONTENT CODE
--====================================================================================================

-- add new categories, entities, items, techs, recipes fluids, resources

-- add age-techs
require("prototypes/age_techs")
-- add dark age prototypes
require("prototypes/dark_age/dark_age")


--====================================================================================================
--COMPATIBILITY CODE
--====================================================================================================