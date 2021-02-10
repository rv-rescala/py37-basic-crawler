rm -rf python
rm -rf basic-crawler.zip
pyenv global 3.7.7
rm -rf python
mkdir -p python
pip install -r requirements.txt -t ./python
zip -r basic-crawler.zip python/
aws s3 cp basic-crawler.zip s3://libs-lambda/py37/
