[app/sources/299142312.Dockerfile]
digraph {
  "sha256:8168cf9b4a04be45df4cea55d984b89a6c082a191d1f6f83bc37f652c615af0f" [label="docker-image://docker.io/alvrme/alpine-android-base:latest" shape="ellipse"];
  "sha256:c8471f3e19c2b84d3cdf190a7ebe1fa4822fb793d657d063b28e610205a55e29" [label="/bin/sh -c ${ANDROID_HOME}/tools/bin/sdkmanager \"build-tools;${BUILD_TOOLS}\" \"platforms;android-${TARGET_SDK}\"" shape="box"];
  "sha256:c74e56829f341fcd59100104ce39bf778945159896e5b9c6905022aefe5244c6" [label="sha256:c74e56829f341fcd59100104ce39bf778945159896e5b9c6905022aefe5244c6" shape="plaintext"];
  "sha256:8168cf9b4a04be45df4cea55d984b89a6c082a191d1f6f83bc37f652c615af0f" -> "sha256:c8471f3e19c2b84d3cdf190a7ebe1fa4822fb793d657d063b28e610205a55e29" [label=""];
  "sha256:c8471f3e19c2b84d3cdf190a7ebe1fa4822fb793d657d063b28e610205a55e29" -> "sha256:c74e56829f341fcd59100104ce39bf778945159896e5b9c6905022aefe5244c6" [label=""];
}

