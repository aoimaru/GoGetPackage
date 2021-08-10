[app/sources/284100382.Dockerfile]
digraph {
  "sha256:7937a2ba35175687eb9eb7915bcc617d614a20688b8c6a8bbc4d01b42bb86087" [label="docker-image://docker.io/library/python:3.6.3" shape="ellipse"];
  "sha256:f778f82aa14950d286e9d77a7a528cfaa43eb3bf88f806d6dd2abda00e4d1312" [label="/bin/sh -c apt-get update -yqq   && apt-get install -yqq --no-install-recommends     netcat   && apt-get -q clean" shape="box"];
  "sha256:e52e42adafa183c6004e926d7bc88e3f41793ad46d048ad90ac1a9f09befd879" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:c4e377ed9010f025004440d13ab4c1b55cb42c81f5416fe0af340eec5122af4d" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ba505c5b1c3d1191e8c79d0bcbc662f67fbcf067967cb4de0772fa02bca8c9db" [label="local://context" shape="ellipse"];
  "sha256:7524348f47a407441f2248379628f4a65c9a9cab2c50a8c57df3c0dcb3a547c0" [label="copy{src=/requirements.txt, dest=/usr/src/app/requirements.txt}" shape="note"];
  "sha256:606d93593d7efdd6112fad67729fa9c47b29d3b3cf31d647e09a228cca416d9e" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:167817b9a9207cd01946214c0d1e00304d7e4de55bbbdcea46ce404dda9e11f4" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:ce3556672f49513d78ab8217609e8b498d1617955eb4fc89fb5e964ab95e7e1e" [label="sha256:ce3556672f49513d78ab8217609e8b498d1617955eb4fc89fb5e964ab95e7e1e" shape="plaintext"];
  "sha256:7937a2ba35175687eb9eb7915bcc617d614a20688b8c6a8bbc4d01b42bb86087" -> "sha256:f778f82aa14950d286e9d77a7a528cfaa43eb3bf88f806d6dd2abda00e4d1312" [label=""];
  "sha256:f778f82aa14950d286e9d77a7a528cfaa43eb3bf88f806d6dd2abda00e4d1312" -> "sha256:e52e42adafa183c6004e926d7bc88e3f41793ad46d048ad90ac1a9f09befd879" [label=""];
  "sha256:e52e42adafa183c6004e926d7bc88e3f41793ad46d048ad90ac1a9f09befd879" -> "sha256:c4e377ed9010f025004440d13ab4c1b55cb42c81f5416fe0af340eec5122af4d" [label=""];
  "sha256:c4e377ed9010f025004440d13ab4c1b55cb42c81f5416fe0af340eec5122af4d" -> "sha256:7524348f47a407441f2248379628f4a65c9a9cab2c50a8c57df3c0dcb3a547c0" [label=""];
  "sha256:ba505c5b1c3d1191e8c79d0bcbc662f67fbcf067967cb4de0772fa02bca8c9db" -> "sha256:7524348f47a407441f2248379628f4a65c9a9cab2c50a8c57df3c0dcb3a547c0" [label=""];
  "sha256:7524348f47a407441f2248379628f4a65c9a9cab2c50a8c57df3c0dcb3a547c0" -> "sha256:606d93593d7efdd6112fad67729fa9c47b29d3b3cf31d647e09a228cca416d9e" [label=""];
  "sha256:606d93593d7efdd6112fad67729fa9c47b29d3b3cf31d647e09a228cca416d9e" -> "sha256:167817b9a9207cd01946214c0d1e00304d7e4de55bbbdcea46ce404dda9e11f4" [label=""];
  "sha256:ba505c5b1c3d1191e8c79d0bcbc662f67fbcf067967cb4de0772fa02bca8c9db" -> "sha256:167817b9a9207cd01946214c0d1e00304d7e4de55bbbdcea46ce404dda9e11f4" [label=""];
  "sha256:167817b9a9207cd01946214c0d1e00304d7e4de55bbbdcea46ce404dda9e11f4" -> "sha256:ce3556672f49513d78ab8217609e8b498d1617955eb4fc89fb5e964ab95e7e1e" [label=""];
}

