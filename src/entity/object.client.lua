--
-- @Projet: Jobmenu
-- @Createur: Hylex
--

--
-- Get all object
--
function GetObjects()

  return GetEntities(FindFirstObject, FindNextObject, EndFindObject)

end

--
-- Get object in direction
--
function GetObjectInDirection(range)

    if type(range) ~= "number" then
        range = 20.0
    end
    local entity = GetEntityObjectInDirection(range)
    if DoesEntityExist(entity) then
        if GetEntityType(entity) == 3 then
            return entity
        end
    end
    return false

end

--
-- Get objects in coords
--
function GetObjectsInArea(settings)

    local settings = settings or {}
    settings.entities = GetObjects()
    return GetEntitiesInArea(settings)

end

--
-- Get objects in around
--
function GetObjectsInAround(settings)

    local settings = settings or {}
    settings.entities = GetObjects()
    return GetEntitiesInAround(settings)

end
