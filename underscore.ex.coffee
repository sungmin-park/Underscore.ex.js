_.default = (object, key, default_) ->
  if _.has object key then object[key] else default_
