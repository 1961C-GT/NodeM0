EXPORT_VERSION=$1

echo "Exporting '$EXPORT_VERSION'..."
tar -jcvf ./tar/$EXPORT_VERSION.tar.bz2 $EXPORT_VERSION
echo "Checksum: " $(shasum -a 256 ./tar/$EXPORT_VERSION.tar.bz2)
echo "Size:     " $(stat -f%z ./tar/$EXPORT_VERSION.tar.bz2)