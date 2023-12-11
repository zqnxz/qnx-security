Handler = {};
Handler.__index = Handler;

function Handler:formatEvent(event)
  return string.format('%s:%s', GetCurrentResourceName(), event);
end

currentKey = 0;

Citizen.CreateThread(function()
  repeat
    Citizen.Wait(0)
  until NetworkIsSessionStarted();

  Common:triggerEncryptedEvent('requestKey');
end);

Common:registerEncryptedEvent('receiveKey', function(key)
  currentKey = key;
end);
