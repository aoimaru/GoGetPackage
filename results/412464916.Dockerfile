[app/sources/412464916.Dockerfile]
digraph {
  "sha256:12885f025812963930936fe71c265746dacda4dc22af4c1323ebd35263bcbb7f" [label="local://context" shape="ellipse"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:850f58d6c95308c30449b2ce45f1e7d47acafb44e52f4ed7f278d853757d3e53" [label="copy{src=/requirements.txt, dest=/nta/nupic.vision/requirements.txt}" shape="note"];
  "sha256:b92979c6bad3171624e474fd8630a346838f75751f0cd0fc9adfc25bccce2f07" [label="/bin/sh -c pip install -r /nta/nupic.vision/requirements.txt" shape="box"];
  "sha256:f43b0fc93e7591a14f171634c527e8e604a526587d91e30c0be7f02823e7204f" [label="copy{src=/src/nupic/vision/mnist, dest=/nta/nupic.vision/src/nupic/vision/mnist}" shape="note"];
  "sha256:1a49a6a2450414294f29972a059064ce6ac537d53895f2dcb94b68d5c7abe719" [label="mkdir{path=/nta/nupic.vision/src/nupic/vision/mnist}" shape="note"];
  "sha256:ae3a555919b8b7bbd9596a04c5071bd0329a9b49a33416862dca4c49f352ccd5" [label="/bin/sh -c ./extract_mnist.sh" shape="box"];
  "sha256:874e259c89a66065a8b6ed920512aa1a03f8c68b913239f6e0405e7bff01d559" [label="/bin/sh -c mkdir -p /nta/nupic.vision/data/mnist     && mv mnist_extraction_source/training /nta/nupic.vision/data/mnist/     && mv mnist_extraction_source/testing /nta/nupic.vision/data/mnist/     && python ./convertImages.py /nta/nupic.vision/data/mnist     && ./create_training_sample.sh /nta/nupic.vision/data/mnist" shape="box"];
  "sha256:643ea09aec6fa76eab8880df7c645866e2bf8f7ec465f7054afcbc70a2441ea0" [label="copy{src=/, dest=/nta/nupic.vision/}" shape="note"];
  "sha256:55df2551ff7d1af6543d463999412338e36ba217f50132a46c6359442081d10f" [label="mkdir{path=/nta/nupic.vision}" shape="note"];
  "sha256:e907f7b4bea5212c46a2b2ed25bfc8f117fee393f429ec5b5ec50e1c319435fa" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:c3153f6ad6707eb254c7b23cb6a3cb1fc9f99bc2a874dac847e4ea21d0e7cf4d" [label="mkdir{path=/nta/nupic.vision}" shape="note"];
  "sha256:d5e645147fc2a02185a04aa704ffff93f285bc80b0eb24c9acb46b5c1887d3cc" [label="sha256:d5e645147fc2a02185a04aa704ffff93f285bc80b0eb24c9acb46b5c1887d3cc" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:850f58d6c95308c30449b2ce45f1e7d47acafb44e52f4ed7f278d853757d3e53" [label=""];
  "sha256:12885f025812963930936fe71c265746dacda4dc22af4c1323ebd35263bcbb7f" -> "sha256:850f58d6c95308c30449b2ce45f1e7d47acafb44e52f4ed7f278d853757d3e53" [label=""];
  "sha256:850f58d6c95308c30449b2ce45f1e7d47acafb44e52f4ed7f278d853757d3e53" -> "sha256:b92979c6bad3171624e474fd8630a346838f75751f0cd0fc9adfc25bccce2f07" [label=""];
  "sha256:b92979c6bad3171624e474fd8630a346838f75751f0cd0fc9adfc25bccce2f07" -> "sha256:f43b0fc93e7591a14f171634c527e8e604a526587d91e30c0be7f02823e7204f" [label=""];
  "sha256:12885f025812963930936fe71c265746dacda4dc22af4c1323ebd35263bcbb7f" -> "sha256:f43b0fc93e7591a14f171634c527e8e604a526587d91e30c0be7f02823e7204f" [label=""];
  "sha256:f43b0fc93e7591a14f171634c527e8e604a526587d91e30c0be7f02823e7204f" -> "sha256:1a49a6a2450414294f29972a059064ce6ac537d53895f2dcb94b68d5c7abe719" [label=""];
  "sha256:1a49a6a2450414294f29972a059064ce6ac537d53895f2dcb94b68d5c7abe719" -> "sha256:ae3a555919b8b7bbd9596a04c5071bd0329a9b49a33416862dca4c49f352ccd5" [label=""];
  "sha256:ae3a555919b8b7bbd9596a04c5071bd0329a9b49a33416862dca4c49f352ccd5" -> "sha256:874e259c89a66065a8b6ed920512aa1a03f8c68b913239f6e0405e7bff01d559" [label=""];
  "sha256:874e259c89a66065a8b6ed920512aa1a03f8c68b913239f6e0405e7bff01d559" -> "sha256:643ea09aec6fa76eab8880df7c645866e2bf8f7ec465f7054afcbc70a2441ea0" [label=""];
  "sha256:12885f025812963930936fe71c265746dacda4dc22af4c1323ebd35263bcbb7f" -> "sha256:643ea09aec6fa76eab8880df7c645866e2bf8f7ec465f7054afcbc70a2441ea0" [label=""];
  "sha256:643ea09aec6fa76eab8880df7c645866e2bf8f7ec465f7054afcbc70a2441ea0" -> "sha256:55df2551ff7d1af6543d463999412338e36ba217f50132a46c6359442081d10f" [label=""];
  "sha256:55df2551ff7d1af6543d463999412338e36ba217f50132a46c6359442081d10f" -> "sha256:e907f7b4bea5212c46a2b2ed25bfc8f117fee393f429ec5b5ec50e1c319435fa" [label=""];
  "sha256:e907f7b4bea5212c46a2b2ed25bfc8f117fee393f429ec5b5ec50e1c319435fa" -> "sha256:c3153f6ad6707eb254c7b23cb6a3cb1fc9f99bc2a874dac847e4ea21d0e7cf4d" [label=""];
  "sha256:c3153f6ad6707eb254c7b23cb6a3cb1fc9f99bc2a874dac847e4ea21d0e7cf4d" -> "sha256:d5e645147fc2a02185a04aa704ffff93f285bc80b0eb24c9acb46b5c1887d3cc" [label=""];
}

