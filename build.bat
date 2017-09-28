rem
rem  build class/*
rem
if not exist class md class
dir /s /B *.java > sources.txt
javac -d class -Xlint:unchecked @sources.txt 

rem
rem produce jmap.jar
rem
if not exist lib md lib
cd class
jar cvfm ../lib/jmap.jar ../manifest.mf .
cd ..

rem
rem produce docs/
rem
javadoc -d docs @sources.txt
