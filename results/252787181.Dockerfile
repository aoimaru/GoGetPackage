[app/sources/252787181.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:2a440eb197447fa03cc9315b5c317cb0b27222a2e9d18e7602413300ac85e1ee" [label="/bin/sh -c apt-get install -y build-essential python" shape="box"];
  "sha256:4c4bd62e42aa2475ec0d44207a2256066773d1e83c15cd1651a17528ea9691c6" [label="sha256:4c4bd62e42aa2475ec0d44207a2256066773d1e83c15cd1651a17528ea9691c6" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:2a440eb197447fa03cc9315b5c317cb0b27222a2e9d18e7602413300ac85e1ee" [label=""];
  "sha256:2a440eb197447fa03cc9315b5c317cb0b27222a2e9d18e7602413300ac85e1ee" -> "sha256:4c4bd62e42aa2475ec0d44207a2256066773d1e83c15cd1651a17528ea9691c6" [label=""];
}

