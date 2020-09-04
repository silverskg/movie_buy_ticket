require './customer'
require 'pry'
require './ticket'
require './ticket_vending_machine'
require './movie'


#customerを作成。nameとmoneyの値を渡している
customer = Customer.new("ゴリあん", 5000)

#ticket_vending_machineを作成。初期値はinitializeメソッドの中で自動で入る
ticket_vending_machine = TicketVendingMachine.new
movie = Movie.new

menus = [
  {menu:"チケットを購入する"}, {menu:"時刻表を見る"}, 
  {menu:"アプリを終了する"}
]

  puts "いらっしゃいませ！"
  d = DateTime.now
  puts d.strftime("現在時刻は%Y年%m月%d日です。")
  customer.poket_money

  menus.each.with_index(1) do |menu, num|
    puts "#{num}.#{menu[:menu]}"
  end

  print "メニューを選択してください >"

  selected_num = gets.chomp.to_i 
  
  if selected_num == 1
    movie.movies
    customer.buy(ticket_vending_machine)
  elsif selected_num == 2
    ticket_vending_machine.movies
    customer.date_menu(ticket_vending_machine)
  elsif selected_num == 3
    ticket_vending_machine.end_program
  else
    puts "入力された情報はありません。"
    return
  end
