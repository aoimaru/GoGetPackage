[app/sources/335836003.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:52b1cbc074366e0baf8f655515bc810c2ce646c6a790b8a1967b4ec005745ad2" [label="/bin/sh -c yarn global add @angular/cli@1.2.6" shape="box"];
  "sha256:70d849540c1244c05ce836420b7d9aa4be785ee429152da57ddf13f52ebe25be" [label="mkdir{path=/app}" shape="note"];
  "sha256:00a07cf317788b78c92fe5ae0a326876657c9fefe44b8fc27f85359f3684f0c5" [label="local://context" shape="ellipse"];
  "sha256:11e7c26cf1b894c1fa301c2167229b019bd2396b1bb600f134ca534d173c74d7" [label="copy{src=/package.json, dest=/app}" shape="note"];
  "sha256:dee05f73d498b8271eb09d1828bd64501bee041eec44a1b1b3ca655ca0b90812" [label="copy{src=/yarn.lock, dest=/app}" shape="note"];
  "sha256:76cfc714d2b52a743fb0ee6468b0c8d2ac54795a59090455643e5b05ca30a3af" [label="/bin/sh -c yarn install --pure-lockfile" shape="box"];
  "sha256:4bc9f8a4e1a0fdd2759bd8dbdf8668003b11467042ee0c7a7788db42f0feb973" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:4cdd7c204354af63725d8ef3350e00c4bc9de75f20cefb6529f715bcad607085" [label="sha256:4cdd7c204354af63725d8ef3350e00c4bc9de75f20cefb6529f715bcad607085" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:52b1cbc074366e0baf8f655515bc810c2ce646c6a790b8a1967b4ec005745ad2" [label=""];
  "sha256:52b1cbc074366e0baf8f655515bc810c2ce646c6a790b8a1967b4ec005745ad2" -> "sha256:70d849540c1244c05ce836420b7d9aa4be785ee429152da57ddf13f52ebe25be" [label=""];
  "sha256:70d849540c1244c05ce836420b7d9aa4be785ee429152da57ddf13f52ebe25be" -> "sha256:11e7c26cf1b894c1fa301c2167229b019bd2396b1bb600f134ca534d173c74d7" [label=""];
  "sha256:00a07cf317788b78c92fe5ae0a326876657c9fefe44b8fc27f85359f3684f0c5" -> "sha256:11e7c26cf1b894c1fa301c2167229b019bd2396b1bb600f134ca534d173c74d7" [label=""];
  "sha256:11e7c26cf1b894c1fa301c2167229b019bd2396b1bb600f134ca534d173c74d7" -> "sha256:dee05f73d498b8271eb09d1828bd64501bee041eec44a1b1b3ca655ca0b90812" [label=""];
  "sha256:00a07cf317788b78c92fe5ae0a326876657c9fefe44b8fc27f85359f3684f0c5" -> "sha256:dee05f73d498b8271eb09d1828bd64501bee041eec44a1b1b3ca655ca0b90812" [label=""];
  "sha256:dee05f73d498b8271eb09d1828bd64501bee041eec44a1b1b3ca655ca0b90812" -> "sha256:76cfc714d2b52a743fb0ee6468b0c8d2ac54795a59090455643e5b05ca30a3af" [label=""];
  "sha256:76cfc714d2b52a743fb0ee6468b0c8d2ac54795a59090455643e5b05ca30a3af" -> "sha256:4bc9f8a4e1a0fdd2759bd8dbdf8668003b11467042ee0c7a7788db42f0feb973" [label=""];
  "sha256:00a07cf317788b78c92fe5ae0a326876657c9fefe44b8fc27f85359f3684f0c5" -> "sha256:4bc9f8a4e1a0fdd2759bd8dbdf8668003b11467042ee0c7a7788db42f0feb973" [label=""];
  "sha256:4bc9f8a4e1a0fdd2759bd8dbdf8668003b11467042ee0c7a7788db42f0feb973" -> "sha256:4cdd7c204354af63725d8ef3350e00c4bc9de75f20cefb6529f715bcad607085" [label=""];
}

