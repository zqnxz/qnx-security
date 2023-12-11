Common = {};
Common.__index = Common;

function Common:registerEvent(event)
  RegisterNetEvent(Handler:formatEvent(event));
  AddEventHandler(Handler:formatEvent(event), function()

  end);
end

function Common:registerEncryptedEvent(event)
  Common:registerEvent(event, function(event, cb)
    local args = {};

    for i = 1, #enc do
      args[i] = string.char(enc[i] / 55);
    end

    local dec = json.decode(table.concat(args));
    local unpacked = table.unpack(dec);

    cb(table.unpack(dec));
  end);
end

function Common:triggerEncryptedEvent(event, ...)
  local args = json.encode({...} or {});
  local enc = {};

  for i = 1, #args do
    enc[i] = string.byte(args, i) * 55;
  end

  TriggerClientEvent(name, source, enc);
end
