[app/sources/301233465.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:151e759966d47ef97849bb1064fbbf2b9cedc55c827ad13c4ea5b7ef85c09130" [label="local://context" shape="ellipse"];
  "sha256:68a40e8424d3aa77d4cf833292021ce30cff67c5d41a36e5d107d14d6a060902" [label="copy{src=/*.jar, dest=/app.jar}" shape="note"];
  "sha256:7310599f6e09918d134cd1de5ae8c85e5b977d6501f8e3bf2cae74c9e9a70aaf" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:04d738f0b06e159c233ec3df4e697a5f2ae6a564d0a07c3fb00d095856bf6ff3" [label="/bin/sh -c apt-get update && apt-get install -y wget" shape="box"];
  "sha256:4acfe9ab94a979e257912ea380f0327ca70f8fd283b3f1a9cb47e65ab8880a65" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/v0.1.0/dockerize-linux-amd64-v0.1.0.tar.gz" shape="box"];
  "sha256:b58a8b553159a43f2012654d9557485b02b48e1c5acfae0ba044c26361cd7c2f" [label="/bin/sh -c tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.1.0.tar.gz" shape="box"];
  "sha256:9be8c0461d98ace7609b37e553e7916db165ca2ac918e05800747711faabbb38" [label="sha256:9be8c0461d98ace7609b37e553e7916db165ca2ac918e05800747711faabbb38" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:68a40e8424d3aa77d4cf833292021ce30cff67c5d41a36e5d107d14d6a060902" [label=""];
  "sha256:151e759966d47ef97849bb1064fbbf2b9cedc55c827ad13c4ea5b7ef85c09130" -> "sha256:68a40e8424d3aa77d4cf833292021ce30cff67c5d41a36e5d107d14d6a060902" [label=""];
  "sha256:68a40e8424d3aa77d4cf833292021ce30cff67c5d41a36e5d107d14d6a060902" -> "sha256:7310599f6e09918d134cd1de5ae8c85e5b977d6501f8e3bf2cae74c9e9a70aaf" [label=""];
  "sha256:7310599f6e09918d134cd1de5ae8c85e5b977d6501f8e3bf2cae74c9e9a70aaf" -> "sha256:04d738f0b06e159c233ec3df4e697a5f2ae6a564d0a07c3fb00d095856bf6ff3" [label=""];
  "sha256:04d738f0b06e159c233ec3df4e697a5f2ae6a564d0a07c3fb00d095856bf6ff3" -> "sha256:4acfe9ab94a979e257912ea380f0327ca70f8fd283b3f1a9cb47e65ab8880a65" [label=""];
  "sha256:4acfe9ab94a979e257912ea380f0327ca70f8fd283b3f1a9cb47e65ab8880a65" -> "sha256:b58a8b553159a43f2012654d9557485b02b48e1c5acfae0ba044c26361cd7c2f" [label=""];
  "sha256:b58a8b553159a43f2012654d9557485b02b48e1c5acfae0ba044c26361cd7c2f" -> "sha256:9be8c0461d98ace7609b37e553e7916db165ca2ac918e05800747711faabbb38" [label=""];
}

