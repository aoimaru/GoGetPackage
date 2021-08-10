[app/sources/252779322.Dockerfile]
digraph {
  "sha256:24afee497a8acc0c1069d296f3eaaefe0911c48c5b2fcf4e3598eeac74f727c3" [label="docker-image://docker.io/library/php:5-cli" shape="ellipse"];
  "sha256:2f7bfc16412061027e223687f85e1ab5b0f9896a1300a8e6d0f29b18ddb372a8" [label="/bin/sh -c apt-get update && apt-get install -y libmcrypt-dev" shape="box"];
  "sha256:0a499bfe3bdc59bea0b4f8d4b63ad0c363bf3c072fe66110eccc0520b990e331" [label="/bin/sh -c docker-php-ext-install mbstring mcrypt pdo pdo_mysql" shape="box"];
  "sha256:7716d283767db42b05d318250bd64386c79d1a724f500b494fb09c40f15171f3" [label="mkdir{path=/app}" shape="note"];
  "sha256:7a5693b0ad0a5a63020f7d60a2fd58acb40bb34f7e4689eb8722bf2221171823" [label="sha256:7a5693b0ad0a5a63020f7d60a2fd58acb40bb34f7e4689eb8722bf2221171823" shape="plaintext"];
  "sha256:24afee497a8acc0c1069d296f3eaaefe0911c48c5b2fcf4e3598eeac74f727c3" -> "sha256:2f7bfc16412061027e223687f85e1ab5b0f9896a1300a8e6d0f29b18ddb372a8" [label=""];
  "sha256:2f7bfc16412061027e223687f85e1ab5b0f9896a1300a8e6d0f29b18ddb372a8" -> "sha256:0a499bfe3bdc59bea0b4f8d4b63ad0c363bf3c072fe66110eccc0520b990e331" [label=""];
  "sha256:0a499bfe3bdc59bea0b4f8d4b63ad0c363bf3c072fe66110eccc0520b990e331" -> "sha256:7716d283767db42b05d318250bd64386c79d1a724f500b494fb09c40f15171f3" [label=""];
  "sha256:7716d283767db42b05d318250bd64386c79d1a724f500b494fb09c40f15171f3" -> "sha256:7a5693b0ad0a5a63020f7d60a2fd58acb40bb34f7e4689eb8722bf2221171823" [label=""];
}

