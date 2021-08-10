[app/sources/288514803.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:93b6b2cd74ceafbcbb1db65c9bed4146a80a99c45adcbf595bfbd3785543d166" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10" shape="box"];
  "sha256:f4846da3264cef8efbd502b0876b7dfba2a5520b8a2dd9fb4826c7a9aaf949b3" [label="/bin/sh -c echo \"deb http://repo.mongodb.org/apt/ubuntu \"$(lsb_release -sc)\"/mongodb-org/3.0 multiverse\" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list" shape="box"];
  "sha256:d01c9d672067cada42e0be84f4f2e701f5365959dad6967218c2b997cd39e168" [label="/bin/sh -c apt-get update && apt-get install -y mongodb-org" shape="box"];
  "sha256:e4ddec8e308217733b56a76ce9b058730b3f148c39f0f593c5904a5eb362f05c" [label="/bin/sh -c mkdir -p /data/db" shape="box"];
  "sha256:3d55ecc286be34c7a10137da0af76505f34c5d6490de599e6db495fbadc99327" [label="sha256:3d55ecc286be34c7a10137da0af76505f34c5d6490de599e6db495fbadc99327" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:93b6b2cd74ceafbcbb1db65c9bed4146a80a99c45adcbf595bfbd3785543d166" [label=""];
  "sha256:93b6b2cd74ceafbcbb1db65c9bed4146a80a99c45adcbf595bfbd3785543d166" -> "sha256:f4846da3264cef8efbd502b0876b7dfba2a5520b8a2dd9fb4826c7a9aaf949b3" [label=""];
  "sha256:f4846da3264cef8efbd502b0876b7dfba2a5520b8a2dd9fb4826c7a9aaf949b3" -> "sha256:d01c9d672067cada42e0be84f4f2e701f5365959dad6967218c2b997cd39e168" [label=""];
  "sha256:d01c9d672067cada42e0be84f4f2e701f5365959dad6967218c2b997cd39e168" -> "sha256:e4ddec8e308217733b56a76ce9b058730b3f148c39f0f593c5904a5eb362f05c" [label=""];
  "sha256:e4ddec8e308217733b56a76ce9b058730b3f148c39f0f593c5904a5eb362f05c" -> "sha256:3d55ecc286be34c7a10137da0af76505f34c5d6490de599e6db495fbadc99327" [label=""];
}

