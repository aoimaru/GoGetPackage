[app/sources/239445812.Dockerfile]
digraph {
  "sha256:eb1a9976a4b86f25aa71e0f1896449553f7d009fc947ba8e9e864118dd471ed8" [label="docker-image://docker.io/chef/chefdk:latest" shape="ellipse"];
  "sha256:2a99f684a7c7481229fff56f78eec9ad1dd71f0686e8b15f6a9e0f0413022e50" [label="/bin/sh -c apt-get update;     apt-get install -qy git;" shape="box"];
  "sha256:705623204e08dc266218a7f774643e591b9493d2d4458cc39e58acefeccd7ef7" [label="sha256:705623204e08dc266218a7f774643e591b9493d2d4458cc39e58acefeccd7ef7" shape="plaintext"];
  "sha256:eb1a9976a4b86f25aa71e0f1896449553f7d009fc947ba8e9e864118dd471ed8" -> "sha256:2a99f684a7c7481229fff56f78eec9ad1dd71f0686e8b15f6a9e0f0413022e50" [label=""];
  "sha256:2a99f684a7c7481229fff56f78eec9ad1dd71f0686e8b15f6a9e0f0413022e50" -> "sha256:705623204e08dc266218a7f774643e591b9493d2d4458cc39e58acefeccd7ef7" [label=""];
}

