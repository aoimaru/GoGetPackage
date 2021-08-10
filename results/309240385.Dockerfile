[app/sources/309240385.Dockerfile]
digraph {
  "sha256:2e297dba892903828c757eaeae33a929857e6d587c485b0fe0c6fd93042be9c4" [label="docker-image://docker.io/iofog/node-alpine-x86:8.16.0" shape="ellipse"];
  "sha256:2b82085e7d8c6f6a7657981a5d5c2212c396140b38e588427af326a9bd666ce8" [label="local://context" shape="ellipse"];
  "sha256:217db57050a7161194e5cf996c0f9690f66456f072bc6cba7831858154327c4f" [label="copy{src=/, dest=/tmp}" shape="note"];
  "sha256:3e0475b6a961845028c46146023da4def9a066a946bb57d4cd4f2960ce88ab82" [label="/bin/sh -c npm i --unsafe-perm -g /tmp/${FILENAME} &&   rm -rf /tmp/${FILENAME} &&   echo \"iofog-controller start && tail -f /dev/null\" >> /start.sh" shape="box"];
  "sha256:1daf31f9fab0d31ffe7be0eee2d0788707c9c4f5bfa7a11a325e52d6cf3d5c9c" [label="sha256:1daf31f9fab0d31ffe7be0eee2d0788707c9c4f5bfa7a11a325e52d6cf3d5c9c" shape="plaintext"];
  "sha256:2e297dba892903828c757eaeae33a929857e6d587c485b0fe0c6fd93042be9c4" -> "sha256:217db57050a7161194e5cf996c0f9690f66456f072bc6cba7831858154327c4f" [label=""];
  "sha256:2b82085e7d8c6f6a7657981a5d5c2212c396140b38e588427af326a9bd666ce8" -> "sha256:217db57050a7161194e5cf996c0f9690f66456f072bc6cba7831858154327c4f" [label=""];
  "sha256:217db57050a7161194e5cf996c0f9690f66456f072bc6cba7831858154327c4f" -> "sha256:3e0475b6a961845028c46146023da4def9a066a946bb57d4cd4f2960ce88ab82" [label=""];
  "sha256:3e0475b6a961845028c46146023da4def9a066a946bb57d4cd4f2960ce88ab82" -> "sha256:1daf31f9fab0d31ffe7be0eee2d0788707c9c4f5bfa7a11a325e52d6cf3d5c9c" [label=""];
}

