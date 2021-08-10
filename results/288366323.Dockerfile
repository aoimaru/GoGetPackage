[app/sources/288366323.Dockerfile]
digraph {
  "sha256:732acc685aa7e50346852e73f178d00ab7f75acb4af28e7481b0946b9b9e16d0" [label="local://context" shape="ellipse"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" [label="docker-image://docker.io/anapsix/alpine-java:latest" shape="ellipse"];
  "sha256:00cfd54ed7430c275707a7f1ca2f9edde93cf130021f1e435b0dbe157d56819f" [label="copy{src=/target/uberjar/ventas.jar, dest=/srv/app.jar}" shape="note"];
  "sha256:759ea73e8b9a53c1c452c94bf07d733c00b8ba1bc3239ca17cbf072fce861be6" [label="sha256:759ea73e8b9a53c1c452c94bf07d733c00b8ba1bc3239ca17cbf072fce861be6" shape="plaintext"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" -> "sha256:00cfd54ed7430c275707a7f1ca2f9edde93cf130021f1e435b0dbe157d56819f" [label=""];
  "sha256:732acc685aa7e50346852e73f178d00ab7f75acb4af28e7481b0946b9b9e16d0" -> "sha256:00cfd54ed7430c275707a7f1ca2f9edde93cf130021f1e435b0dbe157d56819f" [label=""];
  "sha256:00cfd54ed7430c275707a7f1ca2f9edde93cf130021f1e435b0dbe157d56819f" -> "sha256:759ea73e8b9a53c1c452c94bf07d733c00b8ba1bc3239ca17cbf072fce861be6" [label=""];
}

