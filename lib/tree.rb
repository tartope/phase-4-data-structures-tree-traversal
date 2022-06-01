class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    nodes_to_visit = [@root]

    until nodes_to_visit.empty?
      current = nodes_to_visit.pop
      return current if current[:id] == id

      nodes_to_visit = nodes_to_visit + current[:children]
    end
    nil
  end
end

# Add an instance method, get_element_by_id, to the Tree class that uses the depth-first approach to traverse the Tree and find the desired node.
# Your method should take a string as an argument and return the node with that value.
# If a matching node is not found, your method should return nil.