void main() {
  var map = {"sanyam": 234, "abc": 999};
  print(map);
  print(map["sanyam"]); // to get the value for the key

  map["xyz"] = 888; // to add or override data
  print(map);

  var map2 = Map();
  map2["abc"] = 000;
  print(map2);

  print(map.isEmpty);
  print(map.keys);
  print(map.values);
  print(map.containsKey("sanyam"));
}
