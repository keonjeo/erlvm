# erlvm

```
                     ,--,                      ____ 
                   ,--.'|                    ,'  , `.
            __  ,-.|  | :                 ,-+-,.' _ |
          ,' ,'/ /|:  : '       .---.  ,-+-. ;   , ||
   ,---.  '  | |' ||  ' |     /.  ./| ,--.'|'   |  ||
  /     \ |  |   ,''  | |   .-' . ' ||   |  ,', |  |,
 /    /  |'  :  /  |  | :  /___/ \: ||   | /  | |--'
.    ' / ||  | '   '  : |__.   \  ' .|   : |  | ,
'   ;   /|;  : |   |  | '.'|\   \   '|   : |  |/
'   |  / ||  , ;   ;  :    ; \   \   |   | |`-'
|   :    | ---'    |  ,   /   \   \ ||   ;/ 
 \   \  /           ---`-'     '---" '---'       by keonjeo
  `----'

```


About
========
erlvm is a version manager for erlang, which is inspired by rvm, nvm, gvm and exvm tool.

Features
========
* Install/Uninstall Erlang versions with `erlvm install [tag]` where tag is "22.3.1"
* List latest release tags with `erlvm listall`. Use `--all` to list weekly as well.

Installing erlvm
==========

To install:

    bash < <(curl -s -S -L https://raw.githubusercontent.com/keonjeo/erlvm/master/binscripts/erlvm-installer)

Or if you are using zsh just change `bash` with `zsh`

Installing Erlang
=============
    erlvm install 22.3.1
    erlvm use 22.3.1 [--default]

Once this is done erlang will be in the path and ready to use.
