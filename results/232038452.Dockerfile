[app/sources/232038452.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:830acc55aa0dc503254549bf1ccba8980adb8cac6f9c34dac21c61c3fa7d81fa" [label="/bin/sh -c apt-get update     && apt-get upgrade -y     && apt-get install -y" shape="box"];
  "sha256:841f28e96d7661c4f4d105adeafe441bc6ca91f11bda235f65b16708d7868653" [label="/bin/sh -c apt-get install -y apt-utils" shape="box"];
  "sha256:2026db035136ad4418b687097d7accfd1715ba05bf4779172ae70be82db74d24" [label="/bin/sh -c groupadd webapps" shape="box"];
  "sha256:81a603b25b55a2c09cd6667280595f094b1bb770fc66a866776e2c985201627d" [label="/bin/sh -c useradd cloudcv -G webapps" shape="box"];
  "sha256:1118f48ac9866847ff1de40000d0369d3723d9589b94e6a11c06eb06b25d7472" [label="/bin/sh -c mkdir -p /var/log/cloudcv/ && chown -R cloudcv /var/log/cloudcv/ && chmod -R u+rX /var/log/cloudcv/" shape="box"];
  "sha256:1da1c07c1e55fc3faee34fd1a6c00fff6731708333479ada325eaa40cb9a37b9" [label="/bin/sh -c mkdir -p /var/run/cloudcv/ && chown -R cloudcv /var/run/cloudcv/ && chmod -R u+rX /var/run/cloudcv/" shape="box"];
  "sha256:f4fd95ec7409105c9646e185b66775edbd29e167b59b51ed330462fe54c93211" [label="mkdir{path=/code}" shape="note"];
  "sha256:6bc95947cba745806221c3f8c79e924815a70437d9cbfb82174bbcf939bea800" [label="local://context" shape="ellipse"];
  "sha256:dce1d221cb5c46a38ed0ed99b53184c73b84caf40329a095223097af08557ed5" [label="copy{src=/requirements, dest=/code/requirements}" shape="note"];
  "sha256:606ee2f58a163765a824eb84d382c4efc3b4f5523ec2749633757fdc534e0371" [label="/bin/sh -c pip install -r requirements/prod.txt" shape="box"];
  "sha256:da39145a1991a9c7c55717db1f6f6501bb717a5bbc46deb4c5b368e645aca1f6" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:4f659810d50bb8f72b9404ab6ceccb0846d1862676fb072239c2a646802f4459" [label="sha256:4f659810d50bb8f72b9404ab6ceccb0846d1862676fb072239c2a646802f4459" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:830acc55aa0dc503254549bf1ccba8980adb8cac6f9c34dac21c61c3fa7d81fa" [label=""];
  "sha256:830acc55aa0dc503254549bf1ccba8980adb8cac6f9c34dac21c61c3fa7d81fa" -> "sha256:841f28e96d7661c4f4d105adeafe441bc6ca91f11bda235f65b16708d7868653" [label=""];
  "sha256:841f28e96d7661c4f4d105adeafe441bc6ca91f11bda235f65b16708d7868653" -> "sha256:2026db035136ad4418b687097d7accfd1715ba05bf4779172ae70be82db74d24" [label=""];
  "sha256:2026db035136ad4418b687097d7accfd1715ba05bf4779172ae70be82db74d24" -> "sha256:81a603b25b55a2c09cd6667280595f094b1bb770fc66a866776e2c985201627d" [label=""];
  "sha256:81a603b25b55a2c09cd6667280595f094b1bb770fc66a866776e2c985201627d" -> "sha256:1118f48ac9866847ff1de40000d0369d3723d9589b94e6a11c06eb06b25d7472" [label=""];
  "sha256:1118f48ac9866847ff1de40000d0369d3723d9589b94e6a11c06eb06b25d7472" -> "sha256:1da1c07c1e55fc3faee34fd1a6c00fff6731708333479ada325eaa40cb9a37b9" [label=""];
  "sha256:1da1c07c1e55fc3faee34fd1a6c00fff6731708333479ada325eaa40cb9a37b9" -> "sha256:f4fd95ec7409105c9646e185b66775edbd29e167b59b51ed330462fe54c93211" [label=""];
  "sha256:f4fd95ec7409105c9646e185b66775edbd29e167b59b51ed330462fe54c93211" -> "sha256:dce1d221cb5c46a38ed0ed99b53184c73b84caf40329a095223097af08557ed5" [label=""];
  "sha256:6bc95947cba745806221c3f8c79e924815a70437d9cbfb82174bbcf939bea800" -> "sha256:dce1d221cb5c46a38ed0ed99b53184c73b84caf40329a095223097af08557ed5" [label=""];
  "sha256:dce1d221cb5c46a38ed0ed99b53184c73b84caf40329a095223097af08557ed5" -> "sha256:606ee2f58a163765a824eb84d382c4efc3b4f5523ec2749633757fdc534e0371" [label=""];
  "sha256:606ee2f58a163765a824eb84d382c4efc3b4f5523ec2749633757fdc534e0371" -> "sha256:da39145a1991a9c7c55717db1f6f6501bb717a5bbc46deb4c5b368e645aca1f6" [label=""];
  "sha256:6bc95947cba745806221c3f8c79e924815a70437d9cbfb82174bbcf939bea800" -> "sha256:da39145a1991a9c7c55717db1f6f6501bb717a5bbc46deb4c5b368e645aca1f6" [label=""];
  "sha256:da39145a1991a9c7c55717db1f6f6501bb717a5bbc46deb4c5b368e645aca1f6" -> "sha256:4f659810d50bb8f72b9404ab6ceccb0846d1862676fb072239c2a646802f4459" [label=""];
}

