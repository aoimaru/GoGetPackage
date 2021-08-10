[app/sources/239312804.Dockerfile]
digraph {
  "sha256:9fb81033453f712b5712f2d31b3aa18637586a01d272b30428eaeb55b84c3269" [label="local://context" shape="ellipse"];
  "sha256:ea44dbba90c70d6ab4577d4a479d3741f6ad96ae5342200382ec562717b881ef" [label="docker-image://docker.io/tensorflow/tensorflow:1.0.0" shape="ellipse"];
  "sha256:7403eaa3af0c166e527ea06c3cc189a8171e842392102102fec7b0611c819760" [label="/bin/sh -c apt-get update && apt-get install -y bc" shape="box"];
  "sha256:269aac3d7166e1bb074f30908e8a12179b5c51ad156ba109d74ced67fdbc4949" [label="/bin/sh -c pip install -U scikit-learn" shape="box"];
  "sha256:e314c571a2323b75ecfbab119068213a814206431adf0a261a8dee528a43739f" [label="/bin/sh -c pip install caicloud.tensorflow" shape="box"];
  "sha256:2f2d044470b687202066290d691d8781712288bb2bde5479bc7b59f295bdccdc" [label="/bin/sh -c rm -rf /notebooks/*" shape="box"];
  "sha256:416a2c707710df5ac82c5c5b698a5708ffb513d79a03a4c3cf5416656e2288e7" [label="copy{src=/caicloud.tensorflow, dest=/caicloud.tensorflow}" shape="note"];
  "sha256:9c86ddb4707cc41f9a082cf2dcd170fde6890caf95bf2dd26e45125e0aaa1897" [label="copy{src=/Deep_Learning_with_TensorFlow/datasets, dest=/notebooks/Deep_Learning_with_TensorFlow/datasets}" shape="note"];
  "sha256:fdd5c9163ce2265c23f259a2d150ff55960ee96c39ed9bb97e37c451eb15e02a" [label="copy{src=/Deep_Learning_with_TensorFlow/1.0.0, dest=/notebooks/Deep_Learning_with_TensorFlow/1.0.0}" shape="note"];
  "sha256:06b493dd5e83098e52ddf6c2427ac6300053c306c68bf38973590bb4fcbae9f0" [label="copy{src=/run_tf.sh, dest=/run_tf.sh}" shape="note"];
  "sha256:2b05b30fa34d31864bc510f5ec9530c61228adeccd231a68ce09050f6dc9137b" [label="sha256:2b05b30fa34d31864bc510f5ec9530c61228adeccd231a68ce09050f6dc9137b" shape="plaintext"];
  "sha256:ea44dbba90c70d6ab4577d4a479d3741f6ad96ae5342200382ec562717b881ef" -> "sha256:7403eaa3af0c166e527ea06c3cc189a8171e842392102102fec7b0611c819760" [label=""];
  "sha256:7403eaa3af0c166e527ea06c3cc189a8171e842392102102fec7b0611c819760" -> "sha256:269aac3d7166e1bb074f30908e8a12179b5c51ad156ba109d74ced67fdbc4949" [label=""];
  "sha256:269aac3d7166e1bb074f30908e8a12179b5c51ad156ba109d74ced67fdbc4949" -> "sha256:e314c571a2323b75ecfbab119068213a814206431adf0a261a8dee528a43739f" [label=""];
  "sha256:e314c571a2323b75ecfbab119068213a814206431adf0a261a8dee528a43739f" -> "sha256:2f2d044470b687202066290d691d8781712288bb2bde5479bc7b59f295bdccdc" [label=""];
  "sha256:2f2d044470b687202066290d691d8781712288bb2bde5479bc7b59f295bdccdc" -> "sha256:416a2c707710df5ac82c5c5b698a5708ffb513d79a03a4c3cf5416656e2288e7" [label=""];
  "sha256:9fb81033453f712b5712f2d31b3aa18637586a01d272b30428eaeb55b84c3269" -> "sha256:416a2c707710df5ac82c5c5b698a5708ffb513d79a03a4c3cf5416656e2288e7" [label=""];
  "sha256:416a2c707710df5ac82c5c5b698a5708ffb513d79a03a4c3cf5416656e2288e7" -> "sha256:9c86ddb4707cc41f9a082cf2dcd170fde6890caf95bf2dd26e45125e0aaa1897" [label=""];
  "sha256:9fb81033453f712b5712f2d31b3aa18637586a01d272b30428eaeb55b84c3269" -> "sha256:9c86ddb4707cc41f9a082cf2dcd170fde6890caf95bf2dd26e45125e0aaa1897" [label=""];
  "sha256:9c86ddb4707cc41f9a082cf2dcd170fde6890caf95bf2dd26e45125e0aaa1897" -> "sha256:fdd5c9163ce2265c23f259a2d150ff55960ee96c39ed9bb97e37c451eb15e02a" [label=""];
  "sha256:9fb81033453f712b5712f2d31b3aa18637586a01d272b30428eaeb55b84c3269" -> "sha256:fdd5c9163ce2265c23f259a2d150ff55960ee96c39ed9bb97e37c451eb15e02a" [label=""];
  "sha256:fdd5c9163ce2265c23f259a2d150ff55960ee96c39ed9bb97e37c451eb15e02a" -> "sha256:06b493dd5e83098e52ddf6c2427ac6300053c306c68bf38973590bb4fcbae9f0" [label=""];
  "sha256:9fb81033453f712b5712f2d31b3aa18637586a01d272b30428eaeb55b84c3269" -> "sha256:06b493dd5e83098e52ddf6c2427ac6300053c306c68bf38973590bb4fcbae9f0" [label=""];
  "sha256:06b493dd5e83098e52ddf6c2427ac6300053c306c68bf38973590bb4fcbae9f0" -> "sha256:2b05b30fa34d31864bc510f5ec9530c61228adeccd231a68ce09050f6dc9137b" [label=""];
}

