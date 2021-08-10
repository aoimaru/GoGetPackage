[app/sources/360652344.Dockerfile]
digraph {
  "sha256:e93cd193bfbf62d1b230573de1d31021b41b9a87f8702e474dc92b6dab5e3bd4" [label="local://context" shape="ellipse"];
  "sha256:8419183f8d18b6f646efac0dfef2905c2b30233d01c66f44f3bf44af2f678ae4" [label="docker-image://docker.io/trifacta/ubuntu-hdp2-base:latest" shape="ellipse"];
  "sha256:9c46570d527d5d4a7029e506d6aab776e036f613123d57436a1ae4627682cd0d" [label="/bin/sh -c mkdir -p /var/lib/hadoop-hdfs/cache/hdfs/dfs/name" shape="box"];
  "sha256:d85d22a61a77481375cb9fdc449bec919aa9d0122365f96187829adf6e976d15" [label="/bin/sh -c chown -R hdfs:hadoop /var/lib/hadoop-hdfs/cache/hdfs/dfs/name" shape="box"];
  "sha256:9af27da1da61abc65770ec6edadac21222859f6245ee405e66c8d7d3fdbb595a" [label="copy{src=/conf.skeleton, dest=/etc/hadoop/conf}" shape="note"];
  "sha256:aefb0444b2db431cb0d852d6e8a46ef2400755b1c9c8e175a9f851bcf028e39c" [label="/bin/sh -c /usr/bin/hdfs namenode -format" shape="box"];
  "sha256:56bba84a9d466652ee61e8211a354c7749f956263c1cefbdfdf95b47e2877c55" [label="copy{src=/start.sh, dest=/opt/hadoop-docker/}" shape="note"];
  "sha256:6155bafc22156c00e9ffb6f6be617ffe95631e3e71846cc07af6da5b1efb8631" [label="sha256:6155bafc22156c00e9ffb6f6be617ffe95631e3e71846cc07af6da5b1efb8631" shape="plaintext"];
  "sha256:8419183f8d18b6f646efac0dfef2905c2b30233d01c66f44f3bf44af2f678ae4" -> "sha256:9c46570d527d5d4a7029e506d6aab776e036f613123d57436a1ae4627682cd0d" [label=""];
  "sha256:9c46570d527d5d4a7029e506d6aab776e036f613123d57436a1ae4627682cd0d" -> "sha256:d85d22a61a77481375cb9fdc449bec919aa9d0122365f96187829adf6e976d15" [label=""];
  "sha256:d85d22a61a77481375cb9fdc449bec919aa9d0122365f96187829adf6e976d15" -> "sha256:9af27da1da61abc65770ec6edadac21222859f6245ee405e66c8d7d3fdbb595a" [label=""];
  "sha256:e93cd193bfbf62d1b230573de1d31021b41b9a87f8702e474dc92b6dab5e3bd4" -> "sha256:9af27da1da61abc65770ec6edadac21222859f6245ee405e66c8d7d3fdbb595a" [label=""];
  "sha256:9af27da1da61abc65770ec6edadac21222859f6245ee405e66c8d7d3fdbb595a" -> "sha256:aefb0444b2db431cb0d852d6e8a46ef2400755b1c9c8e175a9f851bcf028e39c" [label=""];
  "sha256:aefb0444b2db431cb0d852d6e8a46ef2400755b1c9c8e175a9f851bcf028e39c" -> "sha256:56bba84a9d466652ee61e8211a354c7749f956263c1cefbdfdf95b47e2877c55" [label=""];
  "sha256:e93cd193bfbf62d1b230573de1d31021b41b9a87f8702e474dc92b6dab5e3bd4" -> "sha256:56bba84a9d466652ee61e8211a354c7749f956263c1cefbdfdf95b47e2877c55" [label=""];
  "sha256:56bba84a9d466652ee61e8211a354c7749f956263c1cefbdfdf95b47e2877c55" -> "sha256:6155bafc22156c00e9ffb6f6be617ffe95631e3e71846cc07af6da5b1efb8631" [label=""];
}

