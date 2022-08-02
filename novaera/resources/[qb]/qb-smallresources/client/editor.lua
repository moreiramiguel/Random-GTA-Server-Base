RegisterCommand("record", function()
    StartRecording(1)
    QBCore.Functions.Notify("Começaste a gravar!", "success")
end)

RegisterCommand("clip", function()
    StartRecording(0)
end)

RegisterCommand("saveclip", function()
    StopRecordingAndSaveClip()
    QBCore.Functions.Notify("Gravação guardada!", "success")
end)

RegisterCommand("delclip", function()
    StopRecordingAndDiscardClip()
    QBCore.Functions.Notify("Eliminar gravação!", "error")
end)

RegisterCommand("editor", function()
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()
    QBCore.Functions.Notify("Xau aí chavalo, porta-te bem!", "error")
end)
