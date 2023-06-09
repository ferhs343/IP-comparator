#!/bin/bash

# ELABORADO POR ==> LUIS HERRERA (12 - 19 ABRIL 2023)
# ULTIMA MODIFICACION ==> 19 ABRIL 2023
# XD

clear

files=(
        'libra-liberty'
        'escorpio-liberty'
        'virgus-liberty'
        'capricornio-liberty'
)

#VARIABLES
client="libertad" #CHANGE THIS VARIABLE

new_directory="$client-uniqs"
extention=".txt"
extention2=".uniq"
code_file=1
n_elements="${#files[@]}"
attemps=3
flag=1
total=0
check=0

#VARIABLES COLOURS
red="\e[0;31m\033[1m"
white="\033[0m\e[0m"
blue="\e[0;36m\033[1m"
green="\e[0;32m\033[1m"
yellow="\e[0;33m\033[1m"
gray="\e[0;37m\033[2m"

#BANNER
function banner() {
        echo -e " ${green}"
        echo -e " ----------  --------      ------------  -----------  ---       ----  ----------"
        echo -e " |__    __| |        |            |   _______|  |         |  |   \    /   |  |        |"
        echo -e "    |  |    |        |  __ |   |         |   ___   |  |    \__/    |  |        |"
        echo -e "    |  |    |   -----      |   |         |  |___|  |  |            |  |  -------"
        echo -e "    |  |    |  |          |   |         |         |  |  |\ __/|   |  |  |      "
        echo -e " ---   ---- |  |           |   |______   |         |  |  |     |   |  |  |      "
        echo -e " |________| |__|           |__________|  |_________|  |__|     | __|  |__|         V 1.0"
        echo -e "                                                                                   by Luis Herrera xD ${white}"
}

#FUNCTION TO GET MATCHED IPv4 SEGMENTS
function matched() {

        for (( i=0;i<=$n_elements-1;i++ ))
        do
                echo " "
                echo -e "${yellow} ----------------------------------------------------------------------${white}"
                echo -e "${yellow}  LISTING MATCHING IPv4 SEGMENTS WITH FILE ${files[$i]}${extention}${white}"
                echo -e "${yellow} ----------------------------------------------------------------------${white}"
                echo " "

                for j in $(cat ${file})
                do
                        flag2=1
                        for k in  $(cat "${files[$i]}"${extention})
                        do
                                if [ "$j" == "$k" ];
                                then
                                        flag2=0
                                        break
                               fi
                        done

                        if [ "$file" != "${files[$i]}"$extention ];
                        then
                                if [ "$flag2" -eq 0 ];
                                then
                                        echo -e "${green} [+] " ${j}${white}
                                        sleep 0.03
                                        total=$((total+1))
                                fi
                        fi
                 done

                 if [ "$file" != "${files[$i]}"$extention ];
                 then
                        echo " "
                        echo -e "${green} [+] ${total} Matched Ipv4 segments."

                 elif [ "$file" == "${files[$i]}"$extention ];
                 then
                        echo -e "${red} [+] OMITTED${white}"
                 fi

                 sleep 1
                 flag=0
                 total=0
        done
}

