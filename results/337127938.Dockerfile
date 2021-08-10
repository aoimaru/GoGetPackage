[app/sources/337127938.Dockerfile]
digraph {
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" [label="docker-image://docker.io/openrasp/centos7:latest" shape="ellipse"];
  "sha256:1a2673ed36d72ed17f673947e3c014739ea931e8de6f9b81c1cc74040ac924c6" [label="/bin/sh -c cd / \t&& curl \"https://packages.baidu.com/app/splunk-7.0.0-c8a78efdd40f-Linux-x86_64.tgz\" -o splunk.tar.gz \t&& tar -xf splunk.tar.gz \t&& rm -f splunk.tar.gz" shape="box"];
  "sha256:eb91da71ec5c3bdce2c2baec410079e0405b94306af37d77dca6651d3c83ba2c" [label="/bin/sh -c echo >> /splunk/etc/splunk-launch.conf \t&& echo OPTIMISTIC_ABOUT_FILE_LOCKING=1 >> /splunk/etc/splunk-launch.conf \t&& ln -s /splunk/bin/splunk /usr/bin" shape="box"];
  "sha256:233114acb473e94e05aed001ad3171786fd260eab5119022a0291c33baa8caf5" [label="local://context" shape="ellipse"];
  "sha256:c5a93347ab0ade97a85e64c939db6392eca057b6bc7d205cb9e407d145d5835c" [label="copy{src=/*.sh, dest=/root/}" shape="note"];
  "sha256:d979eb8f48e7896ab50dbf92f840f5db1a0f71a7c8a0635f7d977575a48998fb" [label="sha256:d979eb8f48e7896ab50dbf92f840f5db1a0f71a7c8a0635f7d977575a48998fb" shape="plaintext"];
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" -> "sha256:1a2673ed36d72ed17f673947e3c014739ea931e8de6f9b81c1cc74040ac924c6" [label=""];
  "sha256:1a2673ed36d72ed17f673947e3c014739ea931e8de6f9b81c1cc74040ac924c6" -> "sha256:eb91da71ec5c3bdce2c2baec410079e0405b94306af37d77dca6651d3c83ba2c" [label=""];
  "sha256:eb91da71ec5c3bdce2c2baec410079e0405b94306af37d77dca6651d3c83ba2c" -> "sha256:c5a93347ab0ade97a85e64c939db6392eca057b6bc7d205cb9e407d145d5835c" [label=""];
  "sha256:233114acb473e94e05aed001ad3171786fd260eab5119022a0291c33baa8caf5" -> "sha256:c5a93347ab0ade97a85e64c939db6392eca057b6bc7d205cb9e407d145d5835c" [label=""];
  "sha256:c5a93347ab0ade97a85e64c939db6392eca057b6bc7d205cb9e407d145d5835c" -> "sha256:d979eb8f48e7896ab50dbf92f840f5db1a0f71a7c8a0635f7d977575a48998fb" [label=""];
}

