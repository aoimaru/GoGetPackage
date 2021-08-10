[app/sources/128883927.Dockerfile]
digraph {
  "sha256:26c0fa9a82ff67f4a88f3cc79afe709ebe97612281c7ac3c341c43ab98b2aa0f" [label="docker-image://docker.io/yiisoftware/yii2-php:7.2-apache" shape="ellipse"];
  "sha256:3292b9969a6cdaa1b50d8c46b161464ed900fb4c4242b8f674b22d34d427fe24" [label="/bin/sh -c sed -i -e 's|/app/web|/app/backend/web|g' /etc/apache2/sites-available/000-default.conf" shape="box"];
  "sha256:8cab09801c21871ccae8680b9cc66d7567dd419181665898b78d1c33b381d51c" [label="sha256:8cab09801c21871ccae8680b9cc66d7567dd419181665898b78d1c33b381d51c" shape="plaintext"];
  "sha256:26c0fa9a82ff67f4a88f3cc79afe709ebe97612281c7ac3c341c43ab98b2aa0f" -> "sha256:3292b9969a6cdaa1b50d8c46b161464ed900fb4c4242b8f674b22d34d427fe24" [label=""];
  "sha256:3292b9969a6cdaa1b50d8c46b161464ed900fb4c4242b8f674b22d34d427fe24" -> "sha256:8cab09801c21871ccae8680b9cc66d7567dd419181665898b78d1c33b381d51c" [label=""];
}

