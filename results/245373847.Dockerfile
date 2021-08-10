[app/sources/245373847.Dockerfile]
digraph {
  "sha256:10304816f82b0e3c7a346e3274e9be06e5e9f4946665499f1ae10f743e2b0b13" [label="local://context" shape="ellipse"];
  "sha256:56861544bcdbe2e0f4b4999ada8a84665a2d8cf10a3e4f6cfdbdd66a8e05e124" [label="copy{src=/ep, dest=/ep}" shape="note"];
  "sha256:6de81706624bde52e72eca28ae5980ed8888fa5f9aa4732071a2176d93d93515" [label="copy{src=/ep, dest=/ep-2}" shape="note"];
  "sha256:cd502d7ffedbce72d806bca0cdce89600672733297ec4e43ffc7bb0215c11f9d" [label="sha256:cd502d7ffedbce72d806bca0cdce89600672733297ec4e43ffc7bb0215c11f9d" shape="plaintext"];
  "sha256:10304816f82b0e3c7a346e3274e9be06e5e9f4946665499f1ae10f743e2b0b13" -> "sha256:56861544bcdbe2e0f4b4999ada8a84665a2d8cf10a3e4f6cfdbdd66a8e05e124" [label=""];
  "sha256:56861544bcdbe2e0f4b4999ada8a84665a2d8cf10a3e4f6cfdbdd66a8e05e124" -> "sha256:6de81706624bde52e72eca28ae5980ed8888fa5f9aa4732071a2176d93d93515" [label=""];
  "sha256:10304816f82b0e3c7a346e3274e9be06e5e9f4946665499f1ae10f743e2b0b13" -> "sha256:6de81706624bde52e72eca28ae5980ed8888fa5f9aa4732071a2176d93d93515" [label=""];
  "sha256:6de81706624bde52e72eca28ae5980ed8888fa5f9aa4732071a2176d93d93515" -> "sha256:cd502d7ffedbce72d806bca0cdce89600672733297ec4e43ffc7bb0215c11f9d" [label=""];
}

