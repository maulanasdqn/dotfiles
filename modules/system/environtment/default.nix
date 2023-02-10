{ config, ... }:
{
  environment.variables = {
    PATH="$HOME/.npm-packages/bin:$PATH";
  };
}
