[app/sources/341903254.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:52dbf65dadbf638cba8582702ba6e9963e8259a9bb7a126c7d3150980e97e4ff" [label="local://context" shape="ellipse"];
  "sha256:0701eb71a7ffc21b2da6a9e8adba4ae498fb47b043fea9d927cd2369054882af" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:02465ca2aeadd0afc43116f9521710c08d92c2a82504405ad3ce0b77c70c81d7" [label="pip install semantics3" shape="box"];
  "sha256:6a779ad94b0eadcac9c9a407137e844e6ef89df2032b456c4ff062d8d47b400e" [label="pip install eventlet" shape="box"];
  "sha256:5679cd9ecdac430b44614ee843c948d882f4454ec1760e67c82c0d152ee4ee83" [label="sha256:5679cd9ecdac430b44614ee843c948d882f4454ec1760e67c82c0d152ee4ee83" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:0701eb71a7ffc21b2da6a9e8adba4ae498fb47b043fea9d927cd2369054882af" [label=""];
  "sha256:52dbf65dadbf638cba8582702ba6e9963e8259a9bb7a126c7d3150980e97e4ff" -> "sha256:0701eb71a7ffc21b2da6a9e8adba4ae498fb47b043fea9d927cd2369054882af" [label=""];
  "sha256:0701eb71a7ffc21b2da6a9e8adba4ae498fb47b043fea9d927cd2369054882af" -> "sha256:02465ca2aeadd0afc43116f9521710c08d92c2a82504405ad3ce0b77c70c81d7" [label=""];
  "sha256:02465ca2aeadd0afc43116f9521710c08d92c2a82504405ad3ce0b77c70c81d7" -> "sha256:6a779ad94b0eadcac9c9a407137e844e6ef89df2032b456c4ff062d8d47b400e" [label=""];
  "sha256:6a779ad94b0eadcac9c9a407137e844e6ef89df2032b456c4ff062d8d47b400e" -> "sha256:5679cd9ecdac430b44614ee843c948d882f4454ec1760e67c82c0d152ee4ee83" [label=""];
}

