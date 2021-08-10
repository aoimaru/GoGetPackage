[app/sources/146821133.Dockerfile]
digraph {
  "sha256:fa52936e4be9e1cde6a79c8128edb9c0edeae5237bbdce7fd47a33ffb114cb6d" [label="docker-image://docker.io/library/spark-base:0.9.0" shape="ellipse"];
  "sha256:df0c027e4c482f13f40d8608c1513a44c7e1bc62dcf297782cd8072d566413c2" [label="local://context" shape="ellipse"];
  "sha256:7e1965f21a66eccee54e897014d420a66606fd20c04685fb9220b06d8e27ec80" [label="copy{src=/files, dest=/root/spark_worker_files}" shape="note"];
  "sha256:20b89a50cbbc4cf7fdf6bf6da62cd37e61f307fb9d7b4e712ca40fbc6ab52806" [label="sha256:20b89a50cbbc4cf7fdf6bf6da62cd37e61f307fb9d7b4e712ca40fbc6ab52806" shape="plaintext"];
  "sha256:fa52936e4be9e1cde6a79c8128edb9c0edeae5237bbdce7fd47a33ffb114cb6d" -> "sha256:7e1965f21a66eccee54e897014d420a66606fd20c04685fb9220b06d8e27ec80" [label=""];
  "sha256:df0c027e4c482f13f40d8608c1513a44c7e1bc62dcf297782cd8072d566413c2" -> "sha256:7e1965f21a66eccee54e897014d420a66606fd20c04685fb9220b06d8e27ec80" [label=""];
  "sha256:7e1965f21a66eccee54e897014d420a66606fd20c04685fb9220b06d8e27ec80" -> "sha256:20b89a50cbbc4cf7fdf6bf6da62cd37e61f307fb9d7b4e712ca40fbc6ab52806" [label=""];
}

