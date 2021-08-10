[app/sources/320367955.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:02185aaf6edff26bb76319815bdd5bd371c6a88ab276b768faebef22e1d089de" [label="local://context" shape="ellipse"];
  "sha256:7850ccc7207708109f36c4acc219f2d5a51cd0cba35564064376e12d97d17ab4" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:20522037bc35870548a0710b488d666e8933464780c88bd6e8777e4b055c6dc6" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:f7cfca304711558c4dfacedccba91ce82150ee630f54b6c4c14899e3c92a50fd" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:68e1eee5104a4f6a3a8008f979d4a975e0511f5bb8146a54de31ed88b70c50d3" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:64629f2d4958b4dfc82e84cffd773d60f502c3ba1b9c76d992e1306fc9bbbba7" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:cc0b34eefba74a8294c03c10bf2f4da3e840a4057646287fb06c6a96f12f36e1" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:03022774315904e8e6cc00670af2a1182248238a709ee53f5c0ea4ca189d9162" [label="sha256:03022774315904e8e6cc00670af2a1182248238a709ee53f5c0ea4ca189d9162" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:7850ccc7207708109f36c4acc219f2d5a51cd0cba35564064376e12d97d17ab4" [label=""];
  "sha256:02185aaf6edff26bb76319815bdd5bd371c6a88ab276b768faebef22e1d089de" -> "sha256:7850ccc7207708109f36c4acc219f2d5a51cd0cba35564064376e12d97d17ab4" [label=""];
  "sha256:7850ccc7207708109f36c4acc219f2d5a51cd0cba35564064376e12d97d17ab4" -> "sha256:20522037bc35870548a0710b488d666e8933464780c88bd6e8777e4b055c6dc6" [label=""];
  "sha256:20522037bc35870548a0710b488d666e8933464780c88bd6e8777e4b055c6dc6" -> "sha256:f7cfca304711558c4dfacedccba91ce82150ee630f54b6c4c14899e3c92a50fd" [label=""];
  "sha256:f7cfca304711558c4dfacedccba91ce82150ee630f54b6c4c14899e3c92a50fd" -> "sha256:68e1eee5104a4f6a3a8008f979d4a975e0511f5bb8146a54de31ed88b70c50d3" [label=""];
  "sha256:68e1eee5104a4f6a3a8008f979d4a975e0511f5bb8146a54de31ed88b70c50d3" -> "sha256:64629f2d4958b4dfc82e84cffd773d60f502c3ba1b9c76d992e1306fc9bbbba7" [label=""];
  "sha256:64629f2d4958b4dfc82e84cffd773d60f502c3ba1b9c76d992e1306fc9bbbba7" -> "sha256:cc0b34eefba74a8294c03c10bf2f4da3e840a4057646287fb06c6a96f12f36e1" [label=""];
  "sha256:cc0b34eefba74a8294c03c10bf2f4da3e840a4057646287fb06c6a96f12f36e1" -> "sha256:03022774315904e8e6cc00670af2a1182248238a709ee53f5c0ea4ca189d9162" [label=""];
}

