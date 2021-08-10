[app/sources/301481204.Dockerfile]
digraph {
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" [label="docker-image://docker.io/continuumio/miniconda3:latest" shape="ellipse"];
  "sha256:daf5efb11bff27a3eb031e5ec577331466f0347866a73df5e505e584676a19fa" [label="/bin/sh -c apt-get update -qq && apt-get upgrade -qq -y && conda update conda -q -y" shape="box"];
  "sha256:ff39d62caf70a8bb31cc252238ae7cf3652050b44cbe862bd6432f85883df479" [label="mkdir{path=/neurodsp}" shape="note"];
  "sha256:bcef3ff4e16b3b5584ba8fa2f7e4f2cc5ea65114b16b4bd6f51cefd0197bb5fc" [label="local://context" shape="ellipse"];
  "sha256:28b7a77703e425f360c6014e8d69335815a345d21034568c7a3d2082874ac248" [label="copy{src=/requirements.txt, dest=/neurodsp/requirements.txt}" shape="note"];
  "sha256:f29052c952cb457cf7441c9fab1cb384202c7937e11e90d46d48fbdf6c7dc567" [label="copy{src=/setup.py, dest=/neurodsp/setup.py}" shape="note"];
  "sha256:332c99bfed4dd869fd7ee87641af4ddb9284eff55c761cf6cb08c712738c1f9e" [label="/bin/sh -c conda create -n neurodsp python -q -y" shape="box"];
  "sha256:f53edefb7fd68fe22a000d97b9c04c022182053de3ec9a9cb6f1434ef1187ca2" [label="/bin/bash -c source activate neurodsp &&                         pip install -q jupyter &&                         pip install -q -r requirements.txt &&                         python setup.py -q develop" shape="box"];
  "sha256:e6fed0834859d6da4c4585e8cd6fa6b4735e422f5e60889da5c56352ced68453" [label="copy{src=/, dest=/neurodsp}" shape="note"];
  "sha256:20deb706ef766fb9e7e0fa360af04c6c9e8bc5d2b3bdf37d5c6ba9f31c0eac07" [label="sha256:20deb706ef766fb9e7e0fa360af04c6c9e8bc5d2b3bdf37d5c6ba9f31c0eac07" shape="plaintext"];
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" -> "sha256:daf5efb11bff27a3eb031e5ec577331466f0347866a73df5e505e584676a19fa" [label=""];
  "sha256:daf5efb11bff27a3eb031e5ec577331466f0347866a73df5e505e584676a19fa" -> "sha256:ff39d62caf70a8bb31cc252238ae7cf3652050b44cbe862bd6432f85883df479" [label=""];
  "sha256:ff39d62caf70a8bb31cc252238ae7cf3652050b44cbe862bd6432f85883df479" -> "sha256:28b7a77703e425f360c6014e8d69335815a345d21034568c7a3d2082874ac248" [label=""];
  "sha256:bcef3ff4e16b3b5584ba8fa2f7e4f2cc5ea65114b16b4bd6f51cefd0197bb5fc" -> "sha256:28b7a77703e425f360c6014e8d69335815a345d21034568c7a3d2082874ac248" [label=""];
  "sha256:28b7a77703e425f360c6014e8d69335815a345d21034568c7a3d2082874ac248" -> "sha256:f29052c952cb457cf7441c9fab1cb384202c7937e11e90d46d48fbdf6c7dc567" [label=""];
  "sha256:bcef3ff4e16b3b5584ba8fa2f7e4f2cc5ea65114b16b4bd6f51cefd0197bb5fc" -> "sha256:f29052c952cb457cf7441c9fab1cb384202c7937e11e90d46d48fbdf6c7dc567" [label=""];
  "sha256:f29052c952cb457cf7441c9fab1cb384202c7937e11e90d46d48fbdf6c7dc567" -> "sha256:332c99bfed4dd869fd7ee87641af4ddb9284eff55c761cf6cb08c712738c1f9e" [label=""];
  "sha256:332c99bfed4dd869fd7ee87641af4ddb9284eff55c761cf6cb08c712738c1f9e" -> "sha256:f53edefb7fd68fe22a000d97b9c04c022182053de3ec9a9cb6f1434ef1187ca2" [label=""];
  "sha256:f53edefb7fd68fe22a000d97b9c04c022182053de3ec9a9cb6f1434ef1187ca2" -> "sha256:e6fed0834859d6da4c4585e8cd6fa6b4735e422f5e60889da5c56352ced68453" [label=""];
  "sha256:bcef3ff4e16b3b5584ba8fa2f7e4f2cc5ea65114b16b4bd6f51cefd0197bb5fc" -> "sha256:e6fed0834859d6da4c4585e8cd6fa6b4735e422f5e60889da5c56352ced68453" [label=""];
  "sha256:e6fed0834859d6da4c4585e8cd6fa6b4735e422f5e60889da5c56352ced68453" -> "sha256:20deb706ef766fb9e7e0fa360af04c6c9e8bc5d2b3bdf37d5c6ba9f31c0eac07" [label=""];
}

