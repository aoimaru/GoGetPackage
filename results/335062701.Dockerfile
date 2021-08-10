[app/sources/335062701.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:ffe27f6671bec511d877f7d04491578c6298219c52275ed5d98ea81205baf954" [label="docker-image://docker.io/library/golang:1.11.2" shape="ellipse"];
  "sha256:33edefad1d0e625efdc3f0240264c4e727904cf17cf8a8c90c2d3a79a6c07818" [label="mkdir{path=/go/src/github.com/kubeflow/kubeflow/components/notebook-controller}" shape="note"];
  "sha256:f6de22562aa312f42e90cbd272efe1d327ae3e71e59436438c2e77577615fd18" [label="local://context" shape="ellipse"];
  "sha256:141f7dfa60eee0aa422fa4f2e2529a7c90ca7c10e5700db2a8fa421a589b6a65" [label="copy{src=/pkg, dest=/go/src/github.com/kubeflow/kubeflow/components/notebook-controller/pkg/}" shape="note"];
  "sha256:f7e0562d23e4f85567bef8976f5aaea01c96389826b8bcca71759163afae94bc" [label="copy{src=/cmd, dest=/go/src/github.com/kubeflow/kubeflow/components/notebook-controller/cmd/}" shape="note"];
  "sha256:c497d9e4cd03034e850b0a7654f47e7dcfec5057f3a6f0828ea1920b29cd9d17" [label="copy{src=/go.mod, dest=/go/src/github.com/kubeflow/kubeflow/components/notebook-controller/}" shape="note"];
  "sha256:b4290a3fe6ba92ef81f0823caf9836b0ea9d46bec6ffd8b2f1e56b4e2e0114c7" [label="/bin/sh -c go build -gcflags 'all=-N -l' -o manager cmd/manager/main.go" shape="box"];
  "sha256:e29d70cc9a785cf073775d76a8627a3ed8a19966d9d47c0b1d3a5eee56498edb" [label="copy{src=/go/src/github.com/kubeflow/kubeflow/components/notebook-controller/manager, dest=/}" shape="note"];
  "sha256:a5e2d78552671518a1a09928de671d2c1863d68fc9dad949bac56292186a99b4" [label="sha256:a5e2d78552671518a1a09928de671d2c1863d68fc9dad949bac56292186a99b4" shape="plaintext"];
  "sha256:ffe27f6671bec511d877f7d04491578c6298219c52275ed5d98ea81205baf954" -> "sha256:33edefad1d0e625efdc3f0240264c4e727904cf17cf8a8c90c2d3a79a6c07818" [label=""];
  "sha256:33edefad1d0e625efdc3f0240264c4e727904cf17cf8a8c90c2d3a79a6c07818" -> "sha256:141f7dfa60eee0aa422fa4f2e2529a7c90ca7c10e5700db2a8fa421a589b6a65" [label=""];
  "sha256:f6de22562aa312f42e90cbd272efe1d327ae3e71e59436438c2e77577615fd18" -> "sha256:141f7dfa60eee0aa422fa4f2e2529a7c90ca7c10e5700db2a8fa421a589b6a65" [label=""];
  "sha256:141f7dfa60eee0aa422fa4f2e2529a7c90ca7c10e5700db2a8fa421a589b6a65" -> "sha256:f7e0562d23e4f85567bef8976f5aaea01c96389826b8bcca71759163afae94bc" [label=""];
  "sha256:f6de22562aa312f42e90cbd272efe1d327ae3e71e59436438c2e77577615fd18" -> "sha256:f7e0562d23e4f85567bef8976f5aaea01c96389826b8bcca71759163afae94bc" [label=""];
  "sha256:f7e0562d23e4f85567bef8976f5aaea01c96389826b8bcca71759163afae94bc" -> "sha256:c497d9e4cd03034e850b0a7654f47e7dcfec5057f3a6f0828ea1920b29cd9d17" [label=""];
  "sha256:f6de22562aa312f42e90cbd272efe1d327ae3e71e59436438c2e77577615fd18" -> "sha256:c497d9e4cd03034e850b0a7654f47e7dcfec5057f3a6f0828ea1920b29cd9d17" [label=""];
  "sha256:c497d9e4cd03034e850b0a7654f47e7dcfec5057f3a6f0828ea1920b29cd9d17" -> "sha256:b4290a3fe6ba92ef81f0823caf9836b0ea9d46bec6ffd8b2f1e56b4e2e0114c7" [label=""];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:e29d70cc9a785cf073775d76a8627a3ed8a19966d9d47c0b1d3a5eee56498edb" [label=""];
  "sha256:b4290a3fe6ba92ef81f0823caf9836b0ea9d46bec6ffd8b2f1e56b4e2e0114c7" -> "sha256:e29d70cc9a785cf073775d76a8627a3ed8a19966d9d47c0b1d3a5eee56498edb" [label=""];
  "sha256:e29d70cc9a785cf073775d76a8627a3ed8a19966d9d47c0b1d3a5eee56498edb" -> "sha256:a5e2d78552671518a1a09928de671d2c1863d68fc9dad949bac56292186a99b4" [label=""];
}

