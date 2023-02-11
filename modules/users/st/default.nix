{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    (st.overrideAttrs (oldAttrs: rec {
      buildInputs = oldAttrs.buildInputs ++ [ harfbuzz ];
      patches = [
        (fetchpatch {
          url = "https://st.suckless.org/patches/scrollback/st-scrollback-0.8.5.diff";
          sha256 = "0mgsklws6jsrngcsy64zmr604qsdlpd5pqsa3pci7j3gn8im4zyw";
        })

        (fetchpatch {
          url = "https://st.suckless.org/patches/ligatures/0.9/st-ligatures-scrollback-20221120-0.9.diff";
          sha256 = "0yxp83fkmj3sral609x9vb7ym09mkz2nax1952bl2lv9r0a8s6b5";
        })

      ];
      configFile = writeText "config.h" (builtins.readFile ./config/config.h);
      postPatch = "${oldAttrs.postPatch}\n cp ${configFile} ./config.def.h";
    }))
  ];

}
