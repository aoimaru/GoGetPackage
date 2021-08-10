[app/sources/198667082.Dockerfile]
digraph {
  "sha256:be68b4f27e8cb2367ae0987d122612891b8213749d1f9b2657042547d780507d" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:6f292deda16f33dbe462bbe69aba46375ebd754daaf56eb659df15096eaac8b2" [label="/bin/sh -c apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 16126D3A3E5C1192" shape="box"];
  "sha256:9958a15407cab5c80abdd101da86e84c9bfc743cd55c376d9ed608e7cb16a16c" [label="/bin/sh -c apt-get autoclean" shape="box"];
  "sha256:1a8e5acd810f0419e714337c4e800dcf91c2a5f4975d260519f568e070105e78" [label="/bin/sh -c apt-get clean all" shape="box"];
  "sha256:5400c3b4f8aa35cb6045ab76163e49ecd8bcefa77873d7a0e1ec0940f30c208e" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:48bf25c215b8b5aeaa44b40912a7ef3e5ac6e6a66315babafad0e2a23ec736c9" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:23f77a4fa85071d69bc6664e790c86c902a3676861aa243622fae35614dd51a3" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:7177acdae464a597ff3596fbb5cc1aab39ac8c979b1cc4eb0c2953dfb541b327" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5a203a63499b881c79e3ab808d0d83d3bdcb340f19a22ef217f8c940e729fcbd" [label="/bin/sh -c apt-get upgrade -s" shape="box"];
  "sha256:f4127656b5b2715542f7b8974d321aa724f9a34a01577c203e51d25d69398648" [label="/bin/sh -c apt-get install -y git python-pip curl tar" shape="box"];
  "sha256:8d6d240fa8df31c2a3f2312efed2d53432452df9ee2491820a457db67c712eb3" [label="/bin/sh -c apt-get install -y build-essential libssl-dev libffi-dev python-dev" shape="box"];
  "sha256:36764ab6ae2684d7b337bffec6cac21e287e347f5ed30d86d7f0f61b9490324b" [label="/bin/sh -c pip install httplib2" shape="box"];
  "sha256:abbf50912540d06a07fcf6e16432838d5f5e4f4f825273e39f81bd95b067f2e2" [label="/bin/sh -c pip install paramiko" shape="box"];
  "sha256:71db8d3f0caf708532da777fc2fa5f9ade3c9019b0060464cc7972ba4019645d" [label="copy{src=/cbinit.py, dest=/cbinit.py}" shape="note"];
  "sha256:0e17a21f72fe2524535494692e5453b3e6010b9749a8bac49d6e0a4aaac3ea1c" [label="sha256:0e17a21f72fe2524535494692e5453b3e6010b9749a8bac49d6e0a4aaac3ea1c" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:6f292deda16f33dbe462bbe69aba46375ebd754daaf56eb659df15096eaac8b2" [label=""];
  "sha256:6f292deda16f33dbe462bbe69aba46375ebd754daaf56eb659df15096eaac8b2" -> "sha256:9958a15407cab5c80abdd101da86e84c9bfc743cd55c376d9ed608e7cb16a16c" [label=""];
  "sha256:9958a15407cab5c80abdd101da86e84c9bfc743cd55c376d9ed608e7cb16a16c" -> "sha256:1a8e5acd810f0419e714337c4e800dcf91c2a5f4975d260519f568e070105e78" [label=""];
  "sha256:1a8e5acd810f0419e714337c4e800dcf91c2a5f4975d260519f568e070105e78" -> "sha256:5400c3b4f8aa35cb6045ab76163e49ecd8bcefa77873d7a0e1ec0940f30c208e" [label=""];
  "sha256:5400c3b4f8aa35cb6045ab76163e49ecd8bcefa77873d7a0e1ec0940f30c208e" -> "sha256:48bf25c215b8b5aeaa44b40912a7ef3e5ac6e6a66315babafad0e2a23ec736c9" [label=""];
  "sha256:48bf25c215b8b5aeaa44b40912a7ef3e5ac6e6a66315babafad0e2a23ec736c9" -> "sha256:23f77a4fa85071d69bc6664e790c86c902a3676861aa243622fae35614dd51a3" [label=""];
  "sha256:23f77a4fa85071d69bc6664e790c86c902a3676861aa243622fae35614dd51a3" -> "sha256:7177acdae464a597ff3596fbb5cc1aab39ac8c979b1cc4eb0c2953dfb541b327" [label=""];
  "sha256:7177acdae464a597ff3596fbb5cc1aab39ac8c979b1cc4eb0c2953dfb541b327" -> "sha256:5a203a63499b881c79e3ab808d0d83d3bdcb340f19a22ef217f8c940e729fcbd" [label=""];
  "sha256:5a203a63499b881c79e3ab808d0d83d3bdcb340f19a22ef217f8c940e729fcbd" -> "sha256:f4127656b5b2715542f7b8974d321aa724f9a34a01577c203e51d25d69398648" [label=""];
  "sha256:f4127656b5b2715542f7b8974d321aa724f9a34a01577c203e51d25d69398648" -> "sha256:8d6d240fa8df31c2a3f2312efed2d53432452df9ee2491820a457db67c712eb3" [label=""];
  "sha256:8d6d240fa8df31c2a3f2312efed2d53432452df9ee2491820a457db67c712eb3" -> "sha256:36764ab6ae2684d7b337bffec6cac21e287e347f5ed30d86d7f0f61b9490324b" [label=""];
  "sha256:36764ab6ae2684d7b337bffec6cac21e287e347f5ed30d86d7f0f61b9490324b" -> "sha256:abbf50912540d06a07fcf6e16432838d5f5e4f4f825273e39f81bd95b067f2e2" [label=""];
  "sha256:abbf50912540d06a07fcf6e16432838d5f5e4f4f825273e39f81bd95b067f2e2" -> "sha256:71db8d3f0caf708532da777fc2fa5f9ade3c9019b0060464cc7972ba4019645d" [label=""];
  "sha256:be68b4f27e8cb2367ae0987d122612891b8213749d1f9b2657042547d780507d" -> "sha256:71db8d3f0caf708532da777fc2fa5f9ade3c9019b0060464cc7972ba4019645d" [label=""];
  "sha256:71db8d3f0caf708532da777fc2fa5f9ade3c9019b0060464cc7972ba4019645d" -> "sha256:0e17a21f72fe2524535494692e5453b3e6010b9749a8bac49d6e0a4aaac3ea1c" [label=""];
}

