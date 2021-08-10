[app/sources/319406468.Dockerfile]
digraph {
  "sha256:1412c7c0a116b2bb958e6974251ed514bc350c6b895dd4636720023a44d307aa" [label="docker-image://docker.io/microsoft/aspnetcore:2.0-nanoserver-1709" shape="ellipse"];
  "sha256:57dc82563d7337a170f40401d93f583d72877e287ac99a17fa1c202c5a57dac0" [label="mkdir{path=/app}" shape="note"];
  "sha256:3fa3bd174218a29bc3eaffa25591b245ebbab43ec3fa249d53fdcf99f2a5b9ca" [label="mkdir{path=/app}" shape="note"];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" [label="docker-image://docker.io/microsoft/aspnetcore-build:2.0" shape="ellipse"];
  "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" [label="mkdir{path=/src}" shape="note"];
  "sha256:15cd93a5201ba88c3a430a6afced098b02e1cbafe8b7ee9736504ee4d2ab340f" [label="local://context" shape="ellipse"];
  "sha256:07f8ca70616ba3703065641ffa9540d9d920fe970a3eaaa589f0229190cdc265" [label="copy{src=/sfvolume/counterService/counterService.csproj, dest=/src/sfvolume/counterService/}" shape="note"];
  "sha256:9d7f4203d6180fa9489306acca7b9243c53d1df40a7d38e32469cdd6d76d1464" [label="/bin/sh -c dotnet restore sfvolume/counterService/counterService.csproj" shape="box"];
  "sha256:6afd2b6a57050fe3b8effad715daf82e807c09241da5d9c2d59f0a16b4078702" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:386ecd1fd9c3abd1ea8b3edb843cc142c44db87551e38c98ce385b8c4c7810e7" [label="mkdir{path=/src/sfvolume/counterService}" shape="note"];
  "sha256:8a7fc519e401e31ebf2c62bfacd3701a1a63e16ffe42309407a50c94af9f3e78" [label="/bin/sh -c dotnet build counterService.csproj -c Release -o /app" shape="box"];
  "sha256:da28a559bc634493d43c311703ca673cde0441eca6de6ade062321532db6293f" [label="/bin/sh -c dotnet publish counterService.csproj -c Release -o /app" shape="box"];
  "sha256:01d1dfdc46bbd495e741dd53abb045aa4b68abca78d20817ccf4be722f574c92" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:5493268d4cfffe05c14ff6a1f876994887019779b120676fc5ca98751f71b8da" [label="sha256:5493268d4cfffe05c14ff6a1f876994887019779b120676fc5ca98751f71b8da" shape="plaintext"];
  "sha256:1412c7c0a116b2bb958e6974251ed514bc350c6b895dd4636720023a44d307aa" -> "sha256:57dc82563d7337a170f40401d93f583d72877e287ac99a17fa1c202c5a57dac0" [label=""];
  "sha256:57dc82563d7337a170f40401d93f583d72877e287ac99a17fa1c202c5a57dac0" -> "sha256:3fa3bd174218a29bc3eaffa25591b245ebbab43ec3fa249d53fdcf99f2a5b9ca" [label=""];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" -> "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" [label=""];
  "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" -> "sha256:07f8ca70616ba3703065641ffa9540d9d920fe970a3eaaa589f0229190cdc265" [label=""];
  "sha256:15cd93a5201ba88c3a430a6afced098b02e1cbafe8b7ee9736504ee4d2ab340f" -> "sha256:07f8ca70616ba3703065641ffa9540d9d920fe970a3eaaa589f0229190cdc265" [label=""];
  "sha256:07f8ca70616ba3703065641ffa9540d9d920fe970a3eaaa589f0229190cdc265" -> "sha256:9d7f4203d6180fa9489306acca7b9243c53d1df40a7d38e32469cdd6d76d1464" [label=""];
  "sha256:9d7f4203d6180fa9489306acca7b9243c53d1df40a7d38e32469cdd6d76d1464" -> "sha256:6afd2b6a57050fe3b8effad715daf82e807c09241da5d9c2d59f0a16b4078702" [label=""];
  "sha256:15cd93a5201ba88c3a430a6afced098b02e1cbafe8b7ee9736504ee4d2ab340f" -> "sha256:6afd2b6a57050fe3b8effad715daf82e807c09241da5d9c2d59f0a16b4078702" [label=""];
  "sha256:6afd2b6a57050fe3b8effad715daf82e807c09241da5d9c2d59f0a16b4078702" -> "sha256:386ecd1fd9c3abd1ea8b3edb843cc142c44db87551e38c98ce385b8c4c7810e7" [label=""];
  "sha256:386ecd1fd9c3abd1ea8b3edb843cc142c44db87551e38c98ce385b8c4c7810e7" -> "sha256:8a7fc519e401e31ebf2c62bfacd3701a1a63e16ffe42309407a50c94af9f3e78" [label=""];
  "sha256:8a7fc519e401e31ebf2c62bfacd3701a1a63e16ffe42309407a50c94af9f3e78" -> "sha256:da28a559bc634493d43c311703ca673cde0441eca6de6ade062321532db6293f" [label=""];
  "sha256:3fa3bd174218a29bc3eaffa25591b245ebbab43ec3fa249d53fdcf99f2a5b9ca" -> "sha256:01d1dfdc46bbd495e741dd53abb045aa4b68abca78d20817ccf4be722f574c92" [label=""];
  "sha256:da28a559bc634493d43c311703ca673cde0441eca6de6ade062321532db6293f" -> "sha256:01d1dfdc46bbd495e741dd53abb045aa4b68abca78d20817ccf4be722f574c92" [label=""];
  "sha256:01d1dfdc46bbd495e741dd53abb045aa4b68abca78d20817ccf4be722f574c92" -> "sha256:5493268d4cfffe05c14ff6a1f876994887019779b120676fc5ca98751f71b8da" [label=""];
}

