[app/sources/269863074.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:c739f4f4819384d91b60dd4acf215e759a9c4cafc6f26e0b8ba66e2b87bf3344" [label="local://context" shape="ellipse"];
  "sha256:66b3f5ec23070b8c07e30a6a628eec0111481a4b75f0436bf428842042cb3b84" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:f525dfe4db8737212d2198e5fa6ca667ca7c7310ad70573cce1c2811c5bdd7ed" [label="mkdir{path=/app}" shape="note"];
  "sha256:a95f7ef0d14ce627824df08aef596e4ae7f345cae797284562d7ac825114d435" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:d04c173d4dae74a69915d4047693dd5af6c23fb62b9fefd3097a82dd1e5a2966" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:5e2b84725793c533f1ada9e8d89e9a194a2ca91473b5608eb60009f9705f2c04" [label="sha256:5e2b84725793c533f1ada9e8d89e9a194a2ca91473b5608eb60009f9705f2c04" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:66b3f5ec23070b8c07e30a6a628eec0111481a4b75f0436bf428842042cb3b84" [label=""];
  "sha256:c739f4f4819384d91b60dd4acf215e759a9c4cafc6f26e0b8ba66e2b87bf3344" -> "sha256:66b3f5ec23070b8c07e30a6a628eec0111481a4b75f0436bf428842042cb3b84" [label=""];
  "sha256:66b3f5ec23070b8c07e30a6a628eec0111481a4b75f0436bf428842042cb3b84" -> "sha256:f525dfe4db8737212d2198e5fa6ca667ca7c7310ad70573cce1c2811c5bdd7ed" [label=""];
  "sha256:f525dfe4db8737212d2198e5fa6ca667ca7c7310ad70573cce1c2811c5bdd7ed" -> "sha256:a95f7ef0d14ce627824df08aef596e4ae7f345cae797284562d7ac825114d435" [label=""];
  "sha256:a95f7ef0d14ce627824df08aef596e4ae7f345cae797284562d7ac825114d435" -> "sha256:d04c173d4dae74a69915d4047693dd5af6c23fb62b9fefd3097a82dd1e5a2966" [label=""];
  "sha256:d04c173d4dae74a69915d4047693dd5af6c23fb62b9fefd3097a82dd1e5a2966" -> "sha256:5e2b84725793c533f1ada9e8d89e9a194a2ca91473b5608eb60009f9705f2c04" [label=""];
}

