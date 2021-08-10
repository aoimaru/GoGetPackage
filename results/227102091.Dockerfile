[app/sources/227102091.Dockerfile]
digraph {
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:54a519d449e43d6bf41a7d7365e957c7ffc90e4d72716da105a0afef0f8b928c" [label="local://context" shape="ellipse"];
  "sha256:af8917fdaa7976ad615b30ac0d87fbafe83fbb0a4ffde0bfa6a9671cca514f76" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:457e941ceb3296484901310478703d029eae0ababb836b6574a085a3cf80233f" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:ea8fc2407d5a3c997bf475d46785e72a598748ccce003dcee7d1d8897eee1490" [label="copy{src=/bot.py, dest=/}" shape="note"];
  "sha256:ca02841c13435a7622d5bf04a846f00848266f996b3646298749e7c35d4d9b6b" [label="/bin/sh -c chmod a+x /bot.py" shape="box"];
  "sha256:613ee5e035b9143c19b43a848cedc255fcd96ce95cf9345ecc504787dfd8452e" [label="sha256:613ee5e035b9143c19b43a848cedc255fcd96ce95cf9345ecc504787dfd8452e" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:af8917fdaa7976ad615b30ac0d87fbafe83fbb0a4ffde0bfa6a9671cca514f76" [label=""];
  "sha256:54a519d449e43d6bf41a7d7365e957c7ffc90e4d72716da105a0afef0f8b928c" -> "sha256:af8917fdaa7976ad615b30ac0d87fbafe83fbb0a4ffde0bfa6a9671cca514f76" [label=""];
  "sha256:af8917fdaa7976ad615b30ac0d87fbafe83fbb0a4ffde0bfa6a9671cca514f76" -> "sha256:457e941ceb3296484901310478703d029eae0ababb836b6574a085a3cf80233f" [label=""];
  "sha256:457e941ceb3296484901310478703d029eae0ababb836b6574a085a3cf80233f" -> "sha256:ea8fc2407d5a3c997bf475d46785e72a598748ccce003dcee7d1d8897eee1490" [label=""];
  "sha256:54a519d449e43d6bf41a7d7365e957c7ffc90e4d72716da105a0afef0f8b928c" -> "sha256:ea8fc2407d5a3c997bf475d46785e72a598748ccce003dcee7d1d8897eee1490" [label=""];
  "sha256:ea8fc2407d5a3c997bf475d46785e72a598748ccce003dcee7d1d8897eee1490" -> "sha256:ca02841c13435a7622d5bf04a846f00848266f996b3646298749e7c35d4d9b6b" [label=""];
  "sha256:ca02841c13435a7622d5bf04a846f00848266f996b3646298749e7c35d4d9b6b" -> "sha256:613ee5e035b9143c19b43a848cedc255fcd96ce95cf9345ecc504787dfd8452e" [label=""];
}

