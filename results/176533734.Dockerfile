[app/sources/176533734.Dockerfile]
digraph {
  "sha256:b8910018ceacaae644967f8146db9178b2b249c183bf52ef45c1afdea3597743" [label="docker-image://docker.io/crossbario/autobahn-python-armhf:latest" shape="ellipse"];
  "sha256:fe30c7a42dda56400a42afdfc34dd36aee2e4c6969f5b245cdd93e741acbd9b9" [label="/bin/sh -c pip install pyopenssl service_identity netifaces RPi.GPIO Adafruit_LED_Backpack" shape="box"];
  "sha256:8a2b146e6519a57d758b42e898119cbb93f922b779da7c7494f9dbef5b047f20" [label="/bin/sh -c rm -rf /app/*" shape="box"];
  "sha256:f3b99168a0e46c9a566c6620bea7b017923047e49696c142b101d42dfd82b337" [label="local://context" shape="ellipse"];
  "sha256:d1f8f23d51260f747a2825de065bd4ab93da4aacf5ed4632fb958c9582637a85" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:70dffb7eacc9bf200d55f25ee917a16ad340a9330da0bc2df6a92b6eaa799f63" [label="sha256:70dffb7eacc9bf200d55f25ee917a16ad340a9330da0bc2df6a92b6eaa799f63" shape="plaintext"];
  "sha256:b8910018ceacaae644967f8146db9178b2b249c183bf52ef45c1afdea3597743" -> "sha256:fe30c7a42dda56400a42afdfc34dd36aee2e4c6969f5b245cdd93e741acbd9b9" [label=""];
  "sha256:fe30c7a42dda56400a42afdfc34dd36aee2e4c6969f5b245cdd93e741acbd9b9" -> "sha256:8a2b146e6519a57d758b42e898119cbb93f922b779da7c7494f9dbef5b047f20" [label=""];
  "sha256:8a2b146e6519a57d758b42e898119cbb93f922b779da7c7494f9dbef5b047f20" -> "sha256:d1f8f23d51260f747a2825de065bd4ab93da4aacf5ed4632fb958c9582637a85" [label=""];
  "sha256:f3b99168a0e46c9a566c6620bea7b017923047e49696c142b101d42dfd82b337" -> "sha256:d1f8f23d51260f747a2825de065bd4ab93da4aacf5ed4632fb958c9582637a85" [label=""];
  "sha256:d1f8f23d51260f747a2825de065bd4ab93da4aacf5ed4632fb958c9582637a85" -> "sha256:70dffb7eacc9bf200d55f25ee917a16ad340a9330da0bc2df6a92b6eaa799f63" [label=""];
}

