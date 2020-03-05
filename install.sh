VERSION=1.0.1
OBOGRAPHSJAR=obographs-$VERSION.zip

mvn install:install-file -Dfile=$OBOGRAPHSJAR -DgroupId=com.nico.code -DartifactId=obographstest -Dversion=$VERSION -Dpackaging=jar