[app/sources/172260571.Dockerfile]
digraph {
  "sha256:068c54df2445a2d67ce98e19b78be6326c3a6ff28f2fe694c5c06803f0062896" [label="docker-image://docker.io/stackbrew/debian:jessie" shape="ellipse"];
  "sha256:63bc59e08c8462d7816418f906ff9f54ef7bdab22fb184c99a144089816342a2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7665759d013d712fa612c8511405875d80c418d2339a6847cf3730e6c0d2d9bf" [label="/bin/sh -c apt-get install -y python python-setuptools" shape="box"];
  "sha256:ed1c2a5ddb836a12dd11b051b44a692401a50675bf3537066b9431ce9463dede" [label="local://context" shape="ellipse"];
  "sha256:a7f496c9b54db7393e546f5ac423798272a6618fa462f1e67c0e80aed65cd99d" [label="copy{src=/, dest=/shadowsocks}" shape="note"];
  "sha256:0968be1ed82a811ff171772f3d8036f111972a79402c27df4e221637b9134e0b" [label="mkdir{path=/shadowsocks}" shape="note"];
  "sha256:7f734ffe1a54e2e296da60c803c58d4e2afaebcd4b9a8de23dedc83e891dce61" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:010dff422f2d034fd831175ebfe8d6ebb4e150ada341ff3dcc8d108925a9c7c8" [label="sha256:010dff422f2d034fd831175ebfe8d6ebb4e150ada341ff3dcc8d108925a9c7c8" shape="plaintext"];
  "sha256:068c54df2445a2d67ce98e19b78be6326c3a6ff28f2fe694c5c06803f0062896" -> "sha256:63bc59e08c8462d7816418f906ff9f54ef7bdab22fb184c99a144089816342a2" [label=""];
  "sha256:63bc59e08c8462d7816418f906ff9f54ef7bdab22fb184c99a144089816342a2" -> "sha256:7665759d013d712fa612c8511405875d80c418d2339a6847cf3730e6c0d2d9bf" [label=""];
  "sha256:7665759d013d712fa612c8511405875d80c418d2339a6847cf3730e6c0d2d9bf" -> "sha256:a7f496c9b54db7393e546f5ac423798272a6618fa462f1e67c0e80aed65cd99d" [label=""];
  "sha256:ed1c2a5ddb836a12dd11b051b44a692401a50675bf3537066b9431ce9463dede" -> "sha256:a7f496c9b54db7393e546f5ac423798272a6618fa462f1e67c0e80aed65cd99d" [label=""];
  "sha256:a7f496c9b54db7393e546f5ac423798272a6618fa462f1e67c0e80aed65cd99d" -> "sha256:0968be1ed82a811ff171772f3d8036f111972a79402c27df4e221637b9134e0b" [label=""];
  "sha256:0968be1ed82a811ff171772f3d8036f111972a79402c27df4e221637b9134e0b" -> "sha256:7f734ffe1a54e2e296da60c803c58d4e2afaebcd4b9a8de23dedc83e891dce61" [label=""];
  "sha256:7f734ffe1a54e2e296da60c803c58d4e2afaebcd4b9a8de23dedc83e891dce61" -> "sha256:010dff422f2d034fd831175ebfe8d6ebb4e150ada341ff3dcc8d108925a9c7c8" [label=""];
}

