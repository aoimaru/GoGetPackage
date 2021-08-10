[app/sources/140073568.Dockerfile]
digraph {
  "sha256:f55e829578296c33c075937f144f760136870c0f41ec647726aee2e4be4a212f" [label="local://context" shape="ellipse"];
  "sha256:13b86560ec72be1af3a61870f362939873bbd6966fad043b43d8292343145c19" [label="docker-image://docker.io/library/ruby:2.3" shape="ellipse"];
  "sha256:375ab1f8b5dbabdbc8bbe86194d492c4b5453d3172c4a49b993f1e84cccfeb54" [label="copy{src=/Gemfile, dest=/app/Gemfile}" shape="note"];
  "sha256:746156e43c1d61d67be6d7dfc7efc9a433e8efb56ee949e22c80fa85ec5cd5ce" [label="copy{src=/Gemfile.lock, dest=/app/Gemfile.lock}" shape="note"];
  "sha256:a0ffc15fa15d73bd1b5bae6d27cab4e0082b021b0cdb1c6028ffa860012fd408" [label="copy{src=/.bundle, dest=/app/.bundle}" shape="note"];
  "sha256:c5526454684ececd722c16554b16cf2f75a54c1fb36d0c7c57cdb26943a73b9d" [label="mkdir{path=/app}" shape="note"];
  "sha256:a4e527b55c2429d8d9a15afee7786424dbfe9742090260212ed08504bd3bfa98" [label="/bin/sh -c bundle --without test" shape="box"];
  "sha256:9f7b03c9e5839b0196c9ac80b2aa272529897825d91a0e97437a35d9f6ea3393" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:599f8d3648427a70995d9baed6b34666dcfd121c70e074f5de4660279cdb0cf5" [label="sha256:599f8d3648427a70995d9baed6b34666dcfd121c70e074f5de4660279cdb0cf5" shape="plaintext"];
  "sha256:13b86560ec72be1af3a61870f362939873bbd6966fad043b43d8292343145c19" -> "sha256:375ab1f8b5dbabdbc8bbe86194d492c4b5453d3172c4a49b993f1e84cccfeb54" [label=""];
  "sha256:f55e829578296c33c075937f144f760136870c0f41ec647726aee2e4be4a212f" -> "sha256:375ab1f8b5dbabdbc8bbe86194d492c4b5453d3172c4a49b993f1e84cccfeb54" [label=""];
  "sha256:375ab1f8b5dbabdbc8bbe86194d492c4b5453d3172c4a49b993f1e84cccfeb54" -> "sha256:746156e43c1d61d67be6d7dfc7efc9a433e8efb56ee949e22c80fa85ec5cd5ce" [label=""];
  "sha256:f55e829578296c33c075937f144f760136870c0f41ec647726aee2e4be4a212f" -> "sha256:746156e43c1d61d67be6d7dfc7efc9a433e8efb56ee949e22c80fa85ec5cd5ce" [label=""];
  "sha256:746156e43c1d61d67be6d7dfc7efc9a433e8efb56ee949e22c80fa85ec5cd5ce" -> "sha256:a0ffc15fa15d73bd1b5bae6d27cab4e0082b021b0cdb1c6028ffa860012fd408" [label=""];
  "sha256:f55e829578296c33c075937f144f760136870c0f41ec647726aee2e4be4a212f" -> "sha256:a0ffc15fa15d73bd1b5bae6d27cab4e0082b021b0cdb1c6028ffa860012fd408" [label=""];
  "sha256:a0ffc15fa15d73bd1b5bae6d27cab4e0082b021b0cdb1c6028ffa860012fd408" -> "sha256:c5526454684ececd722c16554b16cf2f75a54c1fb36d0c7c57cdb26943a73b9d" [label=""];
  "sha256:c5526454684ececd722c16554b16cf2f75a54c1fb36d0c7c57cdb26943a73b9d" -> "sha256:a4e527b55c2429d8d9a15afee7786424dbfe9742090260212ed08504bd3bfa98" [label=""];
  "sha256:a4e527b55c2429d8d9a15afee7786424dbfe9742090260212ed08504bd3bfa98" -> "sha256:9f7b03c9e5839b0196c9ac80b2aa272529897825d91a0e97437a35d9f6ea3393" [label=""];
  "sha256:f55e829578296c33c075937f144f760136870c0f41ec647726aee2e4be4a212f" -> "sha256:9f7b03c9e5839b0196c9ac80b2aa272529897825d91a0e97437a35d9f6ea3393" [label=""];
  "sha256:9f7b03c9e5839b0196c9ac80b2aa272529897825d91a0e97437a35d9f6ea3393" -> "sha256:599f8d3648427a70995d9baed6b34666dcfd121c70e074f5de4660279cdb0cf5" [label=""];
}

