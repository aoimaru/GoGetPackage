[app/sources/297370737.Dockerfile]
digraph {
  "sha256:69e8ffc1733e48411e72c1f0b825f74b5a43ce2feefa8797381617b51daac7bb" [label="docker-image://docker.io/olbat/libgen:latest" shape="ellipse"];
  "sha256:b98ab5476ac36f404d969c1be68f840b7cbf46fe6412c2a70b6178909d58c29e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   libicu-dev   libgtk2.0-dev   libgtk-3-dev && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:15de731dd69f57789855fabfca23cc3aa3f8bcfb2c1df6834a32d30fa1062b5b" [label="sha256:15de731dd69f57789855fabfca23cc3aa3f8bcfb2c1df6834a32d30fa1062b5b" shape="plaintext"];
  "sha256:69e8ffc1733e48411e72c1f0b825f74b5a43ce2feefa8797381617b51daac7bb" -> "sha256:b98ab5476ac36f404d969c1be68f840b7cbf46fe6412c2a70b6178909d58c29e" [label=""];
  "sha256:b98ab5476ac36f404d969c1be68f840b7cbf46fe6412c2a70b6178909d58c29e" -> "sha256:15de731dd69f57789855fabfca23cc3aa3f8bcfb2c1df6834a32d30fa1062b5b" [label=""];
}

