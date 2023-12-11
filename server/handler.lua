Handler = {};
Handler.__index = Handler;

function Handler:formatEvent(event)
  return string.format('%s:%s', GetCurrentResourceName(), event);
end

local key = math.random(10000, 100000) * 1.0007;

Common:registerEncryptedEvent('requestKey', function()
  Common:triggerEncryptedEvent('receiveKey', key);
end);
