[app/sources/340322585.Dockerfile]
digraph {
  "sha256:da19f787a4c0a3fcc5df66e26b87bb79b9d84bc5ce26ab37ca82a8b26f56e6a2" [label="docker-image://docker.io/library/ubuntu:artful" shape="ellipse"];
  "sha256:4a85927e7fa0cad700c872fa292471a957e1155c3d404e381b928a06b9e8c106" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends       ca-certificates       curl       darktable       firefox       libgl1-mesa-dri       libgl1-mesa-glx       x11-xserver-utils &&     apt-get clean &&     useradd -d /home/darktable -m darktable" shape="box"];
  "sha256:43647fcff04b871b7db46eeffdbaa6a93e240e05abcf5d12b4df47f09482fd56" [label="local://context" shape="ellipse"];
  "sha256:446872bda60ac53ffe34ea9fb22b005eeda1df0a648f8e10a93c7326768fc014" [label="copy{src=/mimeinfo.cache, dest=/usr/share/applications/mimeinfo.cache}" shape="note"];
  "sha256:45e7573450e90233d80caf9c950b6859ca08823265b5edad619997d9a5f9fe7b" [label="sha256:45e7573450e90233d80caf9c950b6859ca08823265b5edad619997d9a5f9fe7b" shape="plaintext"];
  "sha256:da19f787a4c0a3fcc5df66e26b87bb79b9d84bc5ce26ab37ca82a8b26f56e6a2" -> "sha256:4a85927e7fa0cad700c872fa292471a957e1155c3d404e381b928a06b9e8c106" [label=""];
  "sha256:4a85927e7fa0cad700c872fa292471a957e1155c3d404e381b928a06b9e8c106" -> "sha256:446872bda60ac53ffe34ea9fb22b005eeda1df0a648f8e10a93c7326768fc014" [label=""];
  "sha256:43647fcff04b871b7db46eeffdbaa6a93e240e05abcf5d12b4df47f09482fd56" -> "sha256:446872bda60ac53ffe34ea9fb22b005eeda1df0a648f8e10a93c7326768fc014" [label=""];
  "sha256:446872bda60ac53ffe34ea9fb22b005eeda1df0a648f8e10a93c7326768fc014" -> "sha256:45e7573450e90233d80caf9c950b6859ca08823265b5edad619997d9a5f9fe7b" [label=""];
}

