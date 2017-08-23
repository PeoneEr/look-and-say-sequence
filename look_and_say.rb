class LookAndSaySequence
  attr_accessor :count, :initial, :current

  def initialize(count:)
    @count = count
    @initial = '1'
    @current = initial
  end

  def go_on
    puts '-'*50
    puts initial
    count.times do
      puts build_line
    end
  end

  private

  def build_line
    @current = current.chars
      .chunk { |digit| digit }
      .map { |digit, list| list.length.to_s + digit }
      .join
  end
end

puts 'Введите количество строк: '
LookAndSaySequence.new(count: gets.to_i).go_on
