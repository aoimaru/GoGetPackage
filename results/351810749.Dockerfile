[app/sources/351810749.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:3b0f7430a86af5926d3783f4889f1f68ada11fb3637a186d8a60a2b1326ce06f" [label="/bin/sh -c apt-get update  && apt-get install -y         wget         build-essential" shape="box"];
  "sha256:76c21f9b28a07d6f69eef305142fe0313a06919bfba49026b4fe3719156375d7" [label="/bin/sh -c wget https://cmake.org/files/v3.9/cmake-3.9.1.tar.gz && tar -xzvf cmake-3.9.1.tar.gz" shape="box"];
  "sha256:9c460681b2396467d16508c3e77ac98a3a2069201322af69b4d7a53a2b4d762a" [label="/bin/sh -c cd /cmake-3.9.1 && ./bootstrap && make -j4 && make install && rm -rf /cmake*" shape="box"];
  "sha256:c4bfcda48b62ba446d6a8cf24649cd19e1f4c3daab1cbb005fe85cf213582dd2" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:551d478a0207f01f72ceb2136489d68e9d97b5831bc7191e6142cf10c3c95075" [label="mkdir{path=/data}" shape="note"];
  "sha256:7427898da6a760e69d4b71f896302a9d82c5372513fd842471c20371338d1bf2" [label="sha256:7427898da6a760e69d4b71f896302a9d82c5372513fd842471c20371338d1bf2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:3b0f7430a86af5926d3783f4889f1f68ada11fb3637a186d8a60a2b1326ce06f" [label=""];
  "sha256:3b0f7430a86af5926d3783f4889f1f68ada11fb3637a186d8a60a2b1326ce06f" -> "sha256:76c21f9b28a07d6f69eef305142fe0313a06919bfba49026b4fe3719156375d7" [label=""];
  "sha256:76c21f9b28a07d6f69eef305142fe0313a06919bfba49026b4fe3719156375d7" -> "sha256:9c460681b2396467d16508c3e77ac98a3a2069201322af69b4d7a53a2b4d762a" [label=""];
  "sha256:9c460681b2396467d16508c3e77ac98a3a2069201322af69b4d7a53a2b4d762a" -> "sha256:c4bfcda48b62ba446d6a8cf24649cd19e1f4c3daab1cbb005fe85cf213582dd2" [label=""];
  "sha256:c4bfcda48b62ba446d6a8cf24649cd19e1f4c3daab1cbb005fe85cf213582dd2" -> "sha256:551d478a0207f01f72ceb2136489d68e9d97b5831bc7191e6142cf10c3c95075" [label=""];
  "sha256:551d478a0207f01f72ceb2136489d68e9d97b5831bc7191e6142cf10c3c95075" -> "sha256:7427898da6a760e69d4b71f896302a9d82c5372513fd842471c20371338d1bf2" [label=""];
}

