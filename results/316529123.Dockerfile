[app/sources/316529123.Dockerfile]
digraph {
  "sha256:536136d1e0d2aa10dd153d39cbffc75fe569b0a11daca4e64474607c9e113c58" [label="docker-image://docker.io/tutum/lamp:latest" shape="ellipse"];
  "sha256:2b768eea7d238caf1c1e6a05450e9cf0a5ac1af3b39e66d78fead4183bd731ac" [label="/bin/sh -c apt-get update &&     apt-get install -y wget zip &&     apt-get clean &&     rm /app/* &&     cd /tmp &&     wget https://jaist.dl.sourceforge.net/project/bwapp/bWAPP/bWAPPv2.2/bWAPPv2.2.zip &&    unzip ./bWAPPv2.2.zip &&     mv ./bWAPP/* /app/ &&     rm -rf /tmp/* &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2d98ae1866a3d2f3cc88e707864cda316b7e9f61efe8e5e2a2f1b77d4b581cbb" [label="sha256:2d98ae1866a3d2f3cc88e707864cda316b7e9f61efe8e5e2a2f1b77d4b581cbb" shape="plaintext"];
  "sha256:536136d1e0d2aa10dd153d39cbffc75fe569b0a11daca4e64474607c9e113c58" -> "sha256:2b768eea7d238caf1c1e6a05450e9cf0a5ac1af3b39e66d78fead4183bd731ac" [label=""];
  "sha256:2b768eea7d238caf1c1e6a05450e9cf0a5ac1af3b39e66d78fead4183bd731ac" -> "sha256:2d98ae1866a3d2f3cc88e707864cda316b7e9f61efe8e5e2a2f1b77d4b581cbb" [label=""];
}

