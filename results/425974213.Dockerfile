[app/sources/425974213.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:6343af5493fabe98a9c60f86a0025b7297cce4a540a0c0f31aa62836c52ac706" [label="/bin/sh -c mkdir /home/docker-py" shape="box"];
  "sha256:9801231e6e1d5ad5b5355f1adc900eedec90c4e20be644f10ece30d04f476cca" [label="mkdir{path=/home/docker-py}" shape="note"];
  "sha256:79063022f45642137a5ac13607593b1066cb9ed5ba27d77f9b56d3c5c941bad6" [label="local://context" shape="ellipse"];
  "sha256:5030aff6ca2b0b30234e934aca21690bc22de5bfd42ad48267188eab4c0dbe4a" [label="copy{src=/requirements.txt, dest=/home/docker-py/requirements.txt}" shape="note"];
  "sha256:fb4fcabf9d29e307ffc26f8bb89650569edce02a5e65601061904230c79fef28" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:76927f5a86cd05173c7f4ff9cc5512995e5564f52491d5781cefea94fd2d4e23" [label="copy{src=/test-requirements.txt, dest=/home/docker-py/test-requirements.txt}" shape="note"];
  "sha256:5216dea6f3cd170e7af0d342c5fa69c6b4975b427073d10cecd6ca869646750e" [label="/bin/sh -c pip install -r test-requirements.txt" shape="box"];
  "sha256:b0c892fbbcacc99767187e6f427adfdd28bd93fd0b57ff1a5aec1a84d81c7493" [label="copy{src=/, dest=/home/docker-py}" shape="note"];
  "sha256:ce4872ad03f55b63b0ec75c4e7f34c37ec6155b7104fd250420bb4a806bfef0a" [label="/bin/sh -c pip install ." shape="box"];
  "sha256:e2a67b5e86a14749cf3d3860efa3ea23e99148d7a692b424bd82eb38e2b7a48b" [label="sha256:e2a67b5e86a14749cf3d3860efa3ea23e99148d7a692b424bd82eb38e2b7a48b" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:6343af5493fabe98a9c60f86a0025b7297cce4a540a0c0f31aa62836c52ac706" [label=""];
  "sha256:6343af5493fabe98a9c60f86a0025b7297cce4a540a0c0f31aa62836c52ac706" -> "sha256:9801231e6e1d5ad5b5355f1adc900eedec90c4e20be644f10ece30d04f476cca" [label=""];
  "sha256:9801231e6e1d5ad5b5355f1adc900eedec90c4e20be644f10ece30d04f476cca" -> "sha256:5030aff6ca2b0b30234e934aca21690bc22de5bfd42ad48267188eab4c0dbe4a" [label=""];
  "sha256:79063022f45642137a5ac13607593b1066cb9ed5ba27d77f9b56d3c5c941bad6" -> "sha256:5030aff6ca2b0b30234e934aca21690bc22de5bfd42ad48267188eab4c0dbe4a" [label=""];
  "sha256:5030aff6ca2b0b30234e934aca21690bc22de5bfd42ad48267188eab4c0dbe4a" -> "sha256:fb4fcabf9d29e307ffc26f8bb89650569edce02a5e65601061904230c79fef28" [label=""];
  "sha256:fb4fcabf9d29e307ffc26f8bb89650569edce02a5e65601061904230c79fef28" -> "sha256:76927f5a86cd05173c7f4ff9cc5512995e5564f52491d5781cefea94fd2d4e23" [label=""];
  "sha256:79063022f45642137a5ac13607593b1066cb9ed5ba27d77f9b56d3c5c941bad6" -> "sha256:76927f5a86cd05173c7f4ff9cc5512995e5564f52491d5781cefea94fd2d4e23" [label=""];
  "sha256:76927f5a86cd05173c7f4ff9cc5512995e5564f52491d5781cefea94fd2d4e23" -> "sha256:5216dea6f3cd170e7af0d342c5fa69c6b4975b427073d10cecd6ca869646750e" [label=""];
  "sha256:5216dea6f3cd170e7af0d342c5fa69c6b4975b427073d10cecd6ca869646750e" -> "sha256:b0c892fbbcacc99767187e6f427adfdd28bd93fd0b57ff1a5aec1a84d81c7493" [label=""];
  "sha256:79063022f45642137a5ac13607593b1066cb9ed5ba27d77f9b56d3c5c941bad6" -> "sha256:b0c892fbbcacc99767187e6f427adfdd28bd93fd0b57ff1a5aec1a84d81c7493" [label=""];
  "sha256:b0c892fbbcacc99767187e6f427adfdd28bd93fd0b57ff1a5aec1a84d81c7493" -> "sha256:ce4872ad03f55b63b0ec75c4e7f34c37ec6155b7104fd250420bb4a806bfef0a" [label=""];
  "sha256:ce4872ad03f55b63b0ec75c4e7f34c37ec6155b7104fd250420bb4a806bfef0a" -> "sha256:e2a67b5e86a14749cf3d3860efa3ea23e99148d7a692b424bd82eb38e2b7a48b" [label=""];
}

