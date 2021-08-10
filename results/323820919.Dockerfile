[app/sources/323820919.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:30b4444c50e7bc8a10f42e35fb66371a0db763689b31963d1d345a5f1b63f045" [label="local://context" shape="ellipse"];
  "sha256:338c6811e670c0cc8a0df7bbd0dc48af02e4590695ceb96480f20f1c38e68fc3" [label="copy{src=/regist.jar, dest=/app.jar}" shape="note"];
  "sha256:9cdb313eeb03ceabe0e3cda1dab02c08accfe23514171c1f522deaf05ae8ad41" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:0e85537095d67c0e444ce2254481d8d5d80920373409675eb845274793359573" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:b6218bf814254469288478b943ef1c2cf450171b530822addc86d37652b399b7" [label="sha256:b6218bf814254469288478b943ef1c2cf450171b530822addc86d37652b399b7" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:338c6811e670c0cc8a0df7bbd0dc48af02e4590695ceb96480f20f1c38e68fc3" [label=""];
  "sha256:30b4444c50e7bc8a10f42e35fb66371a0db763689b31963d1d345a5f1b63f045" -> "sha256:338c6811e670c0cc8a0df7bbd0dc48af02e4590695ceb96480f20f1c38e68fc3" [label=""];
  "sha256:338c6811e670c0cc8a0df7bbd0dc48af02e4590695ceb96480f20f1c38e68fc3" -> "sha256:9cdb313eeb03ceabe0e3cda1dab02c08accfe23514171c1f522deaf05ae8ad41" [label=""];
  "sha256:9cdb313eeb03ceabe0e3cda1dab02c08accfe23514171c1f522deaf05ae8ad41" -> "sha256:0e85537095d67c0e444ce2254481d8d5d80920373409675eb845274793359573" [label=""];
  "sha256:0e85537095d67c0e444ce2254481d8d5d80920373409675eb845274793359573" -> "sha256:b6218bf814254469288478b943ef1c2cf450171b530822addc86d37652b399b7" [label=""];
}

