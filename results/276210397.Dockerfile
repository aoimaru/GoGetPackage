[app/sources/276210397.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:f12b4199915aef43c020846b8fc32d77a3d72317666e91687a1300e9a8b25412" [label="local://context" shape="ellipse"];
  "sha256:1dac7fa2eda03ff07822bbf6d397d47e021c991a4f245ab73ee764e639d12978" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:645d707acc1efe82e6778343a949db564f49a1839dbc0c166d847ba4bc8dc1cd" [label="copy{src=/html, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:1c60c4e6f8e437900ffcc61464a9f0fbdd2440fc9fd66d9f5aa21f67348aaef1" [label="sha256:1c60c4e6f8e437900ffcc61464a9f0fbdd2440fc9fd66d9f5aa21f67348aaef1" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:1dac7fa2eda03ff07822bbf6d397d47e021c991a4f245ab73ee764e639d12978" [label=""];
  "sha256:f12b4199915aef43c020846b8fc32d77a3d72317666e91687a1300e9a8b25412" -> "sha256:1dac7fa2eda03ff07822bbf6d397d47e021c991a4f245ab73ee764e639d12978" [label=""];
  "sha256:1dac7fa2eda03ff07822bbf6d397d47e021c991a4f245ab73ee764e639d12978" -> "sha256:645d707acc1efe82e6778343a949db564f49a1839dbc0c166d847ba4bc8dc1cd" [label=""];
  "sha256:f12b4199915aef43c020846b8fc32d77a3d72317666e91687a1300e9a8b25412" -> "sha256:645d707acc1efe82e6778343a949db564f49a1839dbc0c166d847ba4bc8dc1cd" [label=""];
  "sha256:645d707acc1efe82e6778343a949db564f49a1839dbc0c166d847ba4bc8dc1cd" -> "sha256:1c60c4e6f8e437900ffcc61464a9f0fbdd2440fc9fd66d9f5aa21f67348aaef1" [label=""];
}

