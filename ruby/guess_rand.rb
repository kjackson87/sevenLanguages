guess = 0

while guess != 'exit'
    puts 'Guess a num between 1-10'
    guess = gets.chomp
    puts "Your guess: #{guess}"
    answer = Random.new.rand(1..10)
    if guess == answer.to_s
        puts "Congrats! Answer was: #{answer}"
    else
        puts "Fail! Answer was #{answer}"
    end
end
