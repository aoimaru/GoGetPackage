[app/sources/162045455.Dockerfile]
digraph {
  "sha256:336cf50dca68efc68f6bc6ad4159cb612ee5cd753bf643324dfbeca82a4007a4" [label="docker-image://docker.io/paulczar/meez:latest" shape="ellipse"];
  "sha256:61088afd4fab89809079dc23946c74b47bb337ee0871a1aab1d0feb27a0ab40d" [label="local://context" shape="ellipse"];
  "sha256:6b0258fa73b9d04d207277d9572dd6cf9b4cb84f67eb179aae4af9d15353ee72" [label="copy{src=/Gemfile, dest=/tmp/Gemfile}" shape="note"];
  "sha256:7568d329bf7950f33772770e566c38e9fcb2db792513962d9005f2757eb8e07a" [label="/bin/sh -c cd /tmp && bundle install" shape="box"];
  "sha256:24d8c3943a8e59602288b704fc2d84e34d0f4aa6aec9fb01c32efe147c83da08" [label="sha256:24d8c3943a8e59602288b704fc2d84e34d0f4aa6aec9fb01c32efe147c83da08" shape="plaintext"];
  "sha256:336cf50dca68efc68f6bc6ad4159cb612ee5cd753bf643324dfbeca82a4007a4" -> "sha256:6b0258fa73b9d04d207277d9572dd6cf9b4cb84f67eb179aae4af9d15353ee72" [label=""];
  "sha256:61088afd4fab89809079dc23946c74b47bb337ee0871a1aab1d0feb27a0ab40d" -> "sha256:6b0258fa73b9d04d207277d9572dd6cf9b4cb84f67eb179aae4af9d15353ee72" [label=""];
  "sha256:6b0258fa73b9d04d207277d9572dd6cf9b4cb84f67eb179aae4af9d15353ee72" -> "sha256:7568d329bf7950f33772770e566c38e9fcb2db792513962d9005f2757eb8e07a" [label=""];
  "sha256:7568d329bf7950f33772770e566c38e9fcb2db792513962d9005f2757eb8e07a" -> "sha256:24d8c3943a8e59602288b704fc2d84e34d0f4aa6aec9fb01c32efe147c83da08" [label=""];
}

