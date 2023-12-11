RegisterCommand('test', function()
  Common:triggerEncryptedEvent('test', currentKey, 'Hallo');
end);
