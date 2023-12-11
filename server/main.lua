Common:registerEncryptedEvent('test', function(clientKey, val)
  clientKey, key = clientKey + 69420, key + 69420;

  if (clientKey ~= key) then
    print('Not Bypassed :/');
    return;
  end

  print(val);
end);
