[app/sources/352387559.Dockerfile]
digraph {
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" [label="docker-image://docker.io/s390x/ubuntu:16.04" shape="ellipse"];
  "sha256:9c1c814deef100f0f898b8a877df46a9bf2dda26a2d0bac18f43ce0d00826b5f" [label="mkdir{path=/root}" shape="note"];
  "sha256:bdbaefd73e5a93755a0ebd5893bac9c6422ffceac96a8705bc10bebbf9ca137e" [label="/bin/sh -c apt-get update   && apt-get install -y       gcc       libtest-yaml-perl       libyaml-perl       make       perl-modules-5.22       tar       zip  && perl -MCPAN -le 'print \"CPAN Version -> $CPAN::VERSION\"'   && cpan -fi Bundle::CPAN  && perl -MCPAN -le 'print \"CPAN Version -> $CPAN::VERSION\"'  && cpan Config::AutoConf  && cpan -fi Path::Tiny  && cpan -fi BSON::Decimal128 BSON::Types  && cpan MongoDB  && apt-get remove -y \t    gcc         make         zip  && apt autoremove -y  && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8dfd7495f91c8392f1d5510171e7ac930b9a079246619affe7fc2cb8b4aa3967" [label="sha256:8dfd7495f91c8392f1d5510171e7ac930b9a079246619affe7fc2cb8b4aa3967" shape="plaintext"];
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" -> "sha256:9c1c814deef100f0f898b8a877df46a9bf2dda26a2d0bac18f43ce0d00826b5f" [label=""];
  "sha256:9c1c814deef100f0f898b8a877df46a9bf2dda26a2d0bac18f43ce0d00826b5f" -> "sha256:bdbaefd73e5a93755a0ebd5893bac9c6422ffceac96a8705bc10bebbf9ca137e" [label=""];
  "sha256:bdbaefd73e5a93755a0ebd5893bac9c6422ffceac96a8705bc10bebbf9ca137e" -> "sha256:8dfd7495f91c8392f1d5510171e7ac930b9a079246619affe7fc2cb8b4aa3967" [label=""];
}

