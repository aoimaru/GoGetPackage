[app/sources/206053686.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" [label="/bin/sh -c apt-get update && apt-get install nginx-full -y" shape="box"];
  "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" [label="/bin/sh -c rm -rf /etc/nginx" shape="box"];
  "sha256:d4d0b4268de9dbd9a5b1fbb35641613c3850a406e3e62dbd3378976963d22fd4" [label="local://context" shape="ellipse"];
  "sha256:e2b22e79dfc8f72730dd44d6fee6cfc1183d71ae8e03d9c29543a884558b314b" [label="copy{src=/etc, dest=/etc/nginx}" shape="note"];
  "sha256:928aa6ea58e36802c7bfa50e853e52f7344b008650c75d825dae513972c5f64e" [label="/bin/sh -c chown -R root:root /etc/nginx" shape="box"];
  "sha256:94d67ada61b1913daf531385d517afc28271526e2134b0533d04835c4d68f091" [label="/bin/sh -c /usr/sbin/nginx -qt" shape="box"];
  "sha256:8bf83d8dbdcfb55aa423eec0f3466795b60f6a33580712ac4f2bf393be9ed789" [label="/bin/sh -c mkdir /www" shape="box"];
  "sha256:da98b2ea1cab3358a753d9fd930d5c34633a91c947c685af29d2ae13e545ba05" [label="sha256:da98b2ea1cab3358a753d9fd930d5c34633a91c947c685af29d2ae13e545ba05" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" [label=""];
  "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" -> "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" [label=""];
  "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" -> "sha256:e2b22e79dfc8f72730dd44d6fee6cfc1183d71ae8e03d9c29543a884558b314b" [label=""];
  "sha256:d4d0b4268de9dbd9a5b1fbb35641613c3850a406e3e62dbd3378976963d22fd4" -> "sha256:e2b22e79dfc8f72730dd44d6fee6cfc1183d71ae8e03d9c29543a884558b314b" [label=""];
  "sha256:e2b22e79dfc8f72730dd44d6fee6cfc1183d71ae8e03d9c29543a884558b314b" -> "sha256:928aa6ea58e36802c7bfa50e853e52f7344b008650c75d825dae513972c5f64e" [label=""];
  "sha256:928aa6ea58e36802c7bfa50e853e52f7344b008650c75d825dae513972c5f64e" -> "sha256:94d67ada61b1913daf531385d517afc28271526e2134b0533d04835c4d68f091" [label=""];
  "sha256:94d67ada61b1913daf531385d517afc28271526e2134b0533d04835c4d68f091" -> "sha256:8bf83d8dbdcfb55aa423eec0f3466795b60f6a33580712ac4f2bf393be9ed789" [label=""];
  "sha256:8bf83d8dbdcfb55aa423eec0f3466795b60f6a33580712ac4f2bf393be9ed789" -> "sha256:da98b2ea1cab3358a753d9fd930d5c34633a91c947c685af29d2ae13e545ba05" [label=""];
}

