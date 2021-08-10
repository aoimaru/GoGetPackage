[app/sources/298341022.Dockerfile]
digraph {
  "sha256:c56e5beae838bb4aabae055cc800bd6ab78215b360f13e88f522fdc4cb2aef76" [label="local://context" shape="ellipse"];
  "sha256:3a9db93c1bb6ade414345f678410c6bb00d9c91b441bd1b6c39c76720a66eaa1" [label="docker-image://docker.io/library/client-go:v1.5.8" shape="ellipse"];
  "sha256:706481a8de209b2a8bd56972c498f2ce78a3d143b0548fef0d3835ea6286c3ce" [label="/bin/sh -c apt-get update &&    apt-get install -y curl git-core &&    curl -sL https://deb.nodesource.com/setup_4.x | bash - &&    apt-get update &&    apt-get install -y nodejs" shape="box"];
  "sha256:54eb942c475d382f81db6a97be9cfc6851159ccce201a9127d77ec71071d7561" [label="/bin/sh -c cd /root &&    git clone https://github.com/cubedro/eth-net-intelligence-api &&    cd eth-net-intelligence-api &&    npm install &&    npm install -g pm2" shape="box"];
  "sha256:3f4c4b79484ab2980088730a52ffd42f96db2fbccfa31df3bf8f2374699e3c7f" [label="copy{src=/start.sh, dest=/root/start.sh}" shape="note"];
  "sha256:02a9ffa299947725a7cf25ff462f7ede292ba8dbcb87338eacf8cd3a0a2a5733" [label="copy{src=/app.json, dest=/root/eth-net-intelligence-api/app.json}" shape="note"];
  "sha256:a80d203a25928feeff9f15d98cb2a9852651b3ca7e0046008634bb2a670e5e73" [label="/bin/sh -c chmod +x /root/start.sh" shape="box"];
  "sha256:f046e1b94c3151fe7c0d8f024f2b8010241b370e65ea1f90812452fc4a7a110b" [label="sha256:f046e1b94c3151fe7c0d8f024f2b8010241b370e65ea1f90812452fc4a7a110b" shape="plaintext"];
  "sha256:3a9db93c1bb6ade414345f678410c6bb00d9c91b441bd1b6c39c76720a66eaa1" -> "sha256:706481a8de209b2a8bd56972c498f2ce78a3d143b0548fef0d3835ea6286c3ce" [label=""];
  "sha256:706481a8de209b2a8bd56972c498f2ce78a3d143b0548fef0d3835ea6286c3ce" -> "sha256:54eb942c475d382f81db6a97be9cfc6851159ccce201a9127d77ec71071d7561" [label=""];
  "sha256:54eb942c475d382f81db6a97be9cfc6851159ccce201a9127d77ec71071d7561" -> "sha256:3f4c4b79484ab2980088730a52ffd42f96db2fbccfa31df3bf8f2374699e3c7f" [label=""];
  "sha256:c56e5beae838bb4aabae055cc800bd6ab78215b360f13e88f522fdc4cb2aef76" -> "sha256:3f4c4b79484ab2980088730a52ffd42f96db2fbccfa31df3bf8f2374699e3c7f" [label=""];
  "sha256:3f4c4b79484ab2980088730a52ffd42f96db2fbccfa31df3bf8f2374699e3c7f" -> "sha256:02a9ffa299947725a7cf25ff462f7ede292ba8dbcb87338eacf8cd3a0a2a5733" [label=""];
  "sha256:c56e5beae838bb4aabae055cc800bd6ab78215b360f13e88f522fdc4cb2aef76" -> "sha256:02a9ffa299947725a7cf25ff462f7ede292ba8dbcb87338eacf8cd3a0a2a5733" [label=""];
  "sha256:02a9ffa299947725a7cf25ff462f7ede292ba8dbcb87338eacf8cd3a0a2a5733" -> "sha256:a80d203a25928feeff9f15d98cb2a9852651b3ca7e0046008634bb2a670e5e73" [label=""];
  "sha256:a80d203a25928feeff9f15d98cb2a9852651b3ca7e0046008634bb2a670e5e73" -> "sha256:f046e1b94c3151fe7c0d8f024f2b8010241b370e65ea1f90812452fc4a7a110b" [label=""];
}

