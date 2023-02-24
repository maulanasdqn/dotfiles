{config, pkgs, ...}:
{
programs.tmux = {

	  enable = true;
	  clock24 = true;
	  plugins = with pkgs.tmuxPlugins; [
		  sensible
		  yank
		{
			plugin = dracula;
			extraConfig = ''
				set -g @dracula-show-battery true
				set -g @dracula-show-powerline true
				set -g @dracula-refresh-rate 10
			'';
		}
	];

	extraConfig = ''
		set -g mouse on
	'';
  };
}