#FUNCTION TO GET UNIQS IPv4 SEGMENTS
function uniqs() {

        for  (( i=0;i<=$n_elements-1;i++ ))
        do
                while [[ -f ./"${new_directory}/${client}-${files[$i]}-${code_file}${extention2}" ]];
                do
                        code_file=$((code_file+1))
                done

                echo " "
                echo -e "${yellow} ----------------------------------------------------------------------${white}"
                echo -e "${yellow}  UNIQUE IPv4 SEGMENTS WITH FILE ${files[$i]}$extention${white}"
                echo -e "${yellow} ----------------------------------------------------------------------${white}"
                echo " "
                echo -e "${green} [+] Wait....... ${white}"

                for j in $(cat ${file})
                do
                        flag2=1
                        for k in $(cat "${files[$i]}"${extention})
                        do
                                 if [ "$j" == "$k" ];
                                 then
                                        flag2=0
                                        break
                                 fi
                        done

                        if [ "$file" != "${files[$i]}"$extention ];
                        then
                                if [ "$flag2" -eq 1 ];
                                then
                                        echo $j >> "${new_directory}/${client}-${files[$i]}-${code_file}${extention2}"
                                        sleep 0.03
                                        total=$((total+1))
                                fi
                        fi
                done

                if [ "$file" != "${files[$i]}"$extention ];
                then
                        echo " "
                        echo -e "${green} [+] ${total} Unique Ipv4 segments."
                        echo " "
                        sleep 1

                        if [ "$total" != 0 ];
                        then
                                echo -e "${green} [+] FILE SAVED IN ${red}====>${green} [ ${new_directory}/${client}-${files[$i]}-${code_file}${extention2} ]${white}"
                        else
                                echo -e "${red} [+] NO Unique Ipv4 segments."
                        fi

                elif [ "$file" == "${files[$i]}"$extention ];
                then
                        echo " "
                        echo -e "${red} [+] OMITTED.${white}"
                fi

                sleep 1
                flag=0
                total=0
        done
}

#MAIN PROGRAM
banner
echo " "
echo -e "${yellow} Este script fue elaborado con el proposito de comparar listas de segmentos IPv4 de un sensor de Global Cybersec.${white}"
echo " "
echo " "
echo -e "${blue} ------------------------${white}"
echo -e "${blue} | AVAILABLE FILES      |${white}"
echo -e "${blue} ------------------------${white}"
echo " "

for i in "${files[@]}"
do
        if [[ ! -f ./"$i"$extention ]];
        then
                echo " "
                echo -e "${red} ERROR, one of the files does not exist, validate that they are available.${white}"
                check=1
                exit

        elif [[ -f ./"$i"$extention ]];
        then
                echo -e "${red} [+] $i$extention ${white}"
        fi
done

if [[ "$check" -eq 0 && ! -d ./$new_directory ]];
then
        mkdir $new_directory
fi

while [ "$flag" -eq 1 ]
do
        while [[ "$attemps" -gt 0 && "$flag" -eq 1 ]]
        do
                echo " "
                #SELECT A TEXT FILE FROM THE OPTIONS DISPLAYED
                echo -e "${gray} Enter a filename:${gray} "
                read file

                if [[ -f ./"${file}" ]];
                then
                        echo " "
                        echo " "
                        echo -e "${green} [+] File selected ====> [ ${file} ]${white}"
                        echo " "
                        sleep 1

                        #START PROCESS
                        echo -e "${green} [+] Analyzing file '${file}'....${white}"
                        echo " "
                        sleep 1

                        #FUNCTION CALLS
                        matched
                        uniqs

                        sleep 1

                        echo " "
                        echo " "
                        echo -e "${green} [+] ENDED PROCESS.${white}"
                        sleep 1
                else
                        echo " "
                        echo " "
                        echo -e "${red} ERROR, the specified filename is not correct, verify if the filename is writted correct!${white}"
                        attemps=$((attemps-1))

                        if [ "$attemps" == 0 ];
                        then
                                echo " "
                                echo " "
                                echo "${red} ERROR, your attempts are exhausted, please try again later.${white}"
                                sleep 1
                        fi
                fi
        done

        if [ "$flag" -eq 0 ];
        then
                echo " "
                echo " "
                #AT THE END OF A PROCESS, INDICATE Y IF YOU WANT TO ANALYZE ANOTHER FILE, OR N IF YOU WANT TO EXIT.
                echo -e "${gray} I you need analyze other file? (s/n):${white} "
                read repeat

                if [[ "$repeat" == "n" || "$repeat" == "N" ]];
                then
                        echo "EXITING..."
                        flag=0
                        sleep 1
                        clear

                elif [[ "$repeat" == "s" || "$repeat" == "S" ]];
                then
                        flag=1
                        attemps=3
                else
                        echo -e "${red} ERROR, invalid option.${white}"
                fi
        fi
done
