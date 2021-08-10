[app/sources/262210962.Dockerfile]
digraph {
  "sha256:899a53fc69780ec1eb0b32193b245707059d086c0d918e2a292004d67d7f7a9d" [label="docker-image://docker.io/library/node:8.1.2" shape="ellipse"];
  "sha256:b398395d8f4c4cc64cda25299e383f7ba23990b640c2050b8ff4dc639a17418e" [label="/bin/sh -c mkdir -p $app" shape="box"];
  "sha256:c2bac1dd549ea032f2875bd82448f6b4aab4a51db33592758e153c287c445799" [label="mkdir{path=/contracts}" shape="note"];
  "sha256:e6b0d38be87363188f694899f4edbfcc3aedf62be030d7a8cfecc3d932b99e26" [label="local://context" shape="ellipse"];
  "sha256:f1380d1d67fc0df21520b7a19e2a10cea4d6a450cbfdb8af06e5cee9401882a8" [label="copy{src=/package.json, dest=/contracts/package.json}" shape="note"];
  "sha256:30f1a8595977165859c5d323ec82085c9654607ddb3f3132873eeaac81c3d84e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fd58241009620a5321e2be241f50c1f44753d7eeaf81065d82edc0924e84bfd9" [label="sha256:fd58241009620a5321e2be241f50c1f44753d7eeaf81065d82edc0924e84bfd9" shape="plaintext"];
  "sha256:899a53fc69780ec1eb0b32193b245707059d086c0d918e2a292004d67d7f7a9d" -> "sha256:b398395d8f4c4cc64cda25299e383f7ba23990b640c2050b8ff4dc639a17418e" [label=""];
  "sha256:b398395d8f4c4cc64cda25299e383f7ba23990b640c2050b8ff4dc639a17418e" -> "sha256:c2bac1dd549ea032f2875bd82448f6b4aab4a51db33592758e153c287c445799" [label=""];
  "sha256:c2bac1dd549ea032f2875bd82448f6b4aab4a51db33592758e153c287c445799" -> "sha256:f1380d1d67fc0df21520b7a19e2a10cea4d6a450cbfdb8af06e5cee9401882a8" [label=""];
  "sha256:e6b0d38be87363188f694899f4edbfcc3aedf62be030d7a8cfecc3d932b99e26" -> "sha256:f1380d1d67fc0df21520b7a19e2a10cea4d6a450cbfdb8af06e5cee9401882a8" [label=""];
  "sha256:f1380d1d67fc0df21520b7a19e2a10cea4d6a450cbfdb8af06e5cee9401882a8" -> "sha256:30f1a8595977165859c5d323ec82085c9654607ddb3f3132873eeaac81c3d84e" [label=""];
  "sha256:30f1a8595977165859c5d323ec82085c9654607ddb3f3132873eeaac81c3d84e" -> "sha256:fd58241009620a5321e2be241f50c1f44753d7eeaf81065d82edc0924e84bfd9" [label=""];
}

