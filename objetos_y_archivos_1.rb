class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end
  def average
    (@large + @medium + @small + @xsmall)/4
  end
end

products_list = []

file = File.open('catalogo.txt', 'r')
data = file.readlines
file.close

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

# print products_list

products_list.each {|producto| puts "#{producto.name} #{producto.average}"}

# Optimizar el código implementando el operador splat al momento de instanciar los productos
# Generar un método que permita calcular el promedio de precio por producto.
