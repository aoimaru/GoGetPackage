[app/sources/469784512.Dockerfile]
digraph {
  "sha256:d58b184c406773fb04817c5bfd130defd64f082ef784f0eab72d7e3214f94971" [label="docker-image://763104351884.dkr.ecr.us-east-1.amazonaws.com/tensorflow-training:1.13-horovod-gpu-py27-cu100-ubuntu16.04" shape="ellipse"];
  "sha256:2bd4a718af2ac63862bb4a96f7ea24cf9fed7c0d027f833033fd974a10533f97" [label="/bin/sh -c mkdir /tensorflow" shape="box"];
  "sha256:e40c2ba66d165fdf28153f0b6654e7d321349c05ab67729a9f0800d8fc3ac054" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:cf794a7174bcb4aeeb22f04347fc7c979592f9ecc3bf9bf0b2c00c3f18a71e42" [label="/bin/sh -c git clone -b cnn_tf_v1.12_compatible https://github.com/tensorflow/benchmarks" shape="box"];
  "sha256:9c7c0b239f9fcd0717c0fb22d20845d0df528bc7489d832fe9f5f652f2889345" [label="mkdir{path=/tensorflow/benchmarks}" shape="note"];
  "sha256:c0b518d53b69204193eb5997acde963204381999170d3ace76e720af8639833f" [label="sha256:c0b518d53b69204193eb5997acde963204381999170d3ace76e720af8639833f" shape="plaintext"];
  "sha256:d58b184c406773fb04817c5bfd130defd64f082ef784f0eab72d7e3214f94971" -> "sha256:2bd4a718af2ac63862bb4a96f7ea24cf9fed7c0d027f833033fd974a10533f97" [label=""];
  "sha256:2bd4a718af2ac63862bb4a96f7ea24cf9fed7c0d027f833033fd974a10533f97" -> "sha256:e40c2ba66d165fdf28153f0b6654e7d321349c05ab67729a9f0800d8fc3ac054" [label=""];
  "sha256:e40c2ba66d165fdf28153f0b6654e7d321349c05ab67729a9f0800d8fc3ac054" -> "sha256:cf794a7174bcb4aeeb22f04347fc7c979592f9ecc3bf9bf0b2c00c3f18a71e42" [label=""];
  "sha256:cf794a7174bcb4aeeb22f04347fc7c979592f9ecc3bf9bf0b2c00c3f18a71e42" -> "sha256:9c7c0b239f9fcd0717c0fb22d20845d0df528bc7489d832fe9f5f652f2889345" [label=""];
  "sha256:9c7c0b239f9fcd0717c0fb22d20845d0df528bc7489d832fe9f5f652f2889345" -> "sha256:c0b518d53b69204193eb5997acde963204381999170d3ace76e720af8639833f" [label=""];
}

