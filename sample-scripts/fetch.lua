local res, err = fetch(
    "https://raw.githubusercontent.com/PowerKuy/Growlauncher-Documentation/refs/heads/main/sample-scripts/example-for-fetch.lua")
if not res then
    LogToConsole(err)
else
    LogToConsole(res)
    load(res)
end
