[app/sources/474972750.Dockerfile]
digraph {
  "sha256:d32092ac2d371292bd3592de6a175385915bcf5e84ef5b32120da4a5e5831a2c" [label="docker-image://docker.io/library/elasticsearch:latest" shape="ellipse"];
  "sha256:6d9aad135a9e066bfe852d76193b1559129c12b2d52ac050f7856e4327a12263" [label="/bin/sh -c plugin install license" shape="box"];
  "sha256:ccb442a2af1e8710a41c7adbe2223fc019b7df5a3c8153fa44eb382bcfc932ad" [label="/bin/sh -c plugin install watcher" shape="box"];
  "sha256:e76a27cf525050e919e6fab9d1d131a5ed61ae12ad7d02f53afb1fd1a41afb35" [label="/bin/sh -c plugin install marvel-agent" shape="box"];
  "sha256:469e9d0d61f8c717cdb85af5074cb7360568daeb79fdb60a9ed4b84a2cd707e7" [label="sha256:469e9d0d61f8c717cdb85af5074cb7360568daeb79fdb60a9ed4b84a2cd707e7" shape="plaintext"];
  "sha256:d32092ac2d371292bd3592de6a175385915bcf5e84ef5b32120da4a5e5831a2c" -> "sha256:6d9aad135a9e066bfe852d76193b1559129c12b2d52ac050f7856e4327a12263" [label=""];
  "sha256:6d9aad135a9e066bfe852d76193b1559129c12b2d52ac050f7856e4327a12263" -> "sha256:ccb442a2af1e8710a41c7adbe2223fc019b7df5a3c8153fa44eb382bcfc932ad" [label=""];
  "sha256:ccb442a2af1e8710a41c7adbe2223fc019b7df5a3c8153fa44eb382bcfc932ad" -> "sha256:e76a27cf525050e919e6fab9d1d131a5ed61ae12ad7d02f53afb1fd1a41afb35" [label=""];
  "sha256:e76a27cf525050e919e6fab9d1d131a5ed61ae12ad7d02f53afb1fd1a41afb35" -> "sha256:469e9d0d61f8c717cdb85af5074cb7360568daeb79fdb60a9ed4b84a2cd707e7" [label=""];
}

