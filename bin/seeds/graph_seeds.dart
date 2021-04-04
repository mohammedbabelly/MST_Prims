import '../models/edge.dart';
import '../models/vertext.dart';

Vertex a = Vertex(id: 1, name: "A");
Vertex b = Vertex(id: 2, name: "B");
Vertex c = Vertex(id: 3, name: "C");
Vertex d = Vertex(id: 4, name: "D");
Vertex e = Vertex(id: 5, name: "E");
Vertex f = Vertex(id: 6, name: "F");

class GraphSeeds {
  List<Vertex> vertices = [
    a,
    b,
    c,
    d,
    e,
    f,
  ];

  List<Edge> edges = <Edge>[
    Edge(start: a, end: b, weight: 1),
    Edge(start: a, end: e, weight: 2),
    Edge(start: a, end: c, weight: 3),
    Edge(start: d, end: b, weight: 11),
    Edge(start: d, end: c, weight: 9),
    Edge(start: d, end: e, weight: 5),
    Edge(start: d, end: a, weight: 2),
    Edge(start: b, end: f, weight: 2),
  ];
}
