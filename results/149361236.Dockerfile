[app/sources/149361236.Dockerfile]
digraph {
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:96e81c5263a0c795cf058a64aee9089444e4d22bc3b6de99f4102ed31d69eeb6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c936da81ad181ab88edb0abec48a181609ceb3e618eaef4d06cc96435bec3b41" [label="/bin/sh -c apt-get install -y vim wget curl git" shape="box"];
  "sha256:2999c3ef3a7b2236da2a64d666025bacc1e9ff57d6c7ab20bf22ebd4435cdcf2" [label="/bin/sh -c git clone https://github.com/conekta/conekta-python.git" shape="box"];
  "sha256:084d51afa700fece2c8940d3b49ce11c79b70f5abde78d731694e26ae8c5fe56" [label="mkdir{path=/conekta-python}" shape="note"];
  "sha256:0a2ea18ac937acb2bb252d0512df875c3acab394dba0b31e860535079668b2a1" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:a0a50fdcc8473f80c3fff88cad0f0aa31435bd1e53f8c714ace1bb3d0681a6b3" [label="sha256:a0a50fdcc8473f80c3fff88cad0f0aa31435bd1e53f8c714ace1bb3d0681a6b3" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:96e81c5263a0c795cf058a64aee9089444e4d22bc3b6de99f4102ed31d69eeb6" [label=""];
  "sha256:96e81c5263a0c795cf058a64aee9089444e4d22bc3b6de99f4102ed31d69eeb6" -> "sha256:c936da81ad181ab88edb0abec48a181609ceb3e618eaef4d06cc96435bec3b41" [label=""];
  "sha256:c936da81ad181ab88edb0abec48a181609ceb3e618eaef4d06cc96435bec3b41" -> "sha256:2999c3ef3a7b2236da2a64d666025bacc1e9ff57d6c7ab20bf22ebd4435cdcf2" [label=""];
  "sha256:2999c3ef3a7b2236da2a64d666025bacc1e9ff57d6c7ab20bf22ebd4435cdcf2" -> "sha256:084d51afa700fece2c8940d3b49ce11c79b70f5abde78d731694e26ae8c5fe56" [label=""];
  "sha256:084d51afa700fece2c8940d3b49ce11c79b70f5abde78d731694e26ae8c5fe56" -> "sha256:0a2ea18ac937acb2bb252d0512df875c3acab394dba0b31e860535079668b2a1" [label=""];
  "sha256:0a2ea18ac937acb2bb252d0512df875c3acab394dba0b31e860535079668b2a1" -> "sha256:a0a50fdcc8473f80c3fff88cad0f0aa31435bd1e53f8c714ace1bb3d0681a6b3" [label=""];
}

