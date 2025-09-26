import 'dart:io';

class Graph {
  int numberOfNodes = 0;
  List<Node> node = [];
  Graph({required this.node});
}

class Node {
  final int vector;
  List<int> edges;
  Node({required this.vector, required this.edges});
}

void main() {
  GraphDs graph = GraphDs();
  graph.addVertex(0);
  graph.addVertex(1);
  graph.addVertex(2);
  graph.addVertex(3);
  graph.addVertex(4);
  graph.addVertex(5);
  graph.addVertex(6);
  graph.addEdge(3, 1);
  graph.addEdge(3, 4);
  graph.addEdge(4, 2);
  graph.addEdge(4, 5);
  graph.addEdge(1, 2);
  graph.addEdge(1, 0);
  graph.addEdge(0, 2);
  graph.addEdge(6, 5);
  graph.showGraph();
}

class GraphDs {
  Graph graph = Graph(node: []);

  /// Add vector to the graph
  void addVertex(int vector) {
    graph.node.add(Node(vector: vector, edges: []));
    graph.numberOfNodes++;
  }

  /// Add edges to the vector
  void addEdge(int node1, int node2) {
    if (!graph.node[node1].edges.contains(node2)) {
      graph.node[node1].edges.add(node2);
    }
    if (!graph.node[node2].edges.contains(node1)) {
      graph.node[node2].edges.add(node1);
    }
  }

  void showGraph() {
    /// Check node graph is empty
    if (graph.node.length == 0) {
      print("Graph is empty");
      return;
    }

    /// Print all vector and edges
    for (int i = 0; i < graph.node.length; i++) {
      stdout.write(graph.node[i].vector);
      stdout.write(" ---> ");
      stdout.write(graph.node[i].edges);
      print("");
    }
  }
}
