[app/sources/330296256.Dockerfile]
digraph {
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" [label="docker-image://docker.io/tutum/nginx:latest" shape="ellipse"];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:a6bb8597e8e291cad56bf17c150366a9956bc34ade5da948cfa3636e8ff4bfb4" [label="local://context" shape="ellipse"];
  "sha256:356958aa7808f77bf5cf502a3f6184537fe075734fed1365d0423e08f5762a9f" [label="copy{src=/sites-enabled, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:5f3cbd8bab6a89c4bcb0f6521bfd5a810baad88b5572934502d360a40038b935" [label="sha256:5f3cbd8bab6a89c4bcb0f6521bfd5a810baad88b5572934502d360a40038b935" shape="plaintext"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" -> "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label=""];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" -> "sha256:356958aa7808f77bf5cf502a3f6184537fe075734fed1365d0423e08f5762a9f" [label=""];
  "sha256:a6bb8597e8e291cad56bf17c150366a9956bc34ade5da948cfa3636e8ff4bfb4" -> "sha256:356958aa7808f77bf5cf502a3f6184537fe075734fed1365d0423e08f5762a9f" [label=""];
  "sha256:356958aa7808f77bf5cf502a3f6184537fe075734fed1365d0423e08f5762a9f" -> "sha256:5f3cbd8bab6a89c4bcb0f6521bfd5a810baad88b5572934502d360a40038b935" [label=""];
}

