[app/sources/482605542.Dockerfile]
digraph {
  "sha256:ba2d7e8eaa40a5f29654c905bee98b706d4502f5145afafe2f1b896203e4bfa7" [label="local://context" shape="ellipse"];
  "sha256:1aab200059641ad7f06deeee9efe4d4a851fec7cce6f012680bba6ed633fb6c6" [label="docker-image://docker.io/library/debian:8.3" shape="ellipse"];
  "sha256:51df3cdb1bc8cad46be0acc1a415c9dab4862d1784afeb450f3bbe5042677405" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     curl     libfontconfig" shape="box"];
  "sha256:5ff74343b4324179da46bb77037300b29ac99659230ce2144b6676918d7d1c78" [label="mkdir{path=/decktape}" shape="note"];
  "sha256:55b021a5c08b75d910f7a58e66e8e3a6ac5d6983884a17c45a62a3ad94f02033" [label="copy{src=/libs, dest=/decktape/libs/}" shape="note"];
  "sha256:dbab4540f074c8ddef4b7a36b09aebcf3cf54ac0a19b6b2a41e0d3909f59e5c3" [label="copy{src=/plugins, dest=/decktape/plugins/}" shape="note"];
  "sha256:196a8c41f0d29423f3691f7f2e1aeb91f4e3e4c29594a7ff1624d243bb5aa75f" [label="copy{src=/decktape.js, dest=/decktape/}" shape="note"];
  "sha256:06fe60e10b99af21b29551f357d0dd3904acf1a07ea4a1ab2b5467cacb930cf4" [label="copy{src=/phantomjs.json, dest=/decktape/}" shape="note"];
  "sha256:c4c5ce6e549b8fb0cc1892c4d9524efa2d241025ca68531b21787c3a070b668f" [label="/bin/sh -c mkdir bin" shape="box"];
  "sha256:687087f20d164815a52218685cc9e7f7d879e3ceb49cbe762da6f0bd5e4f5f5f" [label="/bin/sh -c curl -kf     -L https://github.com/astefanutti/decktape/releases/download/v1.0.0/phantomjs-linux-x86-64     -o bin/phantomjs" shape="box"];
  "sha256:57570d2bd5894ff8730c5bf75345031e4904ee93212682bc9726bbd7a1902b6e" [label="/bin/sh -c chmod +x bin/phantomjs" shape="box"];
  "sha256:050241aba0dfde301f01ffc9231324d44e0e23643ce0008a876a99ef817c0177" [label="mkdir{path=/slides}" shape="note"];
  "sha256:9c20db06db0007f6b293c2738a4cde71fe6a7d563b7ac43da1f397f45888123c" [label="sha256:9c20db06db0007f6b293c2738a4cde71fe6a7d563b7ac43da1f397f45888123c" shape="plaintext"];
  "sha256:1aab200059641ad7f06deeee9efe4d4a851fec7cce6f012680bba6ed633fb6c6" -> "sha256:51df3cdb1bc8cad46be0acc1a415c9dab4862d1784afeb450f3bbe5042677405" [label=""];
  "sha256:51df3cdb1bc8cad46be0acc1a415c9dab4862d1784afeb450f3bbe5042677405" -> "sha256:5ff74343b4324179da46bb77037300b29ac99659230ce2144b6676918d7d1c78" [label=""];
  "sha256:5ff74343b4324179da46bb77037300b29ac99659230ce2144b6676918d7d1c78" -> "sha256:55b021a5c08b75d910f7a58e66e8e3a6ac5d6983884a17c45a62a3ad94f02033" [label=""];
  "sha256:ba2d7e8eaa40a5f29654c905bee98b706d4502f5145afafe2f1b896203e4bfa7" -> "sha256:55b021a5c08b75d910f7a58e66e8e3a6ac5d6983884a17c45a62a3ad94f02033" [label=""];
  "sha256:55b021a5c08b75d910f7a58e66e8e3a6ac5d6983884a17c45a62a3ad94f02033" -> "sha256:dbab4540f074c8ddef4b7a36b09aebcf3cf54ac0a19b6b2a41e0d3909f59e5c3" [label=""];
  "sha256:ba2d7e8eaa40a5f29654c905bee98b706d4502f5145afafe2f1b896203e4bfa7" -> "sha256:dbab4540f074c8ddef4b7a36b09aebcf3cf54ac0a19b6b2a41e0d3909f59e5c3" [label=""];
  "sha256:dbab4540f074c8ddef4b7a36b09aebcf3cf54ac0a19b6b2a41e0d3909f59e5c3" -> "sha256:196a8c41f0d29423f3691f7f2e1aeb91f4e3e4c29594a7ff1624d243bb5aa75f" [label=""];
  "sha256:ba2d7e8eaa40a5f29654c905bee98b706d4502f5145afafe2f1b896203e4bfa7" -> "sha256:196a8c41f0d29423f3691f7f2e1aeb91f4e3e4c29594a7ff1624d243bb5aa75f" [label=""];
  "sha256:196a8c41f0d29423f3691f7f2e1aeb91f4e3e4c29594a7ff1624d243bb5aa75f" -> "sha256:06fe60e10b99af21b29551f357d0dd3904acf1a07ea4a1ab2b5467cacb930cf4" [label=""];
  "sha256:ba2d7e8eaa40a5f29654c905bee98b706d4502f5145afafe2f1b896203e4bfa7" -> "sha256:06fe60e10b99af21b29551f357d0dd3904acf1a07ea4a1ab2b5467cacb930cf4" [label=""];
  "sha256:06fe60e10b99af21b29551f357d0dd3904acf1a07ea4a1ab2b5467cacb930cf4" -> "sha256:c4c5ce6e549b8fb0cc1892c4d9524efa2d241025ca68531b21787c3a070b668f" [label=""];
  "sha256:c4c5ce6e549b8fb0cc1892c4d9524efa2d241025ca68531b21787c3a070b668f" -> "sha256:687087f20d164815a52218685cc9e7f7d879e3ceb49cbe762da6f0bd5e4f5f5f" [label=""];
  "sha256:687087f20d164815a52218685cc9e7f7d879e3ceb49cbe762da6f0bd5e4f5f5f" -> "sha256:57570d2bd5894ff8730c5bf75345031e4904ee93212682bc9726bbd7a1902b6e" [label=""];
  "sha256:57570d2bd5894ff8730c5bf75345031e4904ee93212682bc9726bbd7a1902b6e" -> "sha256:050241aba0dfde301f01ffc9231324d44e0e23643ce0008a876a99ef817c0177" [label=""];
  "sha256:050241aba0dfde301f01ffc9231324d44e0e23643ce0008a876a99ef817c0177" -> "sha256:9c20db06db0007f6b293c2738a4cde71fe6a7d563b7ac43da1f397f45888123c" [label=""];
}

