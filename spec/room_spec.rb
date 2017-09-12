require('room')
require('rspec')

describe('room')do
  it("returns false if the room doesn't have the option of leaving to the left") do
    test_room = Room.new(false, true, true, true, 0, 0)
    expect(test_room.left).to(eq(false))
  end
  it("returns false if the room doesn't have the option of leaving to the right") do
    test_room = Room.new(true, false, true, true, 0, 0)
    expect(test_room.right).to(eq(false))
  end
  it("returns false if the room doesn't have the option of leaving to the up") do
    test_room = Room.new(true, true, false, true, 0, 0)
    expect(test_room.up).to(eq(false))
  end
  it("returns false if the room doesn't have the option of leaving to the down") do
    test_room = Room.new(true, true, true, false, 0, 0)
    expect(test_room.down).to(eq(false))
  end
  # it("returns false if the room hasn't been visited ") do
  #   test_room = Room.new(false, false, false, false, 0, 0)
  #   expect(test_room.visited?).to(eq(false))
  # end
  # it("returns true if the room has been visited ") do
  #   test_room = Room.new(false, false, false, false, 0, 0)
  #   test_room.visited
  #   expect(test_room.visited?).to(eq(true))
  # end
  # it("returns false if the room doesn't have the option of leaving to the left") do
  #   test_room = Room.new(true, true, true, true, 0, 0)
  #   expect(test_room.left?).to(eq(true))
  # end
  # it("returns true if the room doesn't have the option of leaving to the right") do
  #   test_room = Room.new(true, true, true, true, 0, 0)
  #   expect(test_room.right?).to(eq(true))
  # end
  # it("returns true if the room doesn't have the option of leaving to the up") do
  #   test_room = Room.new(true, true, true, true, 0, 0)
  #   expect(test_room.up?).to(eq(true))
  # end
  # it("returns true if the room doesn't have the option of leaving to the down") do
  #   test_room = Room.new(true, true, true, true, 0, 0)
  #   expect(test_room.down?).to(eq(true))
  # end
  # it("returns row number of the given room") do
  #   test_room = Room.new(true, true, true, true, 3, 4)
  #   expect(test_room.row).to(eq(3))
  # end
  # it("returns column number of the given room") do
  #   test_room = Room.new(true, true, true, true, 3, 4)
  #   expect(test_room.col).to(eq(4))
  # end
end
# describe('room.find') do
#   it("finds a room based on its row and column") do
#     test_room1 = Room.new(true, true, true, true, 2, 4)
#     test_room2 = Room.new(true, true, true, true, 3, 1)
#     expect(Room.find(2, 4)).to(eq(test_room1))
#     expect(Room.find(3, 1)).to(eq(test_room2))
#   end
# end

  #left right up down row column here_before
