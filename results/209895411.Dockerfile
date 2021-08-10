[app/sources/209895411.Dockerfile]
digraph {
  "sha256:4152ad8fd5a3404f9e3a851d04b39b4a5c97d387088fb5fc18859cdf941cfcb8" [label="docker-image://docker.io/phusion/passenger-ruby21:latest" shape="ellipse"];
  "sha256:d2113f439e429e8919b5c7567e1f25b1e0def59ffc5f1f20d655a7f12b3617ab" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:59887f65b63a1d70c58f4342ed0a9271f81932ef50d6682b48bfecc72f5d146a" [label="/bin/sh -c git clone https://github.com/atheiman/better-chef-rundeck" shape="box"];
  "sha256:d139dd2af66aac5b0111f9f5a8731d760e84a3e6687fb712c8ad6fde3c29e58a" [label="mkdir{path=/home/app/better-chef-rundeck}" shape="note"];
  "sha256:c5e63b4bc041ab2a81098c5c468566d0032d587ebd44733c9a9c6ca5f9a4d664" [label="/bin/sh -c bash -c 'sed -i\"\" -e \"/passenger/s/~> 5.0/= $(passenger --version | grep -o '5.*')/\" Gemfile' &&     cat Gemfile && bundle update passenger &&     bundle install" shape="box"];
  "sha256:539a81806fce50edddc37e5bc1122ce85c89e7b79da7b523925bdd346a49f279" [label="/bin/sh -c echo 'server {\\n  listen 80;\\n  root /home/app/better-chef-rundeck/public;\\n  passenger_enabled on;\\n  passenger_user app;\\n}\\n' > /etc/nginx/sites-enabled/chef-rundeck" shape="box"];
  "sha256:0c5e00cf162d73b8db6e62fee915853222daccb05fbc1db6ff4ecf884d055752" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default && rm /etc/service/nginx/down" shape="box"];
  "sha256:bafff4305d6ad06867f486584ce0963840813b49f435a3a6722ea5b815f904ab" [label="sha256:bafff4305d6ad06867f486584ce0963840813b49f435a3a6722ea5b815f904ab" shape="plaintext"];
  "sha256:4152ad8fd5a3404f9e3a851d04b39b4a5c97d387088fb5fc18859cdf941cfcb8" -> "sha256:d2113f439e429e8919b5c7567e1f25b1e0def59ffc5f1f20d655a7f12b3617ab" [label=""];
  "sha256:d2113f439e429e8919b5c7567e1f25b1e0def59ffc5f1f20d655a7f12b3617ab" -> "sha256:59887f65b63a1d70c58f4342ed0a9271f81932ef50d6682b48bfecc72f5d146a" [label=""];
  "sha256:59887f65b63a1d70c58f4342ed0a9271f81932ef50d6682b48bfecc72f5d146a" -> "sha256:d139dd2af66aac5b0111f9f5a8731d760e84a3e6687fb712c8ad6fde3c29e58a" [label=""];
  "sha256:d139dd2af66aac5b0111f9f5a8731d760e84a3e6687fb712c8ad6fde3c29e58a" -> "sha256:c5e63b4bc041ab2a81098c5c468566d0032d587ebd44733c9a9c6ca5f9a4d664" [label=""];
  "sha256:c5e63b4bc041ab2a81098c5c468566d0032d587ebd44733c9a9c6ca5f9a4d664" -> "sha256:539a81806fce50edddc37e5bc1122ce85c89e7b79da7b523925bdd346a49f279" [label=""];
  "sha256:539a81806fce50edddc37e5bc1122ce85c89e7b79da7b523925bdd346a49f279" -> "sha256:0c5e00cf162d73b8db6e62fee915853222daccb05fbc1db6ff4ecf884d055752" [label=""];
  "sha256:0c5e00cf162d73b8db6e62fee915853222daccb05fbc1db6ff4ecf884d055752" -> "sha256:bafff4305d6ad06867f486584ce0963840813b49f435a3a6722ea5b815f904ab" [label=""];
}

