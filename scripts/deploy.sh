middleman build

if [ $? -eq 0 ]; then
    aws s3 cp ./build s3://browser-stats-static --recursive
else
    echo 'middleman didnt build yo'
fi
