local res, err = fetch(
    "https://raw.githubusercontent.com/PowerKuy/Growlauncher-Documentation/refs/heads/main/sample-scripts/example-for-fetch.lua")

if not res then
    LogToConsole(err)
return

end

local chunk, loadErr = load(res)
if not chunk then
    LogToConsole(loadErr)
    return
end

chunk()
