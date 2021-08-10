[app/sources/203530603.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:680c70f9638c8edc726654d785e3b57b5e8b2784a051072bfc95512ca7ab201e" [label="local://context" shape="ellipse"];
  "sha256:269ad9125c839faa17b467ab1cd51c4b2e386084e1e6550125451d4d19952540" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:9065520f13d871e3c5c2770cd856241745c33d276d9fea2db59a45788425cd8f" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:7a00a59b28247657fbd25f3a867729b96a158c057849721924f2d7680bcce6a4" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:7cf0b64a32d17bf22993b6f717b15f95f470610ed553dc88accf14b7fe5ab499" [label="copy{src=/producer.py, dest=/producer.py}" shape="note"];
  "sha256:03552db431f1655d48f0e22b09c02a25def6faca8dd8c09f6c652fde7c62d4d1" [label="sha256:03552db431f1655d48f0e22b09c02a25def6faca8dd8c09f6c652fde7c62d4d1" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:269ad9125c839faa17b467ab1cd51c4b2e386084e1e6550125451d4d19952540" [label=""];
  "sha256:680c70f9638c8edc726654d785e3b57b5e8b2784a051072bfc95512ca7ab201e" -> "sha256:269ad9125c839faa17b467ab1cd51c4b2e386084e1e6550125451d4d19952540" [label=""];
  "sha256:269ad9125c839faa17b467ab1cd51c4b2e386084e1e6550125451d4d19952540" -> "sha256:9065520f13d871e3c5c2770cd856241745c33d276d9fea2db59a45788425cd8f" [label=""];
  "sha256:9065520f13d871e3c5c2770cd856241745c33d276d9fea2db59a45788425cd8f" -> "sha256:7a00a59b28247657fbd25f3a867729b96a158c057849721924f2d7680bcce6a4" [label=""];
  "sha256:7a00a59b28247657fbd25f3a867729b96a158c057849721924f2d7680bcce6a4" -> "sha256:7cf0b64a32d17bf22993b6f717b15f95f470610ed553dc88accf14b7fe5ab499" [label=""];
  "sha256:680c70f9638c8edc726654d785e3b57b5e8b2784a051072bfc95512ca7ab201e" -> "sha256:7cf0b64a32d17bf22993b6f717b15f95f470610ed553dc88accf14b7fe5ab499" [label=""];
  "sha256:7cf0b64a32d17bf22993b6f717b15f95f470610ed553dc88accf14b7fe5ab499" -> "sha256:03552db431f1655d48f0e22b09c02a25def6faca8dd8c09f6c652fde7c62d4d1" [label=""];
}

