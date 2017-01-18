def doUntilFalse firstInput, aProc
  input = firstInput
  output = firstInput

  while output
    input = output
    output = aProc.call input
  end
  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop
    array.push lastNumber*lastNumber
    array.push lastNumber-1
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end
