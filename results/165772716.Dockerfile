[app/sources/165772716.Dockerfile]
digraph {
  "sha256:4cb6ee2b8113cd87afd4b2ba784a1780b4b81c96f0bbde77a6ddff43729f418b" [label="docker-image://docker.io/library/debian:buster-slim" shape="ellipse"];
  "sha256:9f7c94d73b91874fa49c5682ed7e68a3d44a1181efc9a50e41d7d1103485130b" [label="/bin/sh -c apt-get update && apt-get install -y \tfile \tshellcheck \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:324ecd33bf1cc77d9d977e9c98cfb336854b2f88f32ce0db09c5eee72914be6f" [label="sha256:324ecd33bf1cc77d9d977e9c98cfb336854b2f88f32ce0db09c5eee72914be6f" shape="plaintext"];
  "sha256:4cb6ee2b8113cd87afd4b2ba784a1780b4b81c96f0bbde77a6ddff43729f418b" -> "sha256:9f7c94d73b91874fa49c5682ed7e68a3d44a1181efc9a50e41d7d1103485130b" [label=""];
  "sha256:9f7c94d73b91874fa49c5682ed7e68a3d44a1181efc9a50e41d7d1103485130b" -> "sha256:324ecd33bf1cc77d9d977e9c98cfb336854b2f88f32ce0db09c5eee72914be6f" [label=""];
}

