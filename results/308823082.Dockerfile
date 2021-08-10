[app/sources/308823082.Dockerfile]
digraph {
  "sha256:1bef198df34925855e4ecf6426a26de478f31745b5c7dcf873b1548051833d29" [label="local://context" shape="ellipse"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:b2688beecb95bd58e2d68faf1d5ada5df7ed34f40c8c1bcbd7b1cd8020839615" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:fa35a10f1f23bc35a5edfcceb23ab7b76aef7cf3189c2cca811a55b01d9bf038" [label="mkdir{path=/app}" shape="note"];
  "sha256:c4900919e096f637b8f494002228c11eca47ae48a25905a1312d92ecbe6bdd09" [label="copy{src=/package.json, dest=/app/},copy{src=/yarn.lock, dest=/app/}" shape="note"];
  "sha256:9dba61dfdab1020567c9a3263b74196e35d53667dde2374a413449b182fc1786" [label="/bin/sh -c yarn --pure-lockfile" shape="box"];
  "sha256:7b62310977217baac9ad4910eb0797894a28e97c94caeb788074a9cdda7a98a7" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:ab667f6869b04364ab546b8df8d9a535224d90eea48a9726077027583770aa49" [label="sha256:ab667f6869b04364ab546b8df8d9a535224d90eea48a9726077027583770aa49" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:b2688beecb95bd58e2d68faf1d5ada5df7ed34f40c8c1bcbd7b1cd8020839615" [label=""];
  "sha256:b2688beecb95bd58e2d68faf1d5ada5df7ed34f40c8c1bcbd7b1cd8020839615" -> "sha256:fa35a10f1f23bc35a5edfcceb23ab7b76aef7cf3189c2cca811a55b01d9bf038" [label=""];
  "sha256:fa35a10f1f23bc35a5edfcceb23ab7b76aef7cf3189c2cca811a55b01d9bf038" -> "sha256:c4900919e096f637b8f494002228c11eca47ae48a25905a1312d92ecbe6bdd09" [label=""];
  "sha256:1bef198df34925855e4ecf6426a26de478f31745b5c7dcf873b1548051833d29" -> "sha256:c4900919e096f637b8f494002228c11eca47ae48a25905a1312d92ecbe6bdd09" [label=""];
  "sha256:c4900919e096f637b8f494002228c11eca47ae48a25905a1312d92ecbe6bdd09" -> "sha256:9dba61dfdab1020567c9a3263b74196e35d53667dde2374a413449b182fc1786" [label=""];
  "sha256:9dba61dfdab1020567c9a3263b74196e35d53667dde2374a413449b182fc1786" -> "sha256:7b62310977217baac9ad4910eb0797894a28e97c94caeb788074a9cdda7a98a7" [label=""];
  "sha256:1bef198df34925855e4ecf6426a26de478f31745b5c7dcf873b1548051833d29" -> "sha256:7b62310977217baac9ad4910eb0797894a28e97c94caeb788074a9cdda7a98a7" [label=""];
  "sha256:7b62310977217baac9ad4910eb0797894a28e97c94caeb788074a9cdda7a98a7" -> "sha256:ab667f6869b04364ab546b8df8d9a535224d90eea48a9726077027583770aa49" [label=""];
}

