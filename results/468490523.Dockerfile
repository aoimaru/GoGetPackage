[app/sources/468490523.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:a245022fe7584f3958f3753961f489b638da2d440da7c1a85923f71bd1cf994e" [label="mkdir{path=/go/src/LUIS}" shape="note"];
  "sha256:c28c4545b4e58a3496f8c13ba353a72bed49e1c5e6c3614bc8310dc2696130de" [label="local://context" shape="ellipse"];
  "sha256:63f0ac2b41714e2cc9503ffa1a23bc1e513888142b88fed34c640f5724bee827" [label="copy{src=/, dest=/go/src/LUIS/}" shape="note"];
  "sha256:fc9126ceeea93fc24c549286b97b3e933f9eebe8cedb816e6162c100623f52ef" [label="/bin/sh -c go get -d -v ./..." shape="box"];
  "sha256:7d7ac7cc40823f1e3d7ae75fb91ee9b8254da380d02345f4bec5cde677c6ad7b" [label="/bin/sh -c go install -v ./..." shape="box"];
  "sha256:e87b7ed7592b2f147f4d9ad4e879647ef965114d00c4228dde69702ba6b2e887" [label="/bin/sh -c go build endpoint.go" shape="box"];
  "sha256:fd65a86920f9746d2ab07796d480360b66dceec12de5fcf0b818966bc94306ca" [label="/bin/sh -c ls" shape="box"];
  "sha256:b23c5c4864b9a8e92a393c6bcd016c0b80ef5155758fc5b13a3b54cb2503f2ed" [label="sha256:b23c5c4864b9a8e92a393c6bcd016c0b80ef5155758fc5b13a3b54cb2503f2ed" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:a245022fe7584f3958f3753961f489b638da2d440da7c1a85923f71bd1cf994e" [label=""];
  "sha256:a245022fe7584f3958f3753961f489b638da2d440da7c1a85923f71bd1cf994e" -> "sha256:63f0ac2b41714e2cc9503ffa1a23bc1e513888142b88fed34c640f5724bee827" [label=""];
  "sha256:c28c4545b4e58a3496f8c13ba353a72bed49e1c5e6c3614bc8310dc2696130de" -> "sha256:63f0ac2b41714e2cc9503ffa1a23bc1e513888142b88fed34c640f5724bee827" [label=""];
  "sha256:63f0ac2b41714e2cc9503ffa1a23bc1e513888142b88fed34c640f5724bee827" -> "sha256:fc9126ceeea93fc24c549286b97b3e933f9eebe8cedb816e6162c100623f52ef" [label=""];
  "sha256:fc9126ceeea93fc24c549286b97b3e933f9eebe8cedb816e6162c100623f52ef" -> "sha256:7d7ac7cc40823f1e3d7ae75fb91ee9b8254da380d02345f4bec5cde677c6ad7b" [label=""];
  "sha256:7d7ac7cc40823f1e3d7ae75fb91ee9b8254da380d02345f4bec5cde677c6ad7b" -> "sha256:e87b7ed7592b2f147f4d9ad4e879647ef965114d00c4228dde69702ba6b2e887" [label=""];
  "sha256:e87b7ed7592b2f147f4d9ad4e879647ef965114d00c4228dde69702ba6b2e887" -> "sha256:fd65a86920f9746d2ab07796d480360b66dceec12de5fcf0b818966bc94306ca" [label=""];
  "sha256:fd65a86920f9746d2ab07796d480360b66dceec12de5fcf0b818966bc94306ca" -> "sha256:b23c5c4864b9a8e92a393c6bcd016c0b80ef5155758fc5b13a3b54cb2503f2ed" [label=""];
}

