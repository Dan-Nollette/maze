require ('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/room')

get('/') do
  erb(:index)
end
# left, right, up, down
post('/maze_room') do
  @room=Room.new(false, false, true, false, 0, 0)
  Room.new(false, true, true, false, 0, 1)
  Room.new(true, false, true, false, 0, 2)
  Room.new(false, true, false, false, 0, 3)
  Room.new(true, false, true, false, 0, 4)
  Room.new(false, false, true, true, 1, 0)
  Room.new(false, false, true, true, 1, 1)
  Room.new(false, true, true, true, 1, 2)
  Room.new(true, true, false, false, 1, 3)
  Room.new(true, false, true, true, 1, 4)
  Room.new(false, true, false, true, 2, 0)
  Room.new(true, false, false, true, 2, 1)
  Room.new(false, false, true, true, 2, 2)
  Room.new(false, false, true, false, 2, 3)
  Room.new(false, false, false, true, 2, 4)
  Room.new(false, true, true, false, 3, 0)
  Room.new(true, true, false, false, 3, 1)
  Room.new(true, false, false, true, 3, 2)
  Room.new(false, true, true, true, 3, 3)
  Room.new(true, false, true, false, 3, 4)
  Room.new(false, true, true, false, 4, 0)
  Room.new(true, true, false, false, 4, 1)
  Room.new(true, true, false, false, 4, 2)
  Room.new(true, false, false, true, 4, 3)
  Room.new(false, true, false, false, 4, 4)

  @moves = []
  if @room.left
    @moves.push(["left", Room.find(@room.row, @room.column + 1)])
  end
  if @room.right
    @moves.push(["right", Room.find(@room.row, @room.column - 1)])
  end
  if @room.up
    @moves.push(["up", Room.find(@room.row + 1, @room.column)])
  end
  if @room.down
    @moves.push(["down", Room.find(@room.row - 1, @room.column)])
  end
  # @row = Room.find(params[:row])
  # @column = Room.find(params[:column])
  erb(:maze_room)
end

get('/maze_room/:row/:column') do
  @room = Room.find(params[:row], params[:column])
  @moves = []
  if @room.left
    @moves.push(["left", Room.find(@room.row, @room.column + 1)])
  end
  if @room.right
    @moves.push(["right", Room.find(@room.row, @room.column - 1)])
  end
  if @room.up
    @moves.push(["up", Room.find(@room.row + 1, @room.column)])
  end
  if @room.down
    @moves.push(["down", Room.find(@room.row - 1, @room.column)])
  end
  # @row = Room.find(params[:row])
  # @column = Room.find(params[:column])
  erb(:maze_room)
end
