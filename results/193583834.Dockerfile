[app/sources/193583834.Dockerfile]
digraph {
  "sha256:132bffeb9212674b9caf0dfc19b1b887d056cdec3d38c9ece638424df8c2957c" [label="docker-image://docker.io/smebberson/alpine-confd:latest" shape="ellipse"];
  "sha256:ec7cd084795598ef3709d3b1bfc9ff8ffe7d51ae72ed67e96f1765291ef3fff2" [label="local://context" shape="ellipse"];
  "sha256:154f967e0ea2587b7e4a5dcc544fd61d7d98a3ee892c0c15068f3e6bbce8b403" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:21d2be9890e89423240e9e81c14694ec86c02562013c782615bd89d1d6c6d8da" [label="sha256:21d2be9890e89423240e9e81c14694ec86c02562013c782615bd89d1d6c6d8da" shape="plaintext"];
  "sha256:132bffeb9212674b9caf0dfc19b1b887d056cdec3d38c9ece638424df8c2957c" -> "sha256:154f967e0ea2587b7e4a5dcc544fd61d7d98a3ee892c0c15068f3e6bbce8b403" [label=""];
  "sha256:ec7cd084795598ef3709d3b1bfc9ff8ffe7d51ae72ed67e96f1765291ef3fff2" -> "sha256:154f967e0ea2587b7e4a5dcc544fd61d7d98a3ee892c0c15068f3e6bbce8b403" [label=""];
  "sha256:154f967e0ea2587b7e4a5dcc544fd61d7d98a3ee892c0c15068f3e6bbce8b403" -> "sha256:21d2be9890e89423240e9e81c14694ec86c02562013c782615bd89d1d6c6d8da" [label=""];
}

