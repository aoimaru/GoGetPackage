[app/sources/342068240.Dockerfile]
digraph {
  "sha256:3bd2a478b0edb8059e27a1c105b32944ff36003a3bb3290b831597ec889ce5cd" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1333d80e792e4052dce2c40ff45bc27d0a2bf3198a5dc1e81a14bf38df04b61a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:2ea402fb16699513837ca140d05c68488894218a518ba5bff3af5600b24d3bbe" [label="pip install requests" shape="box"];
  "sha256:35586378b6a34e727b931f9b46ba511d99913bf8381da88ace0dc41d102f9d97" [label="sha256:35586378b6a34e727b931f9b46ba511d99913bf8381da88ace0dc41d102f9d97" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1333d80e792e4052dce2c40ff45bc27d0a2bf3198a5dc1e81a14bf38df04b61a" [label=""];
  "sha256:3bd2a478b0edb8059e27a1c105b32944ff36003a3bb3290b831597ec889ce5cd" -> "sha256:1333d80e792e4052dce2c40ff45bc27d0a2bf3198a5dc1e81a14bf38df04b61a" [label=""];
  "sha256:1333d80e792e4052dce2c40ff45bc27d0a2bf3198a5dc1e81a14bf38df04b61a" -> "sha256:2ea402fb16699513837ca140d05c68488894218a518ba5bff3af5600b24d3bbe" [label=""];
  "sha256:2ea402fb16699513837ca140d05c68488894218a518ba5bff3af5600b24d3bbe" -> "sha256:35586378b6a34e727b931f9b46ba511d99913bf8381da88ace0dc41d102f9d97" [label=""];
}
