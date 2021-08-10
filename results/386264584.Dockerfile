[app/sources/386264584.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:45810355f2e79a5805f0adae83de8ad4b958f350967f9b486e8cf591309f1136" [label="/bin/sh -c yum install -y supervisor x11vnc openbox fbpanel xorg-x11-server-utils xterm dejavu-sans-fonts dejavu-serif-fonts" shape="box"];
  "sha256:8ccb77c39c56fc91d5b8b84a46eaf492f6ff602d8e724902811125d0dbf4470f" [label="/bin/sh -c mkdir /.vnc && x11vnc -storepasswd vnc-passwd ~/.vnc/passwd" shape="box"];
  "sha256:2079424cc005cf4083d2bc77bd7f80674af91741d99acd86d61fc34f6be95cc7" [label="local://context" shape="ellipse"];
  "sha256:93e093a070f410d4cbf6a91e7252e540afdabb471fb62dd56e0d5a786d73781f" [label="copy{src=/openbox.autostart, dest=/.config/openbox/autostart}" shape="note"];
  "sha256:b2712f794163f3436345befad65c0e634c2646eaa93b07f9895222da1726337e" [label="copy{src=/openbox.rc.xml, dest=/.config/openbox/rc.xml}" shape="note"];
  "sha256:d2d44e7728b6f69a1757f16d30fc0f175201dde74c5bc37b8ac634f480ae0081" [label="/bin/sh -c mkdir /.config/fbpanel && cp /usr/share/fbpanel/default /.config/fbpanel/default" shape="box"];
  "sha256:43938d2f18b95b5962bb885570bed660d9e97c6a8564f8d627cd28545f324ada" [label="copy{src=/supervisord.conf, dest=/etc/}" shape="note"];
  "sha256:b6d1cbf90d1d13940341c2bb0e9fb3119d16225150d89c375c6919045ef4936d" [label="copy{src=/supervisor.xvfb.conf, dest=/etc/supervisord.d/}" shape="note"];
  "sha256:3aee29a7583a8c8efc0216099411ce67de76cf6f3495b6058c71c29f0f2b3d9e" [label="copy{src=/supervisor.x11vnc.conf, dest=/etc/supervisord.d/}" shape="note"];
  "sha256:fc95bbab184dae528e9d45b8c904c51c989603f7883b82b94086820f7175a85d" [label="sha256:fc95bbab184dae528e9d45b8c904c51c989603f7883b82b94086820f7175a85d" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:45810355f2e79a5805f0adae83de8ad4b958f350967f9b486e8cf591309f1136" [label=""];
  "sha256:45810355f2e79a5805f0adae83de8ad4b958f350967f9b486e8cf591309f1136" -> "sha256:8ccb77c39c56fc91d5b8b84a46eaf492f6ff602d8e724902811125d0dbf4470f" [label=""];
  "sha256:8ccb77c39c56fc91d5b8b84a46eaf492f6ff602d8e724902811125d0dbf4470f" -> "sha256:93e093a070f410d4cbf6a91e7252e540afdabb471fb62dd56e0d5a786d73781f" [label=""];
  "sha256:2079424cc005cf4083d2bc77bd7f80674af91741d99acd86d61fc34f6be95cc7" -> "sha256:93e093a070f410d4cbf6a91e7252e540afdabb471fb62dd56e0d5a786d73781f" [label=""];
  "sha256:93e093a070f410d4cbf6a91e7252e540afdabb471fb62dd56e0d5a786d73781f" -> "sha256:b2712f794163f3436345befad65c0e634c2646eaa93b07f9895222da1726337e" [label=""];
  "sha256:2079424cc005cf4083d2bc77bd7f80674af91741d99acd86d61fc34f6be95cc7" -> "sha256:b2712f794163f3436345befad65c0e634c2646eaa93b07f9895222da1726337e" [label=""];
  "sha256:b2712f794163f3436345befad65c0e634c2646eaa93b07f9895222da1726337e" -> "sha256:d2d44e7728b6f69a1757f16d30fc0f175201dde74c5bc37b8ac634f480ae0081" [label=""];
  "sha256:d2d44e7728b6f69a1757f16d30fc0f175201dde74c5bc37b8ac634f480ae0081" -> "sha256:43938d2f18b95b5962bb885570bed660d9e97c6a8564f8d627cd28545f324ada" [label=""];
  "sha256:2079424cc005cf4083d2bc77bd7f80674af91741d99acd86d61fc34f6be95cc7" -> "sha256:43938d2f18b95b5962bb885570bed660d9e97c6a8564f8d627cd28545f324ada" [label=""];
  "sha256:43938d2f18b95b5962bb885570bed660d9e97c6a8564f8d627cd28545f324ada" -> "sha256:b6d1cbf90d1d13940341c2bb0e9fb3119d16225150d89c375c6919045ef4936d" [label=""];
  "sha256:2079424cc005cf4083d2bc77bd7f80674af91741d99acd86d61fc34f6be95cc7" -> "sha256:b6d1cbf90d1d13940341c2bb0e9fb3119d16225150d89c375c6919045ef4936d" [label=""];
  "sha256:b6d1cbf90d1d13940341c2bb0e9fb3119d16225150d89c375c6919045ef4936d" -> "sha256:3aee29a7583a8c8efc0216099411ce67de76cf6f3495b6058c71c29f0f2b3d9e" [label=""];
  "sha256:2079424cc005cf4083d2bc77bd7f80674af91741d99acd86d61fc34f6be95cc7" -> "sha256:3aee29a7583a8c8efc0216099411ce67de76cf6f3495b6058c71c29f0f2b3d9e" [label=""];
  "sha256:3aee29a7583a8c8efc0216099411ce67de76cf6f3495b6058c71c29f0f2b3d9e" -> "sha256:fc95bbab184dae528e9d45b8c904c51c989603f7883b82b94086820f7175a85d" [label=""];
}

