require './customer'
require './movie'
require './ticket'
require './ticket_vending_machine'
require 'date'


#customerを作成。nameとmoneyの値を渡している
customer = Customer.new("ゴリあん", 5000)

#ticket_vending_machineを作成。初期値はinitializeメソッドの中で自動で入る
ticket_vending_machine = TicketVendingMachine.new

# ticket = Ticket.new
#movieを3つ作成。start_date、end_dateにはDateクラスのインスタンスを入れる
titanic = Movie.new(
  "ワイルドスピード",2000,
  Date.new(2017, 2, 20),
  Date.new(2017, 4, 20)
)

tom_and_jerry = Movie.new(
  "ワンピース",1500,
  Date.new(2017, 3, 18),
  Date.new(2017, 5, 10)
)

oceans_eleven = Movie.new(
  "遊戯王",1800,
  Date.new(2017, 4, 18),
  Date.new(2017, 6, 10)
)

aaa = Movie.new(
  "もののけ姫",1800,
  Date.new(2017, 4, 18),
  Date.new(2017, 6, 10)
)

while true do
  puts "いらっしゃいませ。\n"
  puts "[0]チケットを購入する"
  puts "[1]時刻表を見る"
  puts "[2]アプリを終了する"
  input = gets.to_i

  if input == 0
    ticket_vending_machine.movies = [titanic, tom_and_jerry, oceans_eleven, aaa]
    customer.buy(ticket_vending_machine)
  elsif input == 1
    ticket_vending_machine.movies = [titanic, tom_and_jerry, oceans_eleven, aaa]
    customer.date_menu(ticket_vending_machine)
  elsif input == 2
    ticket_vending_machine.end_program
  else
    puts "入力された値は無効な値です"
  end
end

#作成したticket_vending_machineクラスのインスタンスのmoviesを更新

# ticket_vending_machine.display_menu
# ticket_vending_machine.display_result(customer)