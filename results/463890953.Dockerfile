[app/sources/463890953.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:6afa577043370d12865d2a00c74197656e7d799cbfd9363aee2729737eb5cb92" [label="/bin/sh -c apt-get update && apt-get install -y  wget" shape="box"];
  "sha256:68056830339a3397c02ba73561c8fe2ab21160a5c06264f02cd19f5639faf1e9" [label="/bin/sh -c wget https://github.com/Cibiv/IQ-TREE/releases/download/v1.6.7/iqtree-1.6.7-Linux.tar.gz" shape="box"];
  "sha256:dc264e82ac128ba0648fca0af8c9ef8d2461c21a9a1b724c6b50950af49e7e55" [label="/bin/sh -c tar -xzvf iqtree-1.6.7-Linux.tar.gz" shape="box"];
  "sha256:a621851754c2af1769e049c1581699af36022ec60640efda8e864ba8fb07b37e" [label="/bin/sh -c rm iqtree-1.6.7-Linux.tar.gz" shape="box"];
  "sha256:6660fc0df02047ac9c82e0eeb36e2db121ba13954eb96f59860b17bf0d57112c" [label="sha256:6660fc0df02047ac9c82e0eeb36e2db121ba13954eb96f59860b17bf0d57112c" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:6afa577043370d12865d2a00c74197656e7d799cbfd9363aee2729737eb5cb92" [label=""];
  "sha256:6afa577043370d12865d2a00c74197656e7d799cbfd9363aee2729737eb5cb92" -> "sha256:68056830339a3397c02ba73561c8fe2ab21160a5c06264f02cd19f5639faf1e9" [label=""];
  "sha256:68056830339a3397c02ba73561c8fe2ab21160a5c06264f02cd19f5639faf1e9" -> "sha256:dc264e82ac128ba0648fca0af8c9ef8d2461c21a9a1b724c6b50950af49e7e55" [label=""];
  "sha256:dc264e82ac128ba0648fca0af8c9ef8d2461c21a9a1b724c6b50950af49e7e55" -> "sha256:a621851754c2af1769e049c1581699af36022ec60640efda8e864ba8fb07b37e" [label=""];
  "sha256:a621851754c2af1769e049c1581699af36022ec60640efda8e864ba8fb07b37e" -> "sha256:6660fc0df02047ac9c82e0eeb36e2db121ba13954eb96f59860b17bf0d57112c" [label=""];
}

