import 'models/graph.dart';
import 'prim.dart';
import 'seeds/graph_seeds.dart';

void main() {
  Prim(Graph(edges: GraphSeeds().edges, vertices: GraphSeeds().vertices))
      .findMST(a);
}
