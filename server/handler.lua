local key = math.random(10000, 100000) * 1.0007;

events.execute('isNet', 'requestKey', function()
  events.execute('client', 'receiveKey', source, key);
end);
