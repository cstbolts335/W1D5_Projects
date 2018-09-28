
class PolyTreeNode
  attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
    unless parent.nil?
      parent.children.reject! {|el| el == self}
    end

    @parent = new_parent
    unless new_parent.nil? || new_parent.children.include?(self)
      new_parent.children.push(self)
    end
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(node)
    raise "Error" unless self.children.include?(node)
    node.parent = nil
  end

  def dfs(target_value)
    return self if self.value == target_value
    self.children.each do |child|
      current = child.dfs(target_value)
      # if current.value == target_value
      #   return current
      # end
      return current unless current.nil?
    end
    nil
  end

  def bfs(target_value)
    da_que = []
    da_que.push(self)

    until da_que.empty?
      node1 = da_que.shift
      return node1 if node1.value == target_value
      node1.children.each {|child| da_que << child}
    end
    nil
  end


end
