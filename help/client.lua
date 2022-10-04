-- register new command, click T in game and type /help
-- https://docs.fivem.net/natives/?_0x5FA79B0F
-- boolean param: if true, players needs permission to execute
RegisterCommand("help", function()
    msg("Server test");
    msg("First script created!")
end, false)

function msg(text)
    -- https://docs.fivem.net/docs/resources/chat/events/chatMessage/
    TriggerEvent("chat:addMessage", {
        color = { 255, 0, 0 },
        multiline = true,
        args = { "[Server]", text } -- arguments (author etc...)
    })
end
