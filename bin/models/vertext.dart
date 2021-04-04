class Vertex {
  int id;
  String name;
  Vertex({this.id, this.name});
}

extension HasVertex on List<Vertex> {
  hasVertex(element) {
    for (Vertex v in this) {
      if (v.id == element.id) return true;
    }
    return false;
  }
}
