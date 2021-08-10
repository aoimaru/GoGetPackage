[app/sources/255054944.Dockerfile]
digraph {
  "sha256:66d5ed78f9fcf615aefb5a8cecaf0af5150b3c2c29c9021e8f4a3c6a62dc451b" [label="docker-image://docker.io/rocker/hadleyverse:latest" shape="ellipse"];
  "sha256:0e8b95b8d46359720663cdd14d7779a37008da607bf0d7cbc1ed61dd92eb7666" [label="/bin/sh -c apt-get update && apt-get install -y     cron     nano     && apt-get clean     && rm -rf /var/lib/apt/lists/     && rm -rf /tmp/downloaded_packages/ /tmp/*.rds" shape="box"];
  "sha256:edf71f340fbcb104dfb7af4b8d2935a2316136e14d7fd693e6bfce11a4aee4aa" [label="/bin/sh -c install2.r --error     -r 'http://cran.rstudio.com'     googleComputeEngineR googleCloudStorageR shinyFiles cronR     && rm -rf /tmp/downloaded_packages/ /tmp/*.rds" shape="box"];
  "sha256:d6bc7d3efdcd603830e961b798440c17fcc06f07185019fa041e65ca464c26b1" [label="/bin/sh -c sudo service cron start" shape="box"];
  "sha256:4c7b3218179f68bea63f84c3c9019c36eb2c4eebf521c52ed223bfea6a102c7f" [label="sha256:4c7b3218179f68bea63f84c3c9019c36eb2c4eebf521c52ed223bfea6a102c7f" shape="plaintext"];
  "sha256:66d5ed78f9fcf615aefb5a8cecaf0af5150b3c2c29c9021e8f4a3c6a62dc451b" -> "sha256:0e8b95b8d46359720663cdd14d7779a37008da607bf0d7cbc1ed61dd92eb7666" [label=""];
  "sha256:0e8b95b8d46359720663cdd14d7779a37008da607bf0d7cbc1ed61dd92eb7666" -> "sha256:edf71f340fbcb104dfb7af4b8d2935a2316136e14d7fd693e6bfce11a4aee4aa" [label=""];
  "sha256:edf71f340fbcb104dfb7af4b8d2935a2316136e14d7fd693e6bfce11a4aee4aa" -> "sha256:d6bc7d3efdcd603830e961b798440c17fcc06f07185019fa041e65ca464c26b1" [label=""];
  "sha256:d6bc7d3efdcd603830e961b798440c17fcc06f07185019fa041e65ca464c26b1" -> "sha256:4c7b3218179f68bea63f84c3c9019c36eb2c4eebf521c52ed223bfea6a102c7f" [label=""];
}

