[app/sources/193311295.Dockerfile]
digraph {
  "sha256:043e4a7a2f10cbc0f17f709cee1d0a5cfc091a99f45f588727fff35562dffb2b" [label="docker-image://docker.io/library/perl:latest" shape="ellipse"];
  "sha256:21af508a9f76a79daab6b892b7f159433c339d1bf4f738e820f2dfa0423fb899" [label="/bin/sh -c groupadd glot" shape="box"];
  "sha256:5ecc81614b8c3cbf07dff80154c1d13d4a7b8aadbe003dbe1e54572c46d8c9c3" [label="/bin/sh -c useradd -m -d /home/glot -g glot -s /bin/bash glot" shape="box"];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" [label="https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner" shape="ellipse"];
  "sha256:cb5a94d748cc7798f29555c6105c3775bc5a55aaeb4df4c893d25276da40cf8c" [label="copy{src=/runner, dest=/home/glot/runner}" shape="note"];
  "sha256:a28f1de518d496c5a5cb954a26785bb99198351e88ee6046fee669245fd26e07" [label="/bin/sh -c chmod +x /home/glot/runner" shape="box"];
  "sha256:caf3a6b9fde480b3108f5b4e64400109913ed07d0729a992723ddc472cb300ae" [label="mkdir{path=/home/glot}" shape="note"];
  "sha256:cf619ee52246559f51653d6986b46a46f705ccd4ec65752ab0fcbf6b13e2c02c" [label="sha256:cf619ee52246559f51653d6986b46a46f705ccd4ec65752ab0fcbf6b13e2c02c" shape="plaintext"];
  "sha256:043e4a7a2f10cbc0f17f709cee1d0a5cfc091a99f45f588727fff35562dffb2b" -> "sha256:21af508a9f76a79daab6b892b7f159433c339d1bf4f738e820f2dfa0423fb899" [label=""];
  "sha256:21af508a9f76a79daab6b892b7f159433c339d1bf4f738e820f2dfa0423fb899" -> "sha256:5ecc81614b8c3cbf07dff80154c1d13d4a7b8aadbe003dbe1e54572c46d8c9c3" [label=""];
  "sha256:5ecc81614b8c3cbf07dff80154c1d13d4a7b8aadbe003dbe1e54572c46d8c9c3" -> "sha256:cb5a94d748cc7798f29555c6105c3775bc5a55aaeb4df4c893d25276da40cf8c" [label=""];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" -> "sha256:cb5a94d748cc7798f29555c6105c3775bc5a55aaeb4df4c893d25276da40cf8c" [label=""];
  "sha256:cb5a94d748cc7798f29555c6105c3775bc5a55aaeb4df4c893d25276da40cf8c" -> "sha256:a28f1de518d496c5a5cb954a26785bb99198351e88ee6046fee669245fd26e07" [label=""];
  "sha256:a28f1de518d496c5a5cb954a26785bb99198351e88ee6046fee669245fd26e07" -> "sha256:caf3a6b9fde480b3108f5b4e64400109913ed07d0729a992723ddc472cb300ae" [label=""];
  "sha256:caf3a6b9fde480b3108f5b4e64400109913ed07d0729a992723ddc472cb300ae" -> "sha256:cf619ee52246559f51653d6986b46a46f705ccd4ec65752ab0fcbf6b13e2c02c" [label=""];
}

