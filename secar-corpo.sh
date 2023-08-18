#!/bin/bash

. funcoes.sh;

for i in $(seq 1 3); do
	exercicio "Supra" 20s;

	sleep 7s;

	exercicio "Pulo com giro" 20s;

	sleep 7s;

	exercicio "Infra" 20s;

	sleep 7s;

	exercicio "Polichinelo com giro" 20s;

	sleep 7s;

	echo "Fim da ${i}ª série!";
	echo;
done;

exit 0;