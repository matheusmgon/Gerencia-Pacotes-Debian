#!/bin/bash
reset
##Variavel para iniciar o programa##
validacao="programa"
##função para o funcionamento do menu/sistema##
menu ()
{
while true $validacao != "programa"
do
clear
echo "================================================"
echo "Mini script"
echo "Criado por: Matheus m Gon"
echo ""
echo "1)Pesquisar um programa"
echo ""
echo "2)Instalar um programa"
echo""
echo "3)Remover um programa"
echo ""
echo "4)Atualizar o sitema"
echo ""
echo "5)Instalar dependências"
echo""
echo "6)Limpando programas defeituosos "
echo""
echo "7)Corrigir erros"
echo""
echo "8)Sair do programa"
echo ""
echo "================================================"

echo "Digite a opção desejada:"
read validacao
echo "Opção informada ($validacao)"
echo "================================================"
#Case para validade a opcao selecionada
case "$validacao" in
    
    1)
      echo "Informe o nome do pacote para ser Pesquisado?"
      read nome
      apt search $nome
      echo -e "Deseja instalar o programa?\n\n (sim/não)"
      read instalar
        if [ $instalar == sim ];
         then
           apt install %nome
        else
           echo -e "Voltando...\n"
        fi 
      sleep 5
        
echo "================================================"
;;
    2)
      echo "Informe o nome do pacote para ser instalado?"
      read nome
      apt install $nome
      sleep 5

echo "================================================"
;;
    3)
      echo "Informe o nome do pacote para ser removido?"
      read nome
      apt-get remove --purge $nome
      sleep 5
echo "================================================"
;;
   4)
      echo "Atualizando sistema..."
      apt update
      sleep 5
echo "================================================"
;;
    5)
       echo "Iniciando o processo..."
       apt-get  -f install
       sleep 5
echo "================================================"
;;
     6)
       echo "Corrigindo erros..."
       apt  autoremove
       sleep 5
echo "================================================"
;;
    7)
    echo "Reparando..."
    dpkg --configure -a
    sleep 5

echo "================================================"
 ;;
       8)
         echo "saindo..."
         sleep 5
         clear;
         exit;
echo "================================================"
;;

*)
        echo "Opção inválida!"
#Finalizando o case
esac
done

}
menu