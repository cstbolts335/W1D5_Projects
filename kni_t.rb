require_relative : :PolyTreeNode
attr_accessor :

class KnightPathFinder

  def initialize(start_pos)
    @start_pos = start_pos
    @visited_positions = [start_pos]  #array (coordinates)
    @root_node = PolyTreeNode.new(start_pos)
    self.build_move_tree
  end

  def []=(pos)
    x, y = pos
    grid[x][y]
  end

  def build_move_tree
    @self.root_node
  end

  def find_path(target_pos)

  end

  def valid_moves(move_pos)

  end

  def new_move_positions(pos)
    valid_moves(pos)
  end

  def 

end
