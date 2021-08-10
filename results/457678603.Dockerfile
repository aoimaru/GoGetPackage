[app/sources/457678603.Dockerfile]
digraph {
  "sha256:ad6a5b5bcc2cb9dbfc115e6183ab9fbf847e82834a22cd6a002a318f9ef6acdb" [label="local://context" shape="ellipse"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:b8439dbe5ef7626fa7ea6a574b0af35c15dd35318e176f5aade50829f238e960" [label="/bin/sh -c apt update && apt install -y python3 python3-dev python3-pip tor locales nano sqlite3" shape="box"];
  "sha256:d6131939c6bd6093823b34821587b80f4574062b4e3d5e90706792fc01117296" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     locale-gen" shape="box"];
  "sha256:15fe020695c7e7fa310314f8c26a46d729dee707ed791750a2ccbd41ff22b33b" [label="mkdir{path=/srv}" shape="note"];
  "sha256:228979e42493b668230d651cd1d9eb8c33e336c5bfb4ed1de536fcb3a3f5894c" [label="copy{src=/requirements.txt, dest=/srv/requirements.txt}" shape="note"];
  "sha256:8646ee88776a30d432bfc3a6913739d0c71acbbb274643611a9ec6ba75f68edb" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:a70d230a89254518654845b8cebea9a4066aa199e38bf088fedd0adac877427d" [label="mkdir{path=/root}" shape="note"];
  "sha256:025e46c9f728b7f6b7fe9be11560564e0352e4e694006fd67d6a478db407341f" [label="copy{src=/, dest=/root/}" shape="note"];
  "sha256:2265ad1c982e1e5312c649547ac0e30f62768ad8c99b4e8e0e587f9c02755d4e" [label="sha256:2265ad1c982e1e5312c649547ac0e30f62768ad8c99b4e8e0e587f9c02755d4e" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:b8439dbe5ef7626fa7ea6a574b0af35c15dd35318e176f5aade50829f238e960" [label=""];
  "sha256:b8439dbe5ef7626fa7ea6a574b0af35c15dd35318e176f5aade50829f238e960" -> "sha256:d6131939c6bd6093823b34821587b80f4574062b4e3d5e90706792fc01117296" [label=""];
  "sha256:d6131939c6bd6093823b34821587b80f4574062b4e3d5e90706792fc01117296" -> "sha256:15fe020695c7e7fa310314f8c26a46d729dee707ed791750a2ccbd41ff22b33b" [label=""];
  "sha256:15fe020695c7e7fa310314f8c26a46d729dee707ed791750a2ccbd41ff22b33b" -> "sha256:228979e42493b668230d651cd1d9eb8c33e336c5bfb4ed1de536fcb3a3f5894c" [label=""];
  "sha256:ad6a5b5bcc2cb9dbfc115e6183ab9fbf847e82834a22cd6a002a318f9ef6acdb" -> "sha256:228979e42493b668230d651cd1d9eb8c33e336c5bfb4ed1de536fcb3a3f5894c" [label=""];
  "sha256:228979e42493b668230d651cd1d9eb8c33e336c5bfb4ed1de536fcb3a3f5894c" -> "sha256:8646ee88776a30d432bfc3a6913739d0c71acbbb274643611a9ec6ba75f68edb" [label=""];
  "sha256:8646ee88776a30d432bfc3a6913739d0c71acbbb274643611a9ec6ba75f68edb" -> "sha256:a70d230a89254518654845b8cebea9a4066aa199e38bf088fedd0adac877427d" [label=""];
  "sha256:a70d230a89254518654845b8cebea9a4066aa199e38bf088fedd0adac877427d" -> "sha256:025e46c9f728b7f6b7fe9be11560564e0352e4e694006fd67d6a478db407341f" [label=""];
  "sha256:ad6a5b5bcc2cb9dbfc115e6183ab9fbf847e82834a22cd6a002a318f9ef6acdb" -> "sha256:025e46c9f728b7f6b7fe9be11560564e0352e4e694006fd67d6a478db407341f" [label=""];
  "sha256:025e46c9f728b7f6b7fe9be11560564e0352e4e694006fd67d6a478db407341f" -> "sha256:2265ad1c982e1e5312c649547ac0e30f62768ad8c99b4e8e0e587f9c02755d4e" [label=""];
}

