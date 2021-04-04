import 'models/edge.dart';
import 'models/graph.dart';
import 'models/vertext.dart';

class Prim {
  final Graph _tree;
  List<Edge> _spanningTree;
  List<Vertex> _s;

  Prim(this._tree) {
    _spanningTree = [];
    _s = [];
  }

  List<Edge> findMST(Vertex startVertex) {
    int n = _tree.vertices.length;
    _s.add(startVertex);
    while (n - 1 > 0) {
      List<Edge> ws = calcWs(_tree, _s);
      Edge minEdge = getMinWeight(ws);
      _spanningTree.add(minEdge);
      _s.add(_s.hasVertex(minEdge.start) ? minEdge.end : minEdge.start);
      n--;
    }
    printOutput(_spanningTree);
    return _spanningTree;
  }

  List<Edge> calcWs(Graph tree, List<Vertex> s) {
    List<Edge> res = [];
    tree.edges.forEach((edge) {
      if ((s.hasVertex(edge.start) && !s.hasVertex(edge.end)) ||
          (!s.hasVertex(edge.start) && s.hasVertex(edge.end))) res.add(edge);
    });
    return res;
  }

  Edge getMinWeight(List<Edge> edges) {
    Edge min = Edge(weight: 1000);
    edges.forEach((edge) => min = edge.weight < min.weight ? edge : min);
    return min;
  }
}

void printOutput(List<Edge> spanningTree) {
  var sum = 0;
  spanningTree.forEach((edge) {
    sum += edge.weight;
    print(
        'from ${edge.start.name} to ${edge.end.name} with weight = ${edge.weight}');
  });

  print('MST weight= $sum');
}
