class Room
  @@rooms = []
  attr_reader(:left, :right, :up, :down, :row, :column)
  attr_accessor(:here_before)

  def self.all()
    @@rooms
  end

  def self.clear()
    @@rooms = []
  end

  def self.find(row, column)
    room_row = row
    room_col = column
    @@rooms.each do |room|
      if room.row == room_row && room.column == room_col
        return room
      end
    end
  end

  def initialize(left, right, up, down, row, column)
    @left = left
    @right = right
    @up = up
    @down = down
    @row = row
    @column = column
    @here_before = false
    @@rooms.push(self)
  end
end
