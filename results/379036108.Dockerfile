[app/sources/379036108.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:4e926c379f1ad68a2a593a8d6b43b7842ec56bc8637fb6b24a7847e6c3709353" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:5329e1ee368951eb6138eb219d45ec66f1dd373c9e7da32d175f8a7183b69352" [label="/bin/sh -c apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git" shape="box"];
  "sha256:4d00f109e211155b631e6f52689d23b6693e27b5795aae232c81cfe0c7f86380" [label="/bin/sh -c git clone https://github.com/tpruvot/cpuminer-multi -b linux" shape="box"];
  "sha256:6033dd74f30000831ee19782e1380f9143397accca40362674051fd7104172f6" [label="/bin/sh -c cd cpuminer-multi && ./build.sh" shape="box"];
  "sha256:e1343566ad945863ace9f93b5f75c63e950e50ede7e905e6b30b1b7f35a79377" [label="mkdir{path=/cpuminer-multi}" shape="note"];
  "sha256:0eae14f4240c032c0bf83a8603a3da83b33a0e8ead65cd4d77541c593051b711" [label="sha256:0eae14f4240c032c0bf83a8603a3da83b33a0e8ead65cd4d77541c593051b711" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:4e926c379f1ad68a2a593a8d6b43b7842ec56bc8637fb6b24a7847e6c3709353" [label=""];
  "sha256:4e926c379f1ad68a2a593a8d6b43b7842ec56bc8637fb6b24a7847e6c3709353" -> "sha256:5329e1ee368951eb6138eb219d45ec66f1dd373c9e7da32d175f8a7183b69352" [label=""];
  "sha256:5329e1ee368951eb6138eb219d45ec66f1dd373c9e7da32d175f8a7183b69352" -> "sha256:4d00f109e211155b631e6f52689d23b6693e27b5795aae232c81cfe0c7f86380" [label=""];
  "sha256:4d00f109e211155b631e6f52689d23b6693e27b5795aae232c81cfe0c7f86380" -> "sha256:6033dd74f30000831ee19782e1380f9143397accca40362674051fd7104172f6" [label=""];
  "sha256:6033dd74f30000831ee19782e1380f9143397accca40362674051fd7104172f6" -> "sha256:e1343566ad945863ace9f93b5f75c63e950e50ede7e905e6b30b1b7f35a79377" [label=""];
  "sha256:e1343566ad945863ace9f93b5f75c63e950e50ede7e905e6b30b1b7f35a79377" -> "sha256:0eae14f4240c032c0bf83a8603a3da83b33a0e8ead65cd4d77541c593051b711" [label=""];
}

