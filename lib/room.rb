class Room
  attr_reader(:left, :right, :up, :down, :row, :column)
  attr_accessor(:here_before)

  def initialize(left, right, up, down, row, column)
    @left = left
    @right = right
    @up = up
    @down = down
    @row = row
    @column = column
    @here_before = false
  end

end
