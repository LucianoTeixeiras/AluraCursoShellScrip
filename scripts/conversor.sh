#!/bin/bash

#Funcao de Convereter Imagem
convert_image(){
cd ~/git/AluraCursoShellScrip/imagens-livross
if [ ! -d png ]
then
mkdir png
fi

for imagem in *.jpg
	do
		local imagem_semex=$(ls $imagem | awk -F. '{print $1}')
		convert $imagem_semex.jpg png/$imagem_semex.png
done
}

convert_image 2>logs/erros.log
if [ $? -eq 0 ]
then
	echo "Convercao Realizada com Sucesso!"
else
	echo "Houve uma falha na Convercao!"
fi