[app/sources/346895149.Dockerfile]
digraph {
  "sha256:a82657dc9009ab4ecab0a966d899b2972800cfe1ee9d42fc736a0cac1581ac52" [label="docker-image://docker.io/library/centos:7@sha256:0f4ec88e21daf75124b8a9e5ca03c37a5e937e0e108a255d890492430789b60e" shape="ellipse"];
  "sha256:6d4637b9f9b806cd7497371f4ef321ce3c8ae964d0e3eb7be2bfcbe04986561f" [label="/bin/sh -c yum install -y epel-release" shape="box"];
  "sha256:b5b4780b11f2a5e1e300fe12b6cc2b90ad36ff2d68910ecd65e6dff16f3e7bf9" [label="/bin/sh -c yum install -y nodejs npm" shape="box"];
  "sha256:f7a2a280a01327417de8e41abccf325bc1d93e045f720305fcf34a37afbd12b5" [label="/bin/sh -c yum install -y bzip2" shape="box"];
  "sha256:657210827008af024e4a030141863c541e33d6cfee96c6fcb2bbcd64d8acd7b5" [label="/bin/sh -c yum install -y git" shape="box"];
  "sha256:acd61ae94e374b6f48ac6a0e1099e879c2aefc5dd8059c52cbe142143d4ef279" [label="/bin/sh -c git clone https://www.github.com/tecfu/tty-table" shape="box"];
  "sha256:a2baefc7fa72d1758901fe3fdd9f4610c6ce3eec4b529232feb66a57321a7cf5" [label="/bin/sh -c npm install grunt-cli -g" shape="box"];
  "sha256:f8d26a71e2831f8dd64d603dc40b531b3c903f6b72e9ce984dccefd631167730" [label="mkdir{path=/tty-table}" shape="note"];
  "sha256:3d10d9473c859644a90a8af4e2ed207a8982b447c3e24306655ec3a55aad953a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:dab8732460e775f7120b2dfe67464977b010452fbcffdf87af724afdd3d6ee61" [label="/bin/sh -c grunt t" shape="box"];
  "sha256:18ba63d5335c63202d12d5aef7331cdb650beee823bab1a83a39f78d41c21a90" [label="sha256:18ba63d5335c63202d12d5aef7331cdb650beee823bab1a83a39f78d41c21a90" shape="plaintext"];
  "sha256:a82657dc9009ab4ecab0a966d899b2972800cfe1ee9d42fc736a0cac1581ac52" -> "sha256:6d4637b9f9b806cd7497371f4ef321ce3c8ae964d0e3eb7be2bfcbe04986561f" [label=""];
  "sha256:6d4637b9f9b806cd7497371f4ef321ce3c8ae964d0e3eb7be2bfcbe04986561f" -> "sha256:b5b4780b11f2a5e1e300fe12b6cc2b90ad36ff2d68910ecd65e6dff16f3e7bf9" [label=""];
  "sha256:b5b4780b11f2a5e1e300fe12b6cc2b90ad36ff2d68910ecd65e6dff16f3e7bf9" -> "sha256:f7a2a280a01327417de8e41abccf325bc1d93e045f720305fcf34a37afbd12b5" [label=""];
  "sha256:f7a2a280a01327417de8e41abccf325bc1d93e045f720305fcf34a37afbd12b5" -> "sha256:657210827008af024e4a030141863c541e33d6cfee96c6fcb2bbcd64d8acd7b5" [label=""];
  "sha256:657210827008af024e4a030141863c541e33d6cfee96c6fcb2bbcd64d8acd7b5" -> "sha256:acd61ae94e374b6f48ac6a0e1099e879c2aefc5dd8059c52cbe142143d4ef279" [label=""];
  "sha256:acd61ae94e374b6f48ac6a0e1099e879c2aefc5dd8059c52cbe142143d4ef279" -> "sha256:a2baefc7fa72d1758901fe3fdd9f4610c6ce3eec4b529232feb66a57321a7cf5" [label=""];
  "sha256:a2baefc7fa72d1758901fe3fdd9f4610c6ce3eec4b529232feb66a57321a7cf5" -> "sha256:f8d26a71e2831f8dd64d603dc40b531b3c903f6b72e9ce984dccefd631167730" [label=""];
  "sha256:f8d26a71e2831f8dd64d603dc40b531b3c903f6b72e9ce984dccefd631167730" -> "sha256:3d10d9473c859644a90a8af4e2ed207a8982b447c3e24306655ec3a55aad953a" [label=""];
  "sha256:3d10d9473c859644a90a8af4e2ed207a8982b447c3e24306655ec3a55aad953a" -> "sha256:dab8732460e775f7120b2dfe67464977b010452fbcffdf87af724afdd3d6ee61" [label=""];
  "sha256:dab8732460e775f7120b2dfe67464977b010452fbcffdf87af724afdd3d6ee61" -> "sha256:18ba63d5335c63202d12d5aef7331cdb650beee823bab1a83a39f78d41c21a90" [label=""];
}

