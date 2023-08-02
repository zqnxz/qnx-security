-- Example usage of Key detection.
-- @param clientKey, key int
events.execute('isNet', 'test', function(clientKey)
  if not clientKey == key then
    BanEvent('cheater', 'get good, https://dsc.gg/envyservices');
    return;
  end
  utils.print('success', 'successfully bypassed key.');
end);
