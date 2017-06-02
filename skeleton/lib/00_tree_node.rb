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

end
