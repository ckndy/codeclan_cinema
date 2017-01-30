require_relative('../db/sql_runner')

class Ticket

  attr_reader
  attr_accessor

  def initialize(options)
    @customer = options['customer'].to_i
    @film = options['film'].to_i
    @time = options['time'].to_i
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO tickets (customer, "


  def self.all
    sql = "SELECT * FROM tickets;"
    result = SqlRunner.run(sql)
    return result.map {|hash| Ticket.new(hash)}
  end



      def update


        def delete