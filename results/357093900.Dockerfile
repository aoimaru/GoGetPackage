[app/sources/357093900.Dockerfile]
digraph {
  "sha256:e05f29cff12dd21df416895c68fd1540d61880caa1ca0b61e0edbeb61f619e6f" [label="docker-image://docker.io/hypriot/rpi-golang:latest" shape="ellipse"];
  "sha256:2b73bf46ee39461870111efba2371c9feff4dac842dfd047967cb86b51a2bd7d" [label="/bin/sh -c mkdir -p /go/src/app" shape="box"];
  "sha256:31ba7b64287016d47fa42362242c23984d72198fe913353823bcd19c8bdcc98c" [label="/bin/sh -c mkdir -p /var/lib/etcd" shape="box"];
  "sha256:af7f1f39b19f56690db8b568db9885afb2c12d4f7b5959914c8257e8d6da5b93" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:17d76f1f1ab3fc605c92c392122e74b9a468d4b2dbd29afbac87508d7751a8c9" [label="local://context" shape="ellipse"];
  "sha256:218cb155c7be1a8ca52297d919b75c20e760d3018e6e266096b06d482acd8427" [label="copy{src=/, dest=/go/src/app}" shape="note"];
  "sha256:0b57a352199cacc210d963a51de5e1d961fc1b6942d04753878cfe983ac63557" [label="/bin/sh -c mv /go/src/app/go-wrapper /goroot/bin/go-wrapper" shape="box"];
  "sha256:22a37fe3c0f850a7ca12a5ea14f139d83e761b2696a160208809081d50646211" [label="/bin/sh -c chmod +x /goroot/bin/go-wrapper" shape="box"];
  "sha256:a35036b0a3705730e8bac085a3b536a4f59f02ea44eb388a8e6d0ffba8e71da2" [label="/bin/sh -c go-wrapper download" shape="box"];
  "sha256:b7ba0f994be9439730677e036bb7ec0c041ea92a2015eac968932c18388bc818" [label="/bin/sh -c go-wrapper install" shape="box"];
  "sha256:681b9bc72cacb79c7c91b22134999563be5738d6e97e04fa5babe9d2620a375f" [label="sha256:681b9bc72cacb79c7c91b22134999563be5738d6e97e04fa5babe9d2620a375f" shape="plaintext"];
  "sha256:e05f29cff12dd21df416895c68fd1540d61880caa1ca0b61e0edbeb61f619e6f" -> "sha256:2b73bf46ee39461870111efba2371c9feff4dac842dfd047967cb86b51a2bd7d" [label=""];
  "sha256:2b73bf46ee39461870111efba2371c9feff4dac842dfd047967cb86b51a2bd7d" -> "sha256:31ba7b64287016d47fa42362242c23984d72198fe913353823bcd19c8bdcc98c" [label=""];
  "sha256:31ba7b64287016d47fa42362242c23984d72198fe913353823bcd19c8bdcc98c" -> "sha256:af7f1f39b19f56690db8b568db9885afb2c12d4f7b5959914c8257e8d6da5b93" [label=""];
  "sha256:af7f1f39b19f56690db8b568db9885afb2c12d4f7b5959914c8257e8d6da5b93" -> "sha256:218cb155c7be1a8ca52297d919b75c20e760d3018e6e266096b06d482acd8427" [label=""];
  "sha256:17d76f1f1ab3fc605c92c392122e74b9a468d4b2dbd29afbac87508d7751a8c9" -> "sha256:218cb155c7be1a8ca52297d919b75c20e760d3018e6e266096b06d482acd8427" [label=""];
  "sha256:218cb155c7be1a8ca52297d919b75c20e760d3018e6e266096b06d482acd8427" -> "sha256:0b57a352199cacc210d963a51de5e1d961fc1b6942d04753878cfe983ac63557" [label=""];
  "sha256:0b57a352199cacc210d963a51de5e1d961fc1b6942d04753878cfe983ac63557" -> "sha256:22a37fe3c0f850a7ca12a5ea14f139d83e761b2696a160208809081d50646211" [label=""];
  "sha256:22a37fe3c0f850a7ca12a5ea14f139d83e761b2696a160208809081d50646211" -> "sha256:a35036b0a3705730e8bac085a3b536a4f59f02ea44eb388a8e6d0ffba8e71da2" [label=""];
  "sha256:a35036b0a3705730e8bac085a3b536a4f59f02ea44eb388a8e6d0ffba8e71da2" -> "sha256:b7ba0f994be9439730677e036bb7ec0c041ea92a2015eac968932c18388bc818" [label=""];
  "sha256:b7ba0f994be9439730677e036bb7ec0c041ea92a2015eac968932c18388bc818" -> "sha256:681b9bc72cacb79c7c91b22134999563be5738d6e97e04fa5babe9d2620a375f" [label=""];
}

