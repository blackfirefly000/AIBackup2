if Config.VersionChecker then
  local current = GetResourceMetadata(GetCurrentResourceName(), 'version')
  local github = "https://raw.githubusercontent.com/blackfirefly000/AIBackup2/main/version"

  function checkVersion(current)
      PerformHttpRequest(github, function(statusCode, data, headers)
          if statusCode == 200 then
              local latest = data:match("%s*(.-)%s(.-)%s*$")  -- Trim whitespace
              print(
                [[
          _____   ____             _                  ___  
    /\   |_   _| |  _ \           | |                |__ \ 
   /  \    | |   | |_) | __ _  ___| | ___   _ _ __      ) |
  / /\ \   | |   |  _ < / _` |/ __| |/ / | | | '_ \    / / 
 / ____ \ _| |_  | |_) | (_| | (__|   <| |_| | |_) |  / /_ 
/_/    \_\_____| |____/ \__,_|\___|_|\_\\__,_| .__/  |____|
                                              | |           
                                              |_|           
                  By Blackfirefly000
                ]])
              print("Installed Version: " .. current)
              print("Latest Version: " .. latest)
              if current == latest then
                  print("^2AI Backup 2 is up to date.")
              else
                  print("^1AI Backup 2 is out of date. A newer version is available at ^5https://github.com/blackfirefly000/AIBackup2/releases")
              end
          else
              print("^3Error fetching version:", statusCode)
          end
      end, "GET", "", { ["Content-Type"] = "application/json" })
  end

  checkVersion(current)

end