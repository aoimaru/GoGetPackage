[app/sources/343693070.Dockerfile]
digraph {
  "sha256:6abec9fa8e28430caa04858379d0c6fc80ffa3a43a2392ba0c05c01cf9f8baa1" [label="local://context" shape="ellipse"];
  "sha256:8ed2efcab092e070f4da5ca75c57db2f948d1fe2b358e9fe45e72d9decb57bbd" [label="copy{src=/chmx, dest=/bin/chmx}" shape="note"];
  "sha256:49957dbfff627d7a21c0a7787e320940cc6542a48847f5d8570fa0f492a1f9a9" [label="sha256:49957dbfff627d7a21c0a7787e320940cc6542a48847f5d8570fa0f492a1f9a9" shape="plaintext"];
  "sha256:6abec9fa8e28430caa04858379d0c6fc80ffa3a43a2392ba0c05c01cf9f8baa1" -> "sha256:8ed2efcab092e070f4da5ca75c57db2f948d1fe2b358e9fe45e72d9decb57bbd" [label=""];
  "sha256:8ed2efcab092e070f4da5ca75c57db2f948d1fe2b358e9fe45e72d9decb57bbd" -> "sha256:49957dbfff627d7a21c0a7787e320940cc6542a48847f5d8570fa0f492a1f9a9" [label=""];
}

