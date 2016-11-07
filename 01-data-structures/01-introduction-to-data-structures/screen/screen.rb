require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    self.width = width
    self.height = height
    self.matrix = Array.new(height){Array.new(width)}
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    self.matrix[x][y] = pixel
  end

  def at(x, y)
    inbounds(x,y) ? self.matrix[x][y] : nil
  end

  private

  def inbounds(x, y)
    (x > 0 || y > 0)
  end

end