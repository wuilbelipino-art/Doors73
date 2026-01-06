-- Script para ver objetos en Doors

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local function highlightObject(object)
    if object then
        object.BrickColor = BrickColor.new("Bright blue")
        object.Material = Enum.Material.Neon
    end
end

local objectsToSearch = {
    "Door", "Puerta",
    "Key", "Llave",
    "Coin", "Moneda",
    "Entity", "Entidad",
    "Book", "Libro",
    "Cabinet", "Armario"
}

local function searchObjects()
    for _, object in pairs(workspace:GetDescendants()) do
        for _, name in pairs(objectsToSearch) do
            if object.Name == name then
                highlightObject(object)
            end
        end
    end
end

searchObjects()
