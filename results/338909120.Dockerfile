[app/sources/338909120.Dockerfile]
digraph {
  "sha256:208c054e4dfb5529f7d0ab34742bd4a036044479f139a0f4c2e48d29426092ef" [label="docker-image://docker.io/library/zchunk-debian:latest" shape="ellipse"];
  "sha256:00ea16af8c239099a0cde8fcd45cffae95fcf73105fb10b8109e41d543bbcca9" [label="local://context" shape="ellipse"];
  "sha256:f8993f1e8e6d9f9a00628410d4a43e77722ac1c296e6ac5921a47571875a164b" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:5782389548c9dcd0969ee672c0f33ffb85e99cb27b58996c42d625749a5cba49" [label="mkdir{path=/code}" shape="note"];
  "sha256:da2be73fa00c22b9393e728d47a9bc72e6b46ff7bb45145b94bffe1a7517a497" [label="/bin/sh -c meson build && cd build && ninja" shape="box"];
  "sha256:8a4192e179e4ab7a863d5b03e76a472057eb2dfa62285e2e494a41689f1e7b03" [label="mkdir{path=/code/build}" shape="note"];
  "sha256:4de1e8689d53bf344c546df5bbc5a93c747e736482b0138ac7f3fc7cab83bbfc" [label="sha256:4de1e8689d53bf344c546df5bbc5a93c747e736482b0138ac7f3fc7cab83bbfc" shape="plaintext"];
  "sha256:208c054e4dfb5529f7d0ab34742bd4a036044479f139a0f4c2e48d29426092ef" -> "sha256:f8993f1e8e6d9f9a00628410d4a43e77722ac1c296e6ac5921a47571875a164b" [label=""];
  "sha256:00ea16af8c239099a0cde8fcd45cffae95fcf73105fb10b8109e41d543bbcca9" -> "sha256:f8993f1e8e6d9f9a00628410d4a43e77722ac1c296e6ac5921a47571875a164b" [label=""];
  "sha256:f8993f1e8e6d9f9a00628410d4a43e77722ac1c296e6ac5921a47571875a164b" -> "sha256:5782389548c9dcd0969ee672c0f33ffb85e99cb27b58996c42d625749a5cba49" [label=""];
  "sha256:5782389548c9dcd0969ee672c0f33ffb85e99cb27b58996c42d625749a5cba49" -> "sha256:da2be73fa00c22b9393e728d47a9bc72e6b46ff7bb45145b94bffe1a7517a497" [label=""];
  "sha256:da2be73fa00c22b9393e728d47a9bc72e6b46ff7bb45145b94bffe1a7517a497" -> "sha256:8a4192e179e4ab7a863d5b03e76a472057eb2dfa62285e2e494a41689f1e7b03" [label=""];
  "sha256:8a4192e179e4ab7a863d5b03e76a472057eb2dfa62285e2e494a41689f1e7b03" -> "sha256:4de1e8689d53bf344c546df5bbc5a93c747e736482b0138ac7f3fc7cab83bbfc" [label=""];
}

