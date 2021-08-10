[app/sources/236048610.Dockerfile]
digraph {
  "sha256:25244a6073cdde1d150ff90ebf762814e51b05e2d279192e1a41e6f9ef590d07" [label="local://context" shape="ellipse"];
  "sha256:206159b160bee9141bc81da6b2bb3f890740dd18d8dd0f58b1b108283d7d51e2" [label="docker-image://docker.io/tbeadle/gunicorn-nginx:3.7" shape="ellipse"];
  "sha256:226019d56655e1b45c941305e412d881812caa74a3372e6519b72417fb460354" [label="copy{src=/build_app.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:3fc4a7b21dd2d843a6ad5f617f394ed999db788eb68ff2d9804a872e1b1a6320" [label="copy{src=/run_webpack.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:d3d4397ad69933661298c80cdde226afb76e7c06fe34d4fc7eec076d51fc0f7a" [label="sha256:d3d4397ad69933661298c80cdde226afb76e7c06fe34d4fc7eec076d51fc0f7a" shape="plaintext"];
  "sha256:206159b160bee9141bc81da6b2bb3f890740dd18d8dd0f58b1b108283d7d51e2" -> "sha256:226019d56655e1b45c941305e412d881812caa74a3372e6519b72417fb460354" [label=""];
  "sha256:25244a6073cdde1d150ff90ebf762814e51b05e2d279192e1a41e6f9ef590d07" -> "sha256:226019d56655e1b45c941305e412d881812caa74a3372e6519b72417fb460354" [label=""];
  "sha256:226019d56655e1b45c941305e412d881812caa74a3372e6519b72417fb460354" -> "sha256:3fc4a7b21dd2d843a6ad5f617f394ed999db788eb68ff2d9804a872e1b1a6320" [label=""];
  "sha256:25244a6073cdde1d150ff90ebf762814e51b05e2d279192e1a41e6f9ef590d07" -> "sha256:3fc4a7b21dd2d843a6ad5f617f394ed999db788eb68ff2d9804a872e1b1a6320" [label=""];
  "sha256:3fc4a7b21dd2d843a6ad5f617f394ed999db788eb68ff2d9804a872e1b1a6320" -> "sha256:d3d4397ad69933661298c80cdde226afb76e7c06fe34d4fc7eec076d51fc0f7a" [label=""];
}

