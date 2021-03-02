data=$(date +%Y_%m_%d)
mkdir /tmp/$data
atual=$(pwd)
cp -r $atual /tmp/$data

echo "Arquivos copiados"
