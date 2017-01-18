class Learning

def doSelfImportantly someProc
  puts "everybody just HOLD ON! I have something to do..."
  someProc.call
  puts "OK everyone, I'm done. Carry on."
end

  sayHello = Proc.new do
    puts 'hello'
  end

  sayGoodbye = Proc.new do
    puts "goodbye"
  end
end
