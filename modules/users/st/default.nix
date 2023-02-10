{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    (st.overrideAttrs (oldAttrs: rec {
      buildInputs = oldAttrs.buildInputs ++ [ harfbuzz ];
      patches = [
        ./patch/st-nordtheme-0.9.diff
        ./patch/st-ligatures-0.9.diff
      ];
      configFile = writeText "config.h" (builtins.readFile ./config/config.h);
      postPatch = "${oldAttrs.postPatch}\n cp ${configFile} ./config.def.h";
    }))
  ];

}
