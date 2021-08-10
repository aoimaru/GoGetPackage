[app/sources/460386639.Dockerfile]
digraph {
  "sha256:dc3db37841c346a5125562566ac4a3b18d2c557f871c770c62da2948aefae537" [label="local://context" shape="ellipse"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:b9e47f6d86059490dc00ca841e5a756191fbadae953cbf94ce88ae3b60eff479" [label="/bin/sh -c apt-get update && apt-get install -y  openjdk-11-jdk  maven  make" shape="box"];
  "sha256:6a687f00d97ed273dff7fa2e9a2be851008389e55249adfe223a84ed142fceb3" [label="mkdir{path=/home/fresco}" shape="note"];
  "sha256:be0fc18c7bc936d3eae2d200c84a83848d3d200f12a2ee792a6b46f2cf7e00b1" [label="copy{src=/, dest=/home/fresco}" shape="note"];
  "sha256:6ca4410e7f8c44e4409177ed525306f70e7ac27aec3dea7d9814ced6ac27c8f9" [label="/bin/sh -c mvn clean install -DskipTests" shape="box"];
  "sha256:13bab4405437a59616e63834ed74b339c11d9d42ed05cadc352c84b4a3e87479" [label="sha256:13bab4405437a59616e63834ed74b339c11d9d42ed05cadc352c84b4a3e87479" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:b9e47f6d86059490dc00ca841e5a756191fbadae953cbf94ce88ae3b60eff479" [label=""];
  "sha256:b9e47f6d86059490dc00ca841e5a756191fbadae953cbf94ce88ae3b60eff479" -> "sha256:6a687f00d97ed273dff7fa2e9a2be851008389e55249adfe223a84ed142fceb3" [label=""];
  "sha256:6a687f00d97ed273dff7fa2e9a2be851008389e55249adfe223a84ed142fceb3" -> "sha256:be0fc18c7bc936d3eae2d200c84a83848d3d200f12a2ee792a6b46f2cf7e00b1" [label=""];
  "sha256:dc3db37841c346a5125562566ac4a3b18d2c557f871c770c62da2948aefae537" -> "sha256:be0fc18c7bc936d3eae2d200c84a83848d3d200f12a2ee792a6b46f2cf7e00b1" [label=""];
  "sha256:be0fc18c7bc936d3eae2d200c84a83848d3d200f12a2ee792a6b46f2cf7e00b1" -> "sha256:6ca4410e7f8c44e4409177ed525306f70e7ac27aec3dea7d9814ced6ac27c8f9" [label=""];
  "sha256:6ca4410e7f8c44e4409177ed525306f70e7ac27aec3dea7d9814ced6ac27c8f9" -> "sha256:13bab4405437a59616e63834ed74b339c11d9d42ed05cadc352c84b4a3e87479" [label=""];
}

