[app/sources/325867674.Dockerfile]
digraph {
  "sha256:b7ede808980bc109d16eab94de1c6623de6f832376e4768ad471d62c53b75fae" [label="docker-image://10.11.3.8:5000/pai-images/deepo:v2.0" shape="ellipse"];
  "sha256:6caa7e5b0897100b8e7d69657d230ba79a63dc33e6b3c02696f3f9ca31a247bd" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:b1c0585bb12000f3f065e102be4d61c0be0f7948f5b7f58746fa9379709aecec" [label="/bin/sh -c pip install torch==0.4.1             numpy             tqdm             colorlog             boto3             pytorch-pretrained-bert==v0.6.0" shape="box"];
  "sha256:3604635e91b8d4c907307b46185aee398b052660b1876e93dff1014491134123" [label="sha256:3604635e91b8d4c907307b46185aee398b052660b1876e93dff1014491134123" shape="plaintext"];
  "sha256:b7ede808980bc109d16eab94de1c6623de6f832376e4768ad471d62c53b75fae" -> "sha256:6caa7e5b0897100b8e7d69657d230ba79a63dc33e6b3c02696f3f9ca31a247bd" [label=""];
  "sha256:6caa7e5b0897100b8e7d69657d230ba79a63dc33e6b3c02696f3f9ca31a247bd" -> "sha256:b1c0585bb12000f3f065e102be4d61c0be0f7948f5b7f58746fa9379709aecec" [label=""];
  "sha256:b1c0585bb12000f3f065e102be4d61c0be0f7948f5b7f58746fa9379709aecec" -> "sha256:3604635e91b8d4c907307b46185aee398b052660b1876e93dff1014491134123" [label=""];
}

