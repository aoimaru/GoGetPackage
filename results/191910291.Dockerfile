[app/sources/191910291.Dockerfile]
digraph {
  "sha256:14ed20f270e34e28a176be91cf64e0cc7162a6b12e3f58e5b9db45ab30f2b50d" [label="docker-image://docker.io/pollendina/debianopenssl:jessie" shape="ellipse"];
  "sha256:f911d8f6d4b55d0f3a1486f56d71ba6eb650c50dd5fa9d569c4024f1ef40583d" [label="local://context" shape="ellipse"];
  "sha256:b7da1dd2f221e94a5b015fbfe1910c303a34eb8c0d42fef02a8d17e197e792cb" [label="copy{src=/, dest=/pollendina/}" shape="note"];
  "sha256:a1a1386ca56a6979337b559623a39165b45e0dfe3e4be882f41b41433e49645b" [label="mkdir{path=/pollendina}" shape="note"];
  "sha256:87b91717cf3696817400aa8e2ec3fbad602ca99f900b2b7fd2476682a02e247c" [label="/bin/sh -c apt-get install -y golang-go && go build -v && mv pollendina /usr/bin/pollendina && apt-get remove -y golang-go" shape="box"];
  "sha256:90129f2be33809aae81e24507799fea8517f7cbe72cda6a13a91be3b55e08006" [label="sha256:90129f2be33809aae81e24507799fea8517f7cbe72cda6a13a91be3b55e08006" shape="plaintext"];
  "sha256:14ed20f270e34e28a176be91cf64e0cc7162a6b12e3f58e5b9db45ab30f2b50d" -> "sha256:b7da1dd2f221e94a5b015fbfe1910c303a34eb8c0d42fef02a8d17e197e792cb" [label=""];
  "sha256:f911d8f6d4b55d0f3a1486f56d71ba6eb650c50dd5fa9d569c4024f1ef40583d" -> "sha256:b7da1dd2f221e94a5b015fbfe1910c303a34eb8c0d42fef02a8d17e197e792cb" [label=""];
  "sha256:b7da1dd2f221e94a5b015fbfe1910c303a34eb8c0d42fef02a8d17e197e792cb" -> "sha256:a1a1386ca56a6979337b559623a39165b45e0dfe3e4be882f41b41433e49645b" [label=""];
  "sha256:a1a1386ca56a6979337b559623a39165b45e0dfe3e4be882f41b41433e49645b" -> "sha256:87b91717cf3696817400aa8e2ec3fbad602ca99f900b2b7fd2476682a02e247c" [label=""];
  "sha256:87b91717cf3696817400aa8e2ec3fbad602ca99f900b2b7fd2476682a02e247c" -> "sha256:90129f2be33809aae81e24507799fea8517f7cbe72cda6a13a91be3b55e08006" [label=""];
}

