## Install Java8 in WSL, in case you don't have it.

`sudo apt install openjdk-8-jdk-headless openjdk-8-doc`

## Set Up IntelliJ for Scala Development
* Go to Settings -> ProjectStructure -> choose SDK = 1,8 (WSL)
* Go to Settings -> Project Structure -> Project Settings -> Modules and ...
1. Mark Directory **app** → as Sources
2. Mark Directory **conf** → as Resources
3. Mark Directory **test** → as Tests
4. Mark Directory **test\resources** → as Tests Resources
5. Mark Directory **target\scala** → as Sources 


* Go to Settings -> Project Structure -> Project Settings -> Libraries -> Add -> From Maven
* enter -> `javax.inject:javax.inject:1` -> hit search button and after it's been found click OK

* Go to Settings -> Project Structure -> Project Settings -> Libraries -> Add -> Scala SDK

## Appearance
* enable Drag and drop with ALT

## Keymap
* Window/editor tab/reopened closed - cmnd+shift+T

## General
* change font size with wheel
* turn off drag and drop
* show virtual space at bottom
* ensure line feed at file end on Save
* turn off breadcrumbs
* turn off code folding
* turn off code folding for imports
* Smart Keys -> Reformat on pste -> None

## editor tabs
* disable show file icon and extension
* tab limit -> 20

## inspections
* turn off HTML, JSON
* 
## Emmet
* turn off Emmet

## Plugins
* git
* Yaml
* Requirements
* power mode 2
* ini
* .env file support

## Advanced Intellij tweaks for best perfomance

Go to Help -> Edit Custom Vm options and enter this:

* -server
* -Xms128m
* -Xmx2048m
* -XX:MaxPermSize=256m
* -XX:ReservedCodeCacheSize=256m
* -ea
* -Dsun.io.useCanonCaches=false
* -Djava.net.preferIPv4Stack=true
* -Djsse.enableSNIExtension=false
* -XX:+UseCodeCacheFlushing
* -XX:+UseConcMarkSweepGC
* -XX:SoftRefLRUPolicyMSPerMB=50
* -Dawt.useSystemAAFontSettings=lcd
* -Dproject.tree.structure.show.url=false

## In case of nothing-works-as-expected

First of all you should try File | Invalidate Caches and if it doesn't help, delete all IntelliJ and IDE related files and folder from the project folder (.idea, .settings, .classpath, dependency-reduced-pom).
Also, delete the target folder and re-import the project.

The above solution should fix the problem 
