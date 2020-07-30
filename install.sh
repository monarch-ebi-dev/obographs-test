VERSION=0.2.1-dev
OBOGRAPHSJAR=obographs-0.2.1.jar

mvn install:install-file -Dfile=$OBOGRAPHSJAR -DgroupId=com.nico.code -DartifactId=obographstest -Dversion=$VERSION -Dpackaging=jar