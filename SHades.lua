Import "../mods/SHades/inspect.lua"
Import "../mods/SHades/ModUtil.lua"
Import "../mods/SHades/ModUtilHades.lua"

OnControlPressed{"Shout",
    function(triggerArgs)
        print("findme")
        local exitDoorsIPairs = CollapseTable(OfferedExitDoors)
        for index, door in ipairs(exitDoorsIPairs) do
            wait(0.5)
            print(shades_inspect.inspect(door))
            SetAnimation({ DestinationId = door.ObjectId, Name = door.ExitDoorOpenAnimation }) -- sorta works
            -- Most working one I tested
            -- local rewardContainerAnim = "RoomRewardShatter"
            -- if door.Room ~= nil and door.Room.RewardStoreName == "MetaProgress" then
            --     rewardContainerAnim = "RoomRewardShatter_MetaReward"
            -- end
            -- CreateAnimation({ Name = rewardContainerAnim, DestinationId = door.DoorIconFront, Scale = 1 })
        end
    end
}