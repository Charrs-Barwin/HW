class GraphNode
    attr_accessor :val, :neighbors
  
    def initialize(val)
      self.val = val
      self.neighbors = []
    end
end

# def depth_first(graph)
#     visited = [] #Set.new()
#     graph.keys.each do |node|
#       _depth_first(node, graph, visited)
#     end
#   end
  
#   def _depth_first(node, graph, visited)
#     return nil if visited.include?(node.to_sym)
  
#     puts node
#     visited << node.to_sym
  
#     graph[node.to_sym].each do |neighbor|
#       _depth_first(neighbor, graph, visited)
#     end
# end

def bfs(starting_node, target_value)
    visited = []
    my_queue = [starting_node]
    until my_queue.empty?
        ele = my_queue.shift
        return ele if ele.val == target_value
        my_queue += ele.neighbors
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

# graph = {
#     'a': ['b', 'c', 'e'],
#     'b': [],
#     'c': ['b', 'd'],
#     'd': [],
#     'e': ['a'],
#     'f': ['e']
#   }
#   graph2 = {
#     'h': ['i', 'j'],
#     'i': [],
#     'j': ['k'],
#     'k': [],
#     'l': ['m'],
#     'm': []
#   }
# depth_first(graph)
# depth_first(graph2)


p bfs(a, "b").val # -> GraphNode with the value of "b"
p bfs(a, "f").val # -> nil