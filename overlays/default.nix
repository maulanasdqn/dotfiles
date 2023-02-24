_final: prev: {

  dwm = prev.dwm.overrideAttrs (old: rec {
    patches = [
      ./dwm/patch/dwm-systray-6.4.diff
      ./dwm/patch/dwm-cool-autostart-6.2.diff
      ./dwm/patch/dwm-functionalgaps+pertag-6.2.diff
    ];
    configFile = prev.writeText "config.h" (builtins.readFile ./dwm/config.h);
    postPatch = old.postPatch or "" + "\necho 'Using own config file...'\n cp ${configFile} ./config.def.h";
  });

}
