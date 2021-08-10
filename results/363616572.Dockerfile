[app/sources/363616572.Dockerfile]
digraph {
  "sha256:fd62b32f6785cfc53614b198ea762aa1e84a21db07e06ac2ce1a289bef54299e" [label="docker-image://docker.io/microsoft/aspnet:1.0.0-rc1-final" shape="ellipse"];
  "sha256:da12bc2d81ca9130def5ee30b566d173efbe2c8e2539fbb1adedc48eeb0efb7d" [label="local://context" shape="ellipse"];
  "sha256:e2391a224a9987d9d442b9ca80ffe02e6c170b7984f5fbf22f4e1ca8f5c54214" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:39f85a516cbcfa2e63624f30c6e1895f7066f2725115103874090de9850238c5" [label="mkdir{path=/app/approot}" shape="note"];
  "sha256:13a1e9729a26207e551971853ff2edec3bdbdcb5381e27f0b9e288ee5f751f27" [label="sha256:13a1e9729a26207e551971853ff2edec3bdbdcb5381e27f0b9e288ee5f751f27" shape="plaintext"];
  "sha256:fd62b32f6785cfc53614b198ea762aa1e84a21db07e06ac2ce1a289bef54299e" -> "sha256:e2391a224a9987d9d442b9ca80ffe02e6c170b7984f5fbf22f4e1ca8f5c54214" [label=""];
  "sha256:da12bc2d81ca9130def5ee30b566d173efbe2c8e2539fbb1adedc48eeb0efb7d" -> "sha256:e2391a224a9987d9d442b9ca80ffe02e6c170b7984f5fbf22f4e1ca8f5c54214" [label=""];
  "sha256:e2391a224a9987d9d442b9ca80ffe02e6c170b7984f5fbf22f4e1ca8f5c54214" -> "sha256:39f85a516cbcfa2e63624f30c6e1895f7066f2725115103874090de9850238c5" [label=""];
  "sha256:39f85a516cbcfa2e63624f30c6e1895f7066f2725115103874090de9850238c5" -> "sha256:13a1e9729a26207e551971853ff2edec3bdbdcb5381e27f0b9e288ee5f751f27" [label=""];
}

