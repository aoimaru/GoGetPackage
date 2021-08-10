[app/sources/224067462.Dockerfile]
digraph {
  "sha256:0b1ac144cfc9e3a6e7bc127ca26aff321212c2178daf23ba5214cd91d7e2f7a7" [label="local://context" shape="ellipse"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" [label="mkdir{path=/app}" shape="note"];
  "sha256:6e0e1516230a102b6b3fd5b89484a8c3d2ec2965b387eec3c135ffcdc783f211" [label="copy{src=/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:ff9c049a3a86392cf6bf1c2559362f9dda0aab6efcfc9ca1aed84658c5c73a16" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:a94b743ca78aeee58efef7cd3bb3e3d4470d0015ad70af7d9470da8b8d8fbf36" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:fe4e0112a76506d5b8053b60802574d0eb7f0235a464a0fc2149128b91a99a51" [label="sha256:fe4e0112a76506d5b8053b60802574d0eb7f0235a464a0fc2149128b91a99a51" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" [label=""];
  "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" -> "sha256:6e0e1516230a102b6b3fd5b89484a8c3d2ec2965b387eec3c135ffcdc783f211" [label=""];
  "sha256:0b1ac144cfc9e3a6e7bc127ca26aff321212c2178daf23ba5214cd91d7e2f7a7" -> "sha256:6e0e1516230a102b6b3fd5b89484a8c3d2ec2965b387eec3c135ffcdc783f211" [label=""];
  "sha256:6e0e1516230a102b6b3fd5b89484a8c3d2ec2965b387eec3c135ffcdc783f211" -> "sha256:ff9c049a3a86392cf6bf1c2559362f9dda0aab6efcfc9ca1aed84658c5c73a16" [label=""];
  "sha256:ff9c049a3a86392cf6bf1c2559362f9dda0aab6efcfc9ca1aed84658c5c73a16" -> "sha256:a94b743ca78aeee58efef7cd3bb3e3d4470d0015ad70af7d9470da8b8d8fbf36" [label=""];
  "sha256:0b1ac144cfc9e3a6e7bc127ca26aff321212c2178daf23ba5214cd91d7e2f7a7" -> "sha256:a94b743ca78aeee58efef7cd3bb3e3d4470d0015ad70af7d9470da8b8d8fbf36" [label=""];
  "sha256:a94b743ca78aeee58efef7cd3bb3e3d4470d0015ad70af7d9470da8b8d8fbf36" -> "sha256:fe4e0112a76506d5b8053b60802574d0eb7f0235a464a0fc2149128b91a99a51" [label=""];
}

