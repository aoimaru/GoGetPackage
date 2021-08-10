[app/sources/210293878.Dockerfile]
digraph {
  "sha256:abcab5f531da58b7f8d0805f27357168d7598e41aa2fa6232a3ea8ce2317f31b" [label="docker-image://docker.io/library/ruby:2.5.0" shape="ellipse"];
  "sha256:02cd0ca773c7cf87b9f95657c75a89c3e1a0ae896e678218d3b6961b9335a418" [label="/bin/sh -c apt-get update && apt-get install -y build-essential libpq-dev nodejs apt-utils" shape="box"];
  "sha256:29776aefafd6b8f6a1f5e86ffe865ac8fb060b02458ecfc6f57ae2f668534988" [label="mkdir{path=/app}" shape="note"];
  "sha256:d7bc3100cd9cabe9af2df71a986557e15dd2503fcaa29cb93c1f6de30a2f0fdb" [label="local://context" shape="ellipse"];
  "sha256:ff2a03c400aa9b38b277fe37c8eee0e276badeefd8fed56a93a5ef8cad38ec67" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:2f76367dae8ca400ad2b6c5aaa87ca222fb4f3eb46fb27bb86e9dcb0060373f7" [label="/bin/sh -c bundle install --jobs 20 --retry 5" shape="box"];
  "sha256:b3eb65522a03661aa6464b966fc0d9b6a30e9ff9507f9523b883eda3ee793f40" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:e4b48a2f196e5b15c77e1e2f9556c0da3668db7337b8ebfd476fee0a33929377" [label="sha256:e4b48a2f196e5b15c77e1e2f9556c0da3668db7337b8ebfd476fee0a33929377" shape="plaintext"];
  "sha256:abcab5f531da58b7f8d0805f27357168d7598e41aa2fa6232a3ea8ce2317f31b" -> "sha256:02cd0ca773c7cf87b9f95657c75a89c3e1a0ae896e678218d3b6961b9335a418" [label=""];
  "sha256:02cd0ca773c7cf87b9f95657c75a89c3e1a0ae896e678218d3b6961b9335a418" -> "sha256:29776aefafd6b8f6a1f5e86ffe865ac8fb060b02458ecfc6f57ae2f668534988" [label=""];
  "sha256:29776aefafd6b8f6a1f5e86ffe865ac8fb060b02458ecfc6f57ae2f668534988" -> "sha256:ff2a03c400aa9b38b277fe37c8eee0e276badeefd8fed56a93a5ef8cad38ec67" [label=""];
  "sha256:d7bc3100cd9cabe9af2df71a986557e15dd2503fcaa29cb93c1f6de30a2f0fdb" -> "sha256:ff2a03c400aa9b38b277fe37c8eee0e276badeefd8fed56a93a5ef8cad38ec67" [label=""];
  "sha256:ff2a03c400aa9b38b277fe37c8eee0e276badeefd8fed56a93a5ef8cad38ec67" -> "sha256:2f76367dae8ca400ad2b6c5aaa87ca222fb4f3eb46fb27bb86e9dcb0060373f7" [label=""];
  "sha256:2f76367dae8ca400ad2b6c5aaa87ca222fb4f3eb46fb27bb86e9dcb0060373f7" -> "sha256:b3eb65522a03661aa6464b966fc0d9b6a30e9ff9507f9523b883eda3ee793f40" [label=""];
  "sha256:d7bc3100cd9cabe9af2df71a986557e15dd2503fcaa29cb93c1f6de30a2f0fdb" -> "sha256:b3eb65522a03661aa6464b966fc0d9b6a30e9ff9507f9523b883eda3ee793f40" [label=""];
  "sha256:b3eb65522a03661aa6464b966fc0d9b6a30e9ff9507f9523b883eda3ee793f40" -> "sha256:e4b48a2f196e5b15c77e1e2f9556c0da3668db7337b8ebfd476fee0a33929377" [label=""];
}

