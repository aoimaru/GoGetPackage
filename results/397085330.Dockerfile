[app/sources/397085330.Dockerfile]
digraph {
  "sha256:cbe39d929466f6fc3ac8cedd0e73c6f7b2dbc9b2aa4fa1d39eefdb39cd789436" [label="docker-image://docker.io/library/scion_beacon:latest" shape="ellipse"];
  "sha256:8781fcdc3e722d69cf64cb731747f89ae2bec0c104dec9fe87061d159e88cb06" [label="docker-image://docker.io/library/scion_debug_base:latest" shape="ellipse"];
  "sha256:42d0affeeade1da60f9f53996755ecbd95fd89d3e01592e4653ff2980f7808ed" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:006a06fa6fc08cda5d9128f706e9a45094cbe2e0734cbd41b3110ee50052f317" [label="sha256:006a06fa6fc08cda5d9128f706e9a45094cbe2e0734cbd41b3110ee50052f317" shape="plaintext"];
  "sha256:cbe39d929466f6fc3ac8cedd0e73c6f7b2dbc9b2aa4fa1d39eefdb39cd789436" -> "sha256:42d0affeeade1da60f9f53996755ecbd95fd89d3e01592e4653ff2980f7808ed" [label=""];
  "sha256:8781fcdc3e722d69cf64cb731747f89ae2bec0c104dec9fe87061d159e88cb06" -> "sha256:42d0affeeade1da60f9f53996755ecbd95fd89d3e01592e4653ff2980f7808ed" [label=""];
  "sha256:42d0affeeade1da60f9f53996755ecbd95fd89d3e01592e4653ff2980f7808ed" -> "sha256:006a06fa6fc08cda5d9128f706e9a45094cbe2e0734cbd41b3110ee50052f317" [label=""];
}

