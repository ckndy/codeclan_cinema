require_relative('../db/sql_runner')

class Film

  attr_accessor :id, :title, :price

  def initialize (options)
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price']
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', '#{@price}') RETURNING *;"
    film = SqlRunner.run(sql).first
    @id = film['id'].to_i
  end
  
  def self.all()
    sql = "SELECT * FROM films"
    return Film.map { |film| Film.new(film)}
  end

  def update()
    sql = "UPDATE films SET (title, price) = (#{@title}', '#{@price})"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM films WHERE id = (#{@id};"
    SqlRunner.run(sql)
  end
end