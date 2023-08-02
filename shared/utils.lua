utils = {
  print = function(type, msg)
    if type == 'error' then
      print('^1' .. GetCurrentResourceName() .. ' » ' .. msg .. '^0');
    elseif type == 'info' then
      print('^5' .. GetCurrentResourceName() .. ' » ' .. msg .. '^0');
    elseif type == 'success' then
      print('^2' .. GetCurrentResourceName() .. ' » ' .. msg .. '^0');
    elseif type == 'debug' then
      print('^3' .. GetCurrentResourceName() .. ' » ' .. msg .. '^0');
    else
      print(GetCurrentResourceName() .. ' » ' .. msg .. '^0');
    end
  end
}

events = {
  execute = function(type, event, ...)
    utils.print(event, ...);

    if type == 'isNet' then
      RegisterNetEvent(GetCurrentResourceName() .. ':' .. event, function(...)
      end);
    elseif type == 'client' then
      TriggerClientEvent(GetCurrentResourceName() .. ':' .. event, source, ...);
    elseif type == 'server' then
      TriggerServerEvent(GetCurrentResourceName() .. ':' .. event, ...);
    end
  end
}
