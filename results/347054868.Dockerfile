[app/sources/347054868.Dockerfile]
digraph {
  "sha256:d4c17d6a75cf82fc4cb46733a4392031a866e6370b9c8209e5ce6025205185a0" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:2cd48d9310e6f244c7f50bfddf9df650102717196e9d5f92504b5f2141f055aa" [label="copy{src=/, dest=/root}" shape="note"];
  "sha256:535e18c949ea4970503bb1c7ff499d59e0f811232af0d9110fe04087d843aa42" [label="/bin/sh -c yum install -y wget" shape="box"];
  "sha256:aae0e6e73e7df527d2a8523a51ff76a83ac752598525dcf63055b3858c8ee373" [label="/bin/sh -c cd /etc/yum.repos.d/; wget https://download.opensuse.org/repositories/home:hpcoder1/CentOS_7/home:hpcoder1.repo" shape="box"];
  "sha256:54d947bfc6a717787bb4d831baf5b6f8b9f9005018069b6b41afefb57c215c45" [label="/bin/sh -c yum install -y scidavis xorg-x11-server-Xvfb" shape="box"];
  "sha256:3f9d6971806af3d3f24ec6b13528106d1e00e1efa46249246b4587ae80a17425" [label="/bin/sh -c sh /root/scidavisSmoke.sh" shape="box"];
  "sha256:a62aff09e3c4d1cce221aafdf8335bb4f9a12f48887c7f3bfe5c93aaf1a56be3" [label="sha256:a62aff09e3c4d1cce221aafdf8335bb4f9a12f48887c7f3bfe5c93aaf1a56be3" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:2cd48d9310e6f244c7f50bfddf9df650102717196e9d5f92504b5f2141f055aa" [label=""];
  "sha256:d4c17d6a75cf82fc4cb46733a4392031a866e6370b9c8209e5ce6025205185a0" -> "sha256:2cd48d9310e6f244c7f50bfddf9df650102717196e9d5f92504b5f2141f055aa" [label=""];
  "sha256:2cd48d9310e6f244c7f50bfddf9df650102717196e9d5f92504b5f2141f055aa" -> "sha256:535e18c949ea4970503bb1c7ff499d59e0f811232af0d9110fe04087d843aa42" [label=""];
  "sha256:535e18c949ea4970503bb1c7ff499d59e0f811232af0d9110fe04087d843aa42" -> "sha256:aae0e6e73e7df527d2a8523a51ff76a83ac752598525dcf63055b3858c8ee373" [label=""];
  "sha256:aae0e6e73e7df527d2a8523a51ff76a83ac752598525dcf63055b3858c8ee373" -> "sha256:54d947bfc6a717787bb4d831baf5b6f8b9f9005018069b6b41afefb57c215c45" [label=""];
  "sha256:54d947bfc6a717787bb4d831baf5b6f8b9f9005018069b6b41afefb57c215c45" -> "sha256:3f9d6971806af3d3f24ec6b13528106d1e00e1efa46249246b4587ae80a17425" [label=""];
  "sha256:3f9d6971806af3d3f24ec6b13528106d1e00e1efa46249246b4587ae80a17425" -> "sha256:a62aff09e3c4d1cce221aafdf8335bb4f9a12f48887c7f3bfe5c93aaf1a56be3" [label=""];
}

