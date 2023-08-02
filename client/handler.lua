local currentKey;

Citizen.CreateThread(function()
  repeat
    Citizen.Wait(0)
  until NetworkIsSessionStarted();

  events.execute('server', 'requestKey');
end);

events.execute('isNet', 'receiveKey', function(key)
  currentKey = key;
end);
