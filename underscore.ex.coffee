_.default = (object, key, default_) ->
  if _.has object, key then object[key] else default_


_.float = (number, default_) ->
  number = parseFloat number
  if default_? and _.isNaN number
    number = default_
  number


_.int = (number, default_) ->
  number = parseInt number
  if default_? and _.isNaN number
    number = default_
  number


_.reversed = (array) ->
  array = array[..]
  array.reverse()
  array


_.unflatten = (array, length) ->
  for i in [0...Math.ceil array.length / length]
    array[i * length...(i + 1) * length]


_.isOdd = (number) ->
  number % 2 == 1