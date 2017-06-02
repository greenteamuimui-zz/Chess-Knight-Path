class PolyTreeNode

  attr_reader :value, :parent
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    @parent
  end

  def children
    @children.dup
  end

  def _children
    @children
  end

  def value
    @value
  end

  def parent=(node)
    @parent._children.delete(self) unless @parent.nil?
    @parent = node
    return nil if @parent.nil?
    unless node.children.include?(self)
      node._children << self
    end
  end

  def add_child(child_node)
    @children << child_node
    child_node.parent=(self)
  end

  def remove_child(child_node)
    raise if child_node.parent.nil?
    self.children.delete(child_node)
    child_node.parent=(nil)
  end

  def dfs(target_value)
    return self if self.value == target_value
    self._children.each do |child|
      results = child.dfs(target_value)
      return results if results
    end
    nil
  end

  def bfs(target_value)
    queue = [self]
    until queue.empty?
      current_node = queue.shift
      return current_node if current_node.value == target_value
      queue.concat(current_node.children)
    end
    nil
  end


end
