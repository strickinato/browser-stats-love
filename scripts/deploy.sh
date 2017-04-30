DIST_ID=E2B6S4D12BYQC1
BUILD_DIR=./build

middleman build --build-dir=$BUILD_DIR


if [ $? -eq 0 ]; then
    aws s3 cp $BUILD_DIR s3://browser-stats-static --recursive
    aws cloudfront create-invalidation --distribution-id=$DIST_ID --paths=/index.html
else
    echo 'middleman didnt build yo'
fi
