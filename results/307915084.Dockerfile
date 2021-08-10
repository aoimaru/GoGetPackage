[app/sources/307915084.Dockerfile]
digraph {
  "sha256:0c70dcbe8939e111b4b86283d8d0bab5cb8dc049d1084f0bde447b22701d9127" [label="local://context" shape="ellipse"];
  "sha256:5779137192f8b6a7ae1a2d8e2b2b0b2b0145289a96615fe7f56b3d895d714d20" [label="docker-image://docker.io/library/node:8.5.0" shape="ellipse"];
  "sha256:26b1ad95b66522802468a6b2d5bc506aa9d6685a59deb3e0f8dd04ec9d96546f" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:46a5734572779c982ef39edc851f76dc861539739c4601710298ea3aeb7e0a2c" [label="/bin/sh -c yarn" shape="box"];
  "sha256:ef30f7af077edd7135be75ffbea4620a208b66eaa68c29c196115dcc39e46d97" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:d9d09b99bf9918b4e6af7cde3493f9da8e45b0e06b48879c7651b02d881079d0" [label="sha256:d9d09b99bf9918b4e6af7cde3493f9da8e45b0e06b48879c7651b02d881079d0" shape="plaintext"];
  "sha256:5779137192f8b6a7ae1a2d8e2b2b0b2b0145289a96615fe7f56b3d895d714d20" -> "sha256:26b1ad95b66522802468a6b2d5bc506aa9d6685a59deb3e0f8dd04ec9d96546f" [label=""];
  "sha256:0c70dcbe8939e111b4b86283d8d0bab5cb8dc049d1084f0bde447b22701d9127" -> "sha256:26b1ad95b66522802468a6b2d5bc506aa9d6685a59deb3e0f8dd04ec9d96546f" [label=""];
  "sha256:26b1ad95b66522802468a6b2d5bc506aa9d6685a59deb3e0f8dd04ec9d96546f" -> "sha256:46a5734572779c982ef39edc851f76dc861539739c4601710298ea3aeb7e0a2c" [label=""];
  "sha256:46a5734572779c982ef39edc851f76dc861539739c4601710298ea3aeb7e0a2c" -> "sha256:ef30f7af077edd7135be75ffbea4620a208b66eaa68c29c196115dcc39e46d97" [label=""];
  "sha256:0c70dcbe8939e111b4b86283d8d0bab5cb8dc049d1084f0bde447b22701d9127" -> "sha256:ef30f7af077edd7135be75ffbea4620a208b66eaa68c29c196115dcc39e46d97" [label=""];
  "sha256:ef30f7af077edd7135be75ffbea4620a208b66eaa68c29c196115dcc39e46d97" -> "sha256:d9d09b99bf9918b4e6af7cde3493f9da8e45b0e06b48879c7651b02d881079d0" [label=""];
}
