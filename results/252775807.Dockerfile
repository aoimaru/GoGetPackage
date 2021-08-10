[app/sources/252775807.Dockerfile]
digraph {
  "sha256:6a7f8b10b3848ea89b04a6c4d6b69233188d5ff0844fcb4eff9de810b9ae07bb" [label="local://context" shape="ellipse"];
  "sha256:c9f7a46f3520d39d0c665abe1084cf5b52677c7e4f434fa89695d082e8a30a62" [label="copy{src=/--from=build, dest=/chaos-monkey},copy{src=/usr/src/chaos-monkey/chaos-monkey, dest=/chaos-monkey}" shape="note"];
  "sha256:319f71c459636ccc9bd6f4ec929a76058048fdf906457de4064ef7945ddc4a11" [label="sha256:319f71c459636ccc9bd6f4ec929a76058048fdf906457de4064ef7945ddc4a11" shape="plaintext"];
  "sha256:6a7f8b10b3848ea89b04a6c4d6b69233188d5ff0844fcb4eff9de810b9ae07bb" -> "sha256:c9f7a46f3520d39d0c665abe1084cf5b52677c7e4f434fa89695d082e8a30a62" [label=""];
  "sha256:c9f7a46f3520d39d0c665abe1084cf5b52677c7e4f434fa89695d082e8a30a62" -> "sha256:319f71c459636ccc9bd6f4ec929a76058048fdf906457de4064ef7945ddc4a11" [label=""];
}

