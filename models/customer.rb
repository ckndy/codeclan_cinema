require_relative('../db/sql_runner')

class Customer

  attr_reader :id
  attr_reader :name, :funds

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds']
  end

  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', '#{{@funds}}') RETURNING id"
    customer = SqlRunner.run(sql).first
    @id = customer['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM customer"
    customer = customer.get_many(sql)
    return customer
  end

  def update()
      sql = "UPDATE customers SET name = '#{@name}', funds = #{@funds} WHERE id = #{@id}RETURNING *;"
      customer = SqlRunner.run(sql)
    end

    def self.delete()
      sql = "DELETE FROM customers"
      SqlRunner.run(sql)
    end
  end