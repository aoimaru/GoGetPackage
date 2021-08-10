[app/sources/329553089.Dockerfile]
digraph {
  "sha256:365cfd895c94cefb8e2d668ebf3267fec81feca7f5687a95c9f4fb14f850c168" [label="docker-image://docker.io/mhart/alpine-node:8" shape="ellipse"];
  "sha256:7c93afe5148a4f43122504060a2b303e9c1463519cf26a52d9f7998a32929a0d" [label="/bin/sh -c apk add --no-cache make gcc g++ python bash" shape="box"];
  "sha256:c2011f7e9f7155d9cbd5e8abe4135fcc978b030cdb7eb852e584436e1ee59041" [label="mkdir{path=/var/expressCart}" shape="note"];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" [label="local://context" shape="ellipse"];
  "sha256:e1af2a9af13560a61317b7cb0b64bf5fd6eb4474b28de6d0237d8be4f9ff3bcd" [label="copy{src=/lib, dest=/var/expressCart/lib/}" shape="note"];
  "sha256:311184dbc7513d966fc905995833321e2f4745b447e1f343743d8f8eda52fe99" [label="copy{src=/bin, dest=/var/expressCart/bin/}" shape="note"];
  "sha256:c8b046c97f5b76f3b146b59b00458b5b3c4b92211f7b09f42c5e065e9a327ed6" [label="copy{src=/config, dest=/var/expressCart/config/}" shape="note"];
  "sha256:6ccc8e5dad7446a0ecde720565c9b5ff620cc84f66763ac74c77fed031745909" [label="copy{src=/public, dest=/var/expressCart/public/}" shape="note"];
  "sha256:f7dffe9537dc6aa2f6b8e3b6716752c6b7eecfda9f0040db363edde4dbaa92cb" [label="copy{src=/routes, dest=/var/expressCart/routes/}" shape="note"];
  "sha256:a3018f5f5c3e8f4c7b0749f2106028e408d4ce884f4c758c48e502f9701d0da2" [label="copy{src=/views, dest=/var/expressCart/views/}" shape="note"];
  "sha256:6008627cbe08d2c9062e34e79047d1e331d46b9bce87f39bd81453992a43f06d" [label="copy{src=/app.js, dest=/var/expressCart/}" shape="note"];
  "sha256:7dcae0021632a662ce51c6cbdb18406ed436e7a092c1b4b6e7e9545444f5fe04" [label="copy{src=/package.json, dest=/var/expressCart/}" shape="note"];
  "sha256:97434e205ad6f307404f5ff82ec897676d96e457ca9b3bd42452ad0805aaad22" [label="copy{src=/gulpfile.js, dest=/var/expressCart/}" shape="note"];
  "sha256:254eb562c367ba9e028b81bb9c46a169d2d1ad347e5434b99e6f9b81948e239b" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f9af9046b4d0c292d4dc514bc2e65dff95f857d6b9ea77cbaf0a5b1287811df5" [label="sha256:f9af9046b4d0c292d4dc514bc2e65dff95f857d6b9ea77cbaf0a5b1287811df5" shape="plaintext"];
  "sha256:365cfd895c94cefb8e2d668ebf3267fec81feca7f5687a95c9f4fb14f850c168" -> "sha256:7c93afe5148a4f43122504060a2b303e9c1463519cf26a52d9f7998a32929a0d" [label=""];
  "sha256:7c93afe5148a4f43122504060a2b303e9c1463519cf26a52d9f7998a32929a0d" -> "sha256:c2011f7e9f7155d9cbd5e8abe4135fcc978b030cdb7eb852e584436e1ee59041" [label=""];
  "sha256:c2011f7e9f7155d9cbd5e8abe4135fcc978b030cdb7eb852e584436e1ee59041" -> "sha256:e1af2a9af13560a61317b7cb0b64bf5fd6eb4474b28de6d0237d8be4f9ff3bcd" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:e1af2a9af13560a61317b7cb0b64bf5fd6eb4474b28de6d0237d8be4f9ff3bcd" [label=""];
  "sha256:e1af2a9af13560a61317b7cb0b64bf5fd6eb4474b28de6d0237d8be4f9ff3bcd" -> "sha256:311184dbc7513d966fc905995833321e2f4745b447e1f343743d8f8eda52fe99" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:311184dbc7513d966fc905995833321e2f4745b447e1f343743d8f8eda52fe99" [label=""];
  "sha256:311184dbc7513d966fc905995833321e2f4745b447e1f343743d8f8eda52fe99" -> "sha256:c8b046c97f5b76f3b146b59b00458b5b3c4b92211f7b09f42c5e065e9a327ed6" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:c8b046c97f5b76f3b146b59b00458b5b3c4b92211f7b09f42c5e065e9a327ed6" [label=""];
  "sha256:c8b046c97f5b76f3b146b59b00458b5b3c4b92211f7b09f42c5e065e9a327ed6" -> "sha256:6ccc8e5dad7446a0ecde720565c9b5ff620cc84f66763ac74c77fed031745909" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:6ccc8e5dad7446a0ecde720565c9b5ff620cc84f66763ac74c77fed031745909" [label=""];
  "sha256:6ccc8e5dad7446a0ecde720565c9b5ff620cc84f66763ac74c77fed031745909" -> "sha256:f7dffe9537dc6aa2f6b8e3b6716752c6b7eecfda9f0040db363edde4dbaa92cb" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:f7dffe9537dc6aa2f6b8e3b6716752c6b7eecfda9f0040db363edde4dbaa92cb" [label=""];
  "sha256:f7dffe9537dc6aa2f6b8e3b6716752c6b7eecfda9f0040db363edde4dbaa92cb" -> "sha256:a3018f5f5c3e8f4c7b0749f2106028e408d4ce884f4c758c48e502f9701d0da2" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:a3018f5f5c3e8f4c7b0749f2106028e408d4ce884f4c758c48e502f9701d0da2" [label=""];
  "sha256:a3018f5f5c3e8f4c7b0749f2106028e408d4ce884f4c758c48e502f9701d0da2" -> "sha256:6008627cbe08d2c9062e34e79047d1e331d46b9bce87f39bd81453992a43f06d" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:6008627cbe08d2c9062e34e79047d1e331d46b9bce87f39bd81453992a43f06d" [label=""];
  "sha256:6008627cbe08d2c9062e34e79047d1e331d46b9bce87f39bd81453992a43f06d" -> "sha256:7dcae0021632a662ce51c6cbdb18406ed436e7a092c1b4b6e7e9545444f5fe04" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:7dcae0021632a662ce51c6cbdb18406ed436e7a092c1b4b6e7e9545444f5fe04" [label=""];
  "sha256:7dcae0021632a662ce51c6cbdb18406ed436e7a092c1b4b6e7e9545444f5fe04" -> "sha256:97434e205ad6f307404f5ff82ec897676d96e457ca9b3bd42452ad0805aaad22" [label=""];
  "sha256:22b1086d4e3ed5ea2fe299c3a84cf7bfc20c259199fa1237df4d818f06d829a0" -> "sha256:97434e205ad6f307404f5ff82ec897676d96e457ca9b3bd42452ad0805aaad22" [label=""];
  "sha256:97434e205ad6f307404f5ff82ec897676d96e457ca9b3bd42452ad0805aaad22" -> "sha256:254eb562c367ba9e028b81bb9c46a169d2d1ad347e5434b99e6f9b81948e239b" [label=""];
  "sha256:254eb562c367ba9e028b81bb9c46a169d2d1ad347e5434b99e6f9b81948e239b" -> "sha256:f9af9046b4d0c292d4dc514bc2e65dff95f857d6b9ea77cbaf0a5b1287811df5" [label=""];
}

