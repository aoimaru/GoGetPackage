[app/sources/425085342.Dockerfile]
digraph {
  "sha256:ba77331ba8062a5ddeb2313bcca0ba0553398b09d9e4c5662f8a5c605568f4b3" [label="docker-image://docker.io/gewo/mongodb-base:latest" shape="ellipse"];
  "sha256:2f9adda9e2e0dbed7cc784d01fa9ab976d03eb6fad86b91232ded82a8ccb03d4" [label="/bin/sh -c apt-get update &&   apt-get install -y   mongodb-org=$MONGODB_VERSION   mongodb-org-server=$MONGODB_VERSION   mongodb-org-shell=$MONGODB_VERSION   mongodb-org-mongos=$MONGODB_VERSION   mongodb-org-tools=$MONGODB_VERSION &&   apt-get clean" shape="box"];
  "sha256:57415aa7fc3ab8b01486453ce07229644348859eb845e4c9444549353f154287" [label="sha256:57415aa7fc3ab8b01486453ce07229644348859eb845e4c9444549353f154287" shape="plaintext"];
  "sha256:ba77331ba8062a5ddeb2313bcca0ba0553398b09d9e4c5662f8a5c605568f4b3" -> "sha256:2f9adda9e2e0dbed7cc784d01fa9ab976d03eb6fad86b91232ded82a8ccb03d4" [label=""];
  "sha256:2f9adda9e2e0dbed7cc784d01fa9ab976d03eb6fad86b91232ded82a8ccb03d4" -> "sha256:57415aa7fc3ab8b01486453ce07229644348859eb845e4c9444549353f154287" [label=""];
}

