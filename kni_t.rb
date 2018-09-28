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
    tree = [self.root_node] #tree is an array

    until tree.empty?
      node1 = tree.shift
      pos_1 = node1.value

      new_move_positions(pos_1).each do |pos_2|
        node2 = PolyTreeNode.new(pos_2)

      end

  end

  def find_path(target_pos)

  end

  def self.valid_moves(move_pos)

  end

  def new_move_positions(pos)
    self.valid_moves(pos) unless visited_positions.inlcude?(pos)
    visited_positions << pos #adding to visited postions array
    pos #returning position
  end

end
