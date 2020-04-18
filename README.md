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
 \   \  /           ---`-'     '---" '---'
  `----'

```

About
========
ERLVM is a version manager for erlang, which is inspired by rvm, nvm, gvm and erlvm tool.

Features
========
* Install/Uninstall Erlang versions with `erlvm install [tag]` where tag is "22.3.2"
* List latest release tags with `erlvm listall`.

Installing ERLVM
==========

To install:

    bash < <(curl -s -S -L https://raw.githubusercontent.com/keonjeo/erlvm/master/erlvm-installer)

Or if you are using zsh just change `bash` with `zsh`

Installing Erlang
=============
    erlvm install 22.3.2
    erlvm default 22.3.2
    erlvm use 22.3.2

Once this is done Erlang will be in the path and ready to use.

How to use ERLVM
=============

Usage: erlvm [command]

    Description:
    ERLVM is the Erlang Version Manager.

    Commands:
    version       - print the erlvm version number
    help          - display this usage text
    list_remote   - list available versions
    install       - install erlang version, pass -y can skip to check the dependence.
    uninstall     - uninstall erlang version
    remove        - remove the whole stuff related to this version
    list          - list installed erlang versions
    default       - set an erlang version as system default
    use           - select an erlang version to use
    download      - download erlang tar file
    system        - leaving only the system version of ERLANG available
    implode       - completely remove erlvm
