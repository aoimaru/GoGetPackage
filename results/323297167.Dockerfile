[app/sources/323297167.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:cf3c41de0a8a6792c240fcea39628f05a6c573f7b9f617410eba56600aaa51d5" [label="/bin/sh -c mkdir Plugins" shape="box"];
  "sha256:1bcc0b771b783e008874a68ce44ad7d697432999d52d9e089a948c17ae298158" [label="mkdir{path=/app}" shape="note"];
  "sha256:c364c7a6881929edd76d9f269c1e82d1d783817635d5b30785c9e85a1ceaf9ca" [label="local://context" shape="ellipse"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label="mkdir{path=/src}" shape="note"];
  "sha256:4563cce9f500da089702e4c2755ded79d9fa0c767f8d4983765802315fb0076e" [label="copy{src=/NotifyMe/NotifyMe.csproj, dest=/src/NotifyMe/NotifyMe/}" shape="note"];
  "sha256:2c79109ccf57a9e54d6598d4c26a680189881aa9ec9ca1f4693f291adad9db74" [label="copy{src=/NotifyMe.Common/NotifyMe.Common.csproj, dest=/src/NotifyMe/NotifyMe/}" shape="note"];
  "sha256:f7a58efb3677838799ccb9493e92e59b568960cc0498528ff8ad2057bc82748b" [label="copy{src=/NotifyMe.Templates/NotifyMe.Templates.csproj, dest=/src/NotifyMe/NotifyMe/}" shape="note"];
  "sha256:97a616246bed37b334254bc3e98c10e6c29e5559e69b4f82bdef48e486e7aa14" [label="mkdir{path=/src/NotifyMe/NotifyMe}" shape="note"];
  "sha256:77f820875f42ee9b7d01b497d1c92893b5840d9a0c8dac7ab46c459a4dfc0994" [label="copy{src=/, dest=/src/NotifyMe/NotifyMe/}" shape="note"];
  "sha256:2a46fd1cef63217a81ecec57239c5974dd7f4273f7075096a164b8f659971e7d" [label="/bin/sh -c dotnet build NotifyMe.Templates/NotifyMe.Templates.csproj -c Release -o /app/Plugins" shape="box"];
  "sha256:c9a3786b7a01a20b770d37aa02971feca2c538cb69de16a736002c30af292d49" [label="/bin/sh -c dotnet build NotifyMe/NotifyMe.csproj -c Release -o /app" shape="box"];
  "sha256:88520d26233601733a45659ad9edcae43a98ba955fa3d31c98ffd0e3e48c8bd7" [label="/bin/sh -c dotnet publish NotifyMe/NotifyMe.csproj -c Release -o /app" shape="box"];
  "sha256:cba9f446c89d9e9d923a33dd3b2c851ee98aafaefd34254f19ca853d925e7d23" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:1c06f9b5ad388a95caae16acd30d968fabb1a94fd08d6f5f6855d267f20789d0" [label="sha256:1c06f9b5ad388a95caae16acd30d968fabb1a94fd08d6f5f6855d267f20789d0" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:cf3c41de0a8a6792c240fcea39628f05a6c573f7b9f617410eba56600aaa51d5" [label=""];
  "sha256:cf3c41de0a8a6792c240fcea39628f05a6c573f7b9f617410eba56600aaa51d5" -> "sha256:1bcc0b771b783e008874a68ce44ad7d697432999d52d9e089a948c17ae298158" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" [label=""];
  "sha256:a5cc6763884011434764fbcb8829dd30df40f5b3a51e415f562e8ced7304ed1e" -> "sha256:4563cce9f500da089702e4c2755ded79d9fa0c767f8d4983765802315fb0076e" [label=""];
  "sha256:c364c7a6881929edd76d9f269c1e82d1d783817635d5b30785c9e85a1ceaf9ca" -> "sha256:4563cce9f500da089702e4c2755ded79d9fa0c767f8d4983765802315fb0076e" [label=""];
  "sha256:4563cce9f500da089702e4c2755ded79d9fa0c767f8d4983765802315fb0076e" -> "sha256:2c79109ccf57a9e54d6598d4c26a680189881aa9ec9ca1f4693f291adad9db74" [label=""];
  "sha256:c364c7a6881929edd76d9f269c1e82d1d783817635d5b30785c9e85a1ceaf9ca" -> "sha256:2c79109ccf57a9e54d6598d4c26a680189881aa9ec9ca1f4693f291adad9db74" [label=""];
  "sha256:2c79109ccf57a9e54d6598d4c26a680189881aa9ec9ca1f4693f291adad9db74" -> "sha256:f7a58efb3677838799ccb9493e92e59b568960cc0498528ff8ad2057bc82748b" [label=""];
  "sha256:c364c7a6881929edd76d9f269c1e82d1d783817635d5b30785c9e85a1ceaf9ca" -> "sha256:f7a58efb3677838799ccb9493e92e59b568960cc0498528ff8ad2057bc82748b" [label=""];
  "sha256:f7a58efb3677838799ccb9493e92e59b568960cc0498528ff8ad2057bc82748b" -> "sha256:97a616246bed37b334254bc3e98c10e6c29e5559e69b4f82bdef48e486e7aa14" [label=""];
  "sha256:97a616246bed37b334254bc3e98c10e6c29e5559e69b4f82bdef48e486e7aa14" -> "sha256:77f820875f42ee9b7d01b497d1c92893b5840d9a0c8dac7ab46c459a4dfc0994" [label=""];
  "sha256:c364c7a6881929edd76d9f269c1e82d1d783817635d5b30785c9e85a1ceaf9ca" -> "sha256:77f820875f42ee9b7d01b497d1c92893b5840d9a0c8dac7ab46c459a4dfc0994" [label=""];
  "sha256:77f820875f42ee9b7d01b497d1c92893b5840d9a0c8dac7ab46c459a4dfc0994" -> "sha256:2a46fd1cef63217a81ecec57239c5974dd7f4273f7075096a164b8f659971e7d" [label=""];
  "sha256:2a46fd1cef63217a81ecec57239c5974dd7f4273f7075096a164b8f659971e7d" -> "sha256:c9a3786b7a01a20b770d37aa02971feca2c538cb69de16a736002c30af292d49" [label=""];
  "sha256:c9a3786b7a01a20b770d37aa02971feca2c538cb69de16a736002c30af292d49" -> "sha256:88520d26233601733a45659ad9edcae43a98ba955fa3d31c98ffd0e3e48c8bd7" [label=""];
  "sha256:1bcc0b771b783e008874a68ce44ad7d697432999d52d9e089a948c17ae298158" -> "sha256:cba9f446c89d9e9d923a33dd3b2c851ee98aafaefd34254f19ca853d925e7d23" [label=""];
  "sha256:88520d26233601733a45659ad9edcae43a98ba955fa3d31c98ffd0e3e48c8bd7" -> "sha256:cba9f446c89d9e9d923a33dd3b2c851ee98aafaefd34254f19ca853d925e7d23" [label=""];
  "sha256:cba9f446c89d9e9d923a33dd3b2c851ee98aafaefd34254f19ca853d925e7d23" -> "sha256:1c06f9b5ad388a95caae16acd30d968fabb1a94fd08d6f5f6855d267f20789d0" [label=""];
}

