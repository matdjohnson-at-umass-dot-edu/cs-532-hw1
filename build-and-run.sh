
cd /build

make -f Makefile

chmod a+rwx mm-ijk
chmod a+rwx mm-ikj
chmod a+rwx mm-jik
chmod a+rwx mm-jki
chmod a+rwx mm-kij
chmod a+rwx mm-kji

for i in {1..10}; do
    echo "mm-ijk ${i}"
    ./mm-ijk
done
for i in {1..10}; do
    echo "mm-ikj ${i}"
    ./mm-ikj
done

for i in {1..10}; do
    echo "mm-jik ${i}"
    ./mm-jik
done
for i in {1..10}; do
    echo "mm-jki ${i}"
    ./mm-jki
done

for i in {1..10}; do
    echo "mm-kij ${i}"
    ./mm-kij
done
for i in {1..10}; do
    echo "mm-kji ${i}"
    ./mm-kji
done
