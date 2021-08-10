[app/sources/346242507.Dockerfile]
digraph {
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" [label="docker-image://docker.io/library/node:7" shape="ellipse"];
  "sha256:cabedb5acf0024ac28a5bbe40a1315eba7a2a1c87b5843b9931ebae522c6a08d" [label="/bin/sh -c apt-get update &&    apt-get install -y libgtk2.0-0 libgconf-2-4     libasound2 libxtst6 libxss1 libnss3 xvfb" shape="box"];
  "sha256:e761bd5318d08e802ca2605e5aeda86c1f4a59857cdbade2eb5340f3954ebce9" [label="sha256:e761bd5318d08e802ca2605e5aeda86c1f4a59857cdbade2eb5340f3954ebce9" shape="plaintext"];
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" -> "sha256:cabedb5acf0024ac28a5bbe40a1315eba7a2a1c87b5843b9931ebae522c6a08d" [label=""];
  "sha256:cabedb5acf0024ac28a5bbe40a1315eba7a2a1c87b5843b9931ebae522c6a08d" -> "sha256:e761bd5318d08e802ca2605e5aeda86c1f4a59857cdbade2eb5340f3954ebce9" [label=""];
}

