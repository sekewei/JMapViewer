rem
rem  build class/*
rem
if not exist class md class
javac -d class -Xlint:unchecked org/openstreetmap/gui/jmapviewer/*.java

if not exist lib md lib
cd class
jar cvf ../lib/jmap.jar .
cd ..
