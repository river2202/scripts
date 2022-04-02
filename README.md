# scripts
Productivity scripts.


## gh
Open repo home page

## gp
Open compare and create PR page using current working branch

## gpr
Open repo's PR page to review others PR.

## gr [n]
Git recent branches, list most n(10) recent branches

## gs
Git switch, list most recent branches and select index to switch.

## xc
Open .xcworkspace or .xcodeproj if xcworkspace missing.

# Installaltion
Download the script file or copy the scripts to you loacl machine's folder which as added to PATH and run the script file inside local git repo folder.

You can use following script to download and make it  executable by following command:

`curl -L https://github.com/river2202/scripts/raw/master/gpr -o tmp && chmod +x tmp && mv tmp qpr`

You can change the file name(command name) to whatever you think work best for you.

# Mac setup
1. Homebrew
    tools using cask - setup.sh
    - Xcodes
    - Android Studio
    - VS Studio
    - Alfred
    - brew install cocoapods
    

2. git clone https://github.com/river2202/scripts -> Codes
4. iTerm2 + zsh + z + git + zsh-autosuggestions
    4.1 plugins=(git z macos)
    4.2 zsh-autosuggestions - https://github.com/zsh-users/zsh-autosuggestions
6. Shortcuts for delete/duplicate line
https://stackoverflow.com/questions/551383/xcode-duplicate-delete-line/28595785
http://funkworks.blogspot.com/2013/03/republishing-of-wwwerasetotheleftcompos.html
https://www.andr.mu/logs/xcode-custom-key-bindings/
https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/EventOverview/TextDefaultsBindings/TextDefaultsBindings.html


7. count swift lines
find . -name "*.swift" -print0 | xargs -0 wc -l
https://gist.github.com/Tokuriku/f7d6ce5a68d2154c28b0

or 
http://www.redotheweb.com/CodeFlower/

11. Android studio
11. Flutter 
