[app/sources/278794144.Dockerfile]
digraph {
  "sha256:6812e47c57accf908cdf91298dfaef4d43a0922db6a7c76ce7f4053fa2f48c41" [label="docker-image://docker.io/library/open-liberty:kernel-java8-ibmsfj" shape="ellipse"];
  "sha256:2f57d8247a2ba64e44df987cedb93aac6606ae575a572b1bd3368d6f890ad8f0" [label="/bin/sh -c cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml" shape="box"];
  "sha256:a5b3555e1a89f51a93ac71f47e037bdbdca76a2cad132cef3a011c65103d15ad" [label="sha256:a5b3555e1a89f51a93ac71f47e037bdbdca76a2cad132cef3a011c65103d15ad" shape="plaintext"];
  "sha256:6812e47c57accf908cdf91298dfaef4d43a0922db6a7c76ce7f4053fa2f48c41" -> "sha256:2f57d8247a2ba64e44df987cedb93aac6606ae575a572b1bd3368d6f890ad8f0" [label=""];
  "sha256:2f57d8247a2ba64e44df987cedb93aac6606ae575a572b1bd3368d6f890ad8f0" -> "sha256:a5b3555e1a89f51a93ac71f47e037bdbdca76a2cad132cef3a011c65103d15ad" [label=""];
}

