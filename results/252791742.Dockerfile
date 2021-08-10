[app/sources/252791742.Dockerfile]
digraph {
  "sha256:7f30dcfa3bf3c2e3c5a3c5893c01438417decb9705a3558fc1b5641c5014d1f0" [label="docker-image://docker.io/damajor/dockerimgs:oracle-java7" shape="ellipse"];
  "sha256:77557fb8aa980ca2267a7d762e9f38d2c664ac4a5b6c177741b44416993f116f" [label="/bin/sh -c apt-get update && apt-get install -y unzip wget" shape="box"];
  "sha256:24eb79a9b633f75ad60a38f3b1e1823a46a25a024f8f1efb93ec6a256d2c5e3c" [label="/bin/sh -c wget --user-agent=\"fido\" \\--output-document /opt/wso2mb.zip \\--referer=\"http://connect.wso2.com/wso2/getform/reg/new_product_download\" http://product-dist.wso2.com/products/message-broker/2.2.0/wso2mb-2.2.0.zip" shape="box"];
  "sha256:d0c8bf55f175e54ed5dbfde5fbfe832bb1ed728df1d66ab00cf29dd33760b362" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:8409fb252578badbc5644a2960f5741cdf02fddda8dc669c079def085c3c65ad" [label="/bin/sh -c unzip /opt/wso2mb.zip -d /opt" shape="box"];
  "sha256:d558fd064221151924a1356714db0fe357805a28a9af24c3f60459bb76143933" [label="/bin/sh -c rm -fr /opt/wso2mb.zip" shape="box"];
  "sha256:6a1b8e37a217fa50b21a3dc23ee4b1215d9407d0b210ca784bad578a0051049e" [label="/bin/sh -c echo \"export PATH=${JAVA_HOME}/bin:${PATH}\" >> /etc/bash.bashrc" shape="box"];
  "sha256:4c98a4a21e3841f24c667d00852ec89ad775976f726f012e438760c6ab99cbe6" [label="sha256:4c98a4a21e3841f24c667d00852ec89ad775976f726f012e438760c6ab99cbe6" shape="plaintext"];
  "sha256:7f30dcfa3bf3c2e3c5a3c5893c01438417decb9705a3558fc1b5641c5014d1f0" -> "sha256:77557fb8aa980ca2267a7d762e9f38d2c664ac4a5b6c177741b44416993f116f" [label=""];
  "sha256:77557fb8aa980ca2267a7d762e9f38d2c664ac4a5b6c177741b44416993f116f" -> "sha256:24eb79a9b633f75ad60a38f3b1e1823a46a25a024f8f1efb93ec6a256d2c5e3c" [label=""];
  "sha256:24eb79a9b633f75ad60a38f3b1e1823a46a25a024f8f1efb93ec6a256d2c5e3c" -> "sha256:d0c8bf55f175e54ed5dbfde5fbfe832bb1ed728df1d66ab00cf29dd33760b362" [label=""];
  "sha256:d0c8bf55f175e54ed5dbfde5fbfe832bb1ed728df1d66ab00cf29dd33760b362" -> "sha256:8409fb252578badbc5644a2960f5741cdf02fddda8dc669c079def085c3c65ad" [label=""];
  "sha256:8409fb252578badbc5644a2960f5741cdf02fddda8dc669c079def085c3c65ad" -> "sha256:d558fd064221151924a1356714db0fe357805a28a9af24c3f60459bb76143933" [label=""];
  "sha256:d558fd064221151924a1356714db0fe357805a28a9af24c3f60459bb76143933" -> "sha256:6a1b8e37a217fa50b21a3dc23ee4b1215d9407d0b210ca784bad578a0051049e" [label=""];
  "sha256:6a1b8e37a217fa50b21a3dc23ee4b1215d9407d0b210ca784bad578a0051049e" -> "sha256:4c98a4a21e3841f24c667d00852ec89ad775976f726f012e438760c6ab99cbe6" [label=""];
}

