[app/sources/252798302.Dockerfile]
digraph {
  "sha256:5186082234b4920cfe3bd51d760ddc2c48a7c5cf794c6b9118733c5ffded88b0" [label="local://context" shape="ellipse"];
  "sha256:3716f98c3025b8e56e51d99473a146948b72ffaf70ef3ea2ae7b10b5e3f036b7" [label="docker-image://docker.io/library/elixir:1.4" shape="ellipse"];
  "sha256:d606727e5f6438331205f73671dfb7ba31ef498cb7cab2b69334f2cb020c12b6" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:cca0cb89b989191e6a806fd3fa96870d4bb1c7be6f02099ea09039f3b56c4712" [label="mkdir{path=/app}" shape="note"];
  "sha256:3ddc1334e908c1f4dbefa57fbd9b96028e8f65562f8a49ae50bf2bab5724ebc5" [label="copy{src=/mix.*, dest=/app/}" shape="note"];
  "sha256:8e4a03c35a645ca9b2271cb2cad34dedf9889b998d9543e1c0fbe24356246074" [label="/bin/sh -c MIX_ENV=prod mix local.rebar" shape="box"];
  "sha256:1b750ce9b009e5fc9cdcae4bf4ac8da9f92f7797d8ae7e125a6c53e6e3f0fa9d" [label="/bin/sh -c MIX_ENV=prod mix local.hex --force" shape="box"];
  "sha256:c57aaf66a23d2d9b7b53cca2ab7181f0de9e1f6c78d86408c961ec2b6a14944f" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:27d62c8a670cc51918a1f8b05d09c4001a0503b52bd6b2a0f0865e064ec37ef8" [label="/bin/sh -c MIX_ENV=prod mix deps.get" shape="box"];
  "sha256:7c58ef0bde5041566a97c05b4d35b7c7eed69ae0bfc48b61858bb3121d364303" [label="/bin/sh -c MIX_ENV=prod mix compile" shape="box"];
  "sha256:b70689e4c19c3262556123bc1c72581185efbd9ee3559d7775a898f689bcf84b" [label="sha256:b70689e4c19c3262556123bc1c72581185efbd9ee3559d7775a898f689bcf84b" shape="plaintext"];
  "sha256:3716f98c3025b8e56e51d99473a146948b72ffaf70ef3ea2ae7b10b5e3f036b7" -> "sha256:d606727e5f6438331205f73671dfb7ba31ef498cb7cab2b69334f2cb020c12b6" [label=""];
  "sha256:d606727e5f6438331205f73671dfb7ba31ef498cb7cab2b69334f2cb020c12b6" -> "sha256:cca0cb89b989191e6a806fd3fa96870d4bb1c7be6f02099ea09039f3b56c4712" [label=""];
  "sha256:cca0cb89b989191e6a806fd3fa96870d4bb1c7be6f02099ea09039f3b56c4712" -> "sha256:3ddc1334e908c1f4dbefa57fbd9b96028e8f65562f8a49ae50bf2bab5724ebc5" [label=""];
  "sha256:5186082234b4920cfe3bd51d760ddc2c48a7c5cf794c6b9118733c5ffded88b0" -> "sha256:3ddc1334e908c1f4dbefa57fbd9b96028e8f65562f8a49ae50bf2bab5724ebc5" [label=""];
  "sha256:3ddc1334e908c1f4dbefa57fbd9b96028e8f65562f8a49ae50bf2bab5724ebc5" -> "sha256:8e4a03c35a645ca9b2271cb2cad34dedf9889b998d9543e1c0fbe24356246074" [label=""];
  "sha256:8e4a03c35a645ca9b2271cb2cad34dedf9889b998d9543e1c0fbe24356246074" -> "sha256:1b750ce9b009e5fc9cdcae4bf4ac8da9f92f7797d8ae7e125a6c53e6e3f0fa9d" [label=""];
  "sha256:1b750ce9b009e5fc9cdcae4bf4ac8da9f92f7797d8ae7e125a6c53e6e3f0fa9d" -> "sha256:c57aaf66a23d2d9b7b53cca2ab7181f0de9e1f6c78d86408c961ec2b6a14944f" [label=""];
  "sha256:5186082234b4920cfe3bd51d760ddc2c48a7c5cf794c6b9118733c5ffded88b0" -> "sha256:c57aaf66a23d2d9b7b53cca2ab7181f0de9e1f6c78d86408c961ec2b6a14944f" [label=""];
  "sha256:c57aaf66a23d2d9b7b53cca2ab7181f0de9e1f6c78d86408c961ec2b6a14944f" -> "sha256:27d62c8a670cc51918a1f8b05d09c4001a0503b52bd6b2a0f0865e064ec37ef8" [label=""];
  "sha256:27d62c8a670cc51918a1f8b05d09c4001a0503b52bd6b2a0f0865e064ec37ef8" -> "sha256:7c58ef0bde5041566a97c05b4d35b7c7eed69ae0bfc48b61858bb3121d364303" [label=""];
  "sha256:7c58ef0bde5041566a97c05b4d35b7c7eed69ae0bfc48b61858bb3121d364303" -> "sha256:b70689e4c19c3262556123bc1c72581185efbd9ee3559d7775a898f689bcf84b" [label=""];
}

