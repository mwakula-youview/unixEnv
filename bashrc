export EDITOR=vim
export VISUAL=vim
export LOCALVERSION="-mawk"
export PATH=$PATH:~/bin/
export LESS='-r'

TERM=${TERM:=xterm-256color}
[[ "${TERM}" == 'xterm' ]] && TERM='xterm-256color'
export TERM

# in bash \[ and \] marks non-printable characters

# \j jobs
# \t time HH24:MI:SS
# \u user
# \w short path
# \! hist num
# \# cmd num
# \$ #$

# name     hex     16/8 termcol   xterm/hex   L*A*B      sRGB         HSB
a='
base03___.|#002b36|_8/4|brblack__|234.#1c1c1c|15.-12.-12|__0._43._54|193.100._21
base02___.|#073642|_0/4|black____|235.#262626|20.-12.-12|__7._54._66|192._90._26
base01___.|#586e75|10/7|brgreen__|240.#4e4e4e|45.-07.-07|_88.110.117|194._25._46
base00___.|#657b83|11/7|bryellow_|241.#585858|50.-07.-07|101.123.131|195._23._51
base0____.|#839496|12/6|brblue___|244.#808080|60.-06.-03|131.148.150|186._13._59
base1____.|#93a1a1|14/4|brcyan___|245.#8a8a8a|65.-05.-02|147.161.161|180.__9._63
base2____.|#eee8d5|_7/7|white____|254.#d7d7af|92.-00..10|238.232.213|_44._11._93
base3____.|#fdf6e3|15/7|brwhite__|230.#ffffd7|97..00..10|253.246.227|_44._10._99'
#yellow___|#b58900|.3/3|yellow___|136.#af8700|60..10..65|181.137...0|.45.100..71
#orange___|#cb4b16|.9/3|brred____|166.#d75f00|50..50..55|203..75..22|.18..89..80
#red______|#dc322f|.1/1|red______|160.#d70000|50..65..45|220..50..47|..1..79..86
#magenta__|#d33682|.5/5|magenta__|125.#af005f|50..65.-05|211..54.130|331..74..83
#violet___|#6c71c4|13/5|brmagenta|.61.#5f5faf|50..15.-45|108.113.196|237..45..77
#blue_____|#268bd2|.4/4|blue_____|.33.#0087ff|55.-10.-45|.38.139.210|205..82..82
#cyan_____|#2aa198|.6/6|cyan_____|.37.#00afaf|60.-35.-05|.42.161.152|175..74..63
#green____|#859900|.2/2|green____|.64.#5f8700|60.-20..65|133.153...0|.68.100..60

for c in `echo $a|grep -v '^$'` ; do
	c2=`echo $c|cut -d\| -f2|cut -d\# -f2`
	b1=`echo $c2|cut -c1-2`
	b2=`echo $c2|cut -c3-4`
	b3=`echo $c2|cut -c5-6`
	echo bxx="'"';'$((16#$b1))';'$((16#$b2))';'$((16#$b3))m"'"
done
b03=';0;43;54m'
b02=';7;54;66m'
b01=';88;110;117m'
b00=';101;123;131m'
b10=';131;148;150m'
b11=';147;161;161m'
b12=';238;232;213m'
b13=';253;246;227m'





f="\e[38;2;"
b="\e[48;2;"


p1="\[${f}${b13}${b}${b00}\]"
p2="\[${f}${b10}${b}${b01}\]"
p3="\[${f}${b10}${b}${b01}\]"
p4="\[${f}${b10}${b}${b01}\]"


# Command prompt
PS1="${p1}\\t${p2}\\# ${p3}\\w${p4} \\\$\[$(tput sgr0)\]"

# prompt secondary (second line)
PS2=''

# prompt for select
PS3=''

# Trace prefix
PS4=''

