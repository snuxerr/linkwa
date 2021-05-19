#DekuSec 
clear
f=9
for var in f ; do
for col in {1..7} ; do
printf -v $var$col %b "\x1b[${!var}${col}m"
done
done
printf "%s                  ╦  ┬┌┐┌┬┌─  ╦ ╦┌─┐ \n" ${f6} ${n}
printf "%s                  ║  ││││├┴┐  ║║║├─┤\n" ${f6} ${n}
printf "%s                  ╩═╝┴┘└┘┴ ┴  ╚╩╝┴ ┴ \n" ${f6} ${n}
printf "%s                  Made In Indonesia \n" ${f5} ${n}
printf "%s                                     %s%s \n" ${f1} ${f1} ${n}
printf "%s >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>%s%s \n" ${f1} ${n}
printf "%sAuthor : DekuSec | Wa : 0852683639xx | Fb : DekuSec \n" ${f6} ${n}
printf "%s <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<%s%s \n" ${f1} ${n}
printf "%s                                     %s%s \n" ${f1} ${f1} ${n}
printf "%s        TOOLS UNTUK MEMBUAT LINK MENUJU CHAT WA    \n" ${f2} ${n}
printf "%s            MASUKKAN NOMOR DENGAN AWALAN %s62 \n" ${f2} ${f5} ${n}
printf "%s                                     %s%s \n" ${f1} ${f1} ${n}
printf "\n"
printf "%s Contoh Nomor %s(628123456789) \n" ${f5} ${f7} ${n}
printf "%s                                     %s%s \n" ${f1} ${f1} ${n}
printf "%s[%s+%s] %sMasukkan Nomor %s: %s" ${f2} ${f6} ${f2} ${f6} ${f1} ${f7}
read nomor
nomor=$(echo $nomor | sed 's/^0/62/g')
printf "%s[%s+%s] %sMasukkan Pesan %s: %s" ${f2} ${f6} ${f2} ${f6} ${f1} ${f7}
read text
text=$(echo $text | tr [[:space:]] '+' | sed 's/+$//g')
printf "%s                                     %s%s \n" ${f1} ${f1} ${n}
printf "%s Salin Link Dibawah Ini \n" ${f5} ${n}
link="https://api.whatsapp.com/send?phone=$nomor&text=$text"
printf "\n"
printf "%s[%s+%s] %sLink %s:%s %s" ${f2} ${f6} ${f2} ${f6} ${f1} ${f7} "$link"
printf "\n\n"
printf "%s[%s+%s] %sIngin Membuka WhatsApp??%s[%sY%s/%sn%s] %s:%s " ${f2} ${f6} ${f2} ${f6} ${f2} ${f5} ${f7} ${f5} ${f2} ${f1} ${f7}
read -rn1 kirim
case $kirim in
[Yy])
termux-open-url "$link"; exit 0 ;;
[Nn])
esac
