#!/bin/env bash # Copyright 2019 (c) all rights reserved 
# by BuildAPKs https://buildapks.github.io
#####################################################################
set -Eeuo pipefail
shopt -s nullglob globstar

_SMATRPERROR_() { # run on script error
	local RV="$?"
	echo "$RV" ma.bash
	printf "\\e[?25h\\n\\e[1;48;5;138mBuildAPKs %s ERROR:  Generated script error %s near or at line number %s by \`%s\`!\\e[0m\\n" "${PWD##*/}" "${1:-UNDEF}" "${2:-LINENO}" "${3:-BASH_COMMAND}"
	exit 147
}

_SMATRPEXIT_() { # run on exit
	printf "\\e[?25h\\e[0m"
	set +Eeuo pipefail 
	exit
}

_SMATRPSIGNAL_() { # run on signal
	local RV="$?"
	printf "\\e[?25h\\e[1;7;38;5;0mBuildAPKs %s WARNING:  Signal %s received!\\e[0m\\n" "ma.bash" "$RV"
 	exit 148 
}

_SMATRPQUIT_() { # run on quit
	local RV="$?"
	printf "\\e[?25h\\e[1;7;38;5;0mBuildAPKs %s WARNING:  Quit signal %s received!\\e[0m\\n" "ma.bash" "$RV"
 	exit 149 
}

trap '_SMATRPERROR_ $? $LINENO $BASH_COMMAND' ERR 
trap _SMATRPEXIT_ EXIT
trap _SMATRPSIGNAL_ HUP INT TERM 
trap _SMATRPQUIT_ QUIT 

cd "$JDR"
# Usage: _AT_ organization/repository commit
# Usage: _AT_ user/repository commit
_AT_ Bubu/android-dice-game 71848a88e4b47a74a9cf775f0bbb4543c8d69de4
_AT_ FatMonkeySmile/android-dice-game 86ba2baca008de3172aa1e1442f0db09614e27e1
_AT_ dozingcat/dodge-android 1f22ac406c56e5999244d5fb9b6d506914edf263
_AT_ ge0rg/gamemasterdice 2b7e3c848111cdd2186efea3b6196c6f62e5cb18
_AT_ iidukat/google-pacman 68067fe4809dc25062f4396bef9f50f0c9c8cd5e
_AT_ jackpal/glesquake 823b728ed3a98b082592e5b5cc8bef4232806ab2
_AT_ jareens/dudo 4034fd2bf52b28c5b55efd70a181862517dece6c
_AT_ jogordon/BomberMan-for-Android 27545a47f5a08d93733843a8273fa51f5e747f94
_AT_ krixisLv/ShootEmOff c7037296481302c8377e45ba8f8fbf2a0d293101
_AT_ ktom2135/CoreGame cfb94a86e0f17e38f9910c5da6f134aed045d5bc
_AT_ masokotanga/ReplicaIsland c5b96785167503f63b4f3dbd4e382daec16ee22e
_AT_ meoblast001/thugaim f4871f8cebff83b0b029aec9d7e0132dd10b26fc
# _AT_ madisp/divide-and-conquer 60678a006c234d0c55a7ef6554f2755201b25841
_AT_ mobilepearls/com.mobilepearls.memory bc469667974bee2b0750e8474a0844999ed87fbc
_AT_ mobilepearls/com.mobilepearls.react 7587ad8826dd5dd82c540d34d1bb6f2a009e3819
_AT_ ppelleti/AndFish 6e64e9960402fd98f2ce85c2531606c6388b7bfb
_AT_ quaap/DodaTheExploda 4885fbfa4ad12832baa92ee10cd010365ee51af9
_AT_ quaap/SeafoodBerserker 498ba1126418184781a8a606556c581049b70fb7
_AT_ rorist/android-reverse a6741ed9f7cc390a1ab18ae5961d8e4db4f02f05
_AT_ svn2github/beginnginandroidgames2 1a951db9cb0c9a8df2888704a5d980b167955926
_AT_ quaap/DodaTheExploda 4885fbfa4ad12832baa92ee10cd010365ee51af9
_AT_ quaap/SeafoodBerserker 498ba1126418184781a8a606556c581049b70fb7
_AT_ thiagokokada/retrobreaker 338b30b271b855dd8fb2f3f26179a886a33b7c28
_AT_ VelbazhdSoftwareLLC/Blokish8 81426d948edb17de2afa06a6e6f70291ff4da33b
_AT_ VelbazhdSoftwareLLC/BrainstonzForAndroid 78c98c772f4a44ab27cd763583e87308bb66785d
_AT_ VelbazhdSoftwareLLC/FreeKlondike c373e17592b429c3fa9f54620c408e909352484c
_AT_ VelbazhdSoftwareLLC/FishRingsForAndroid 0e0186af3305394ebc71966238c1a52bd00448bf
_AT_ VelbazhdSoftwareLLC/HungarianRingsForAndroid 2f078680562a9a39a8927fcc626cdc0d7eb7c31c
_AT_ VelbazhdSoftwareLLC/Kechi 7f8f33f668b6bdd4f413cfa74f8a1e4b6371b7c9
_AT_ VelbazhdSoftwareLLC/Politrics f77ba059a6a5308fb5a98673112aa3406e927809
_AT_ VelbazhdSoftwareLLC/RussianTripleForAndroid 83bbf80b8c23a32e5f9f310f21cb34c282df515b
_AT_ VelbazhdSoftwareLLC/SvarkaOddsCalculator a7b8faf49531fd22e5d6e76a287e28460db5bc47
_AT_ VelbazhdSoftwareLLC/TriPeaksSolitaireForAndroid db27b546c7b6c14d612f415a56e1ef32e8701f26
_AT_ VelbazhdSoftwareLLC/tuty-fruty-slot-for-android d56053e64262afb4b9fe13e2e96bd8d4f6e394cb
_AT_ zipzapdat/AndroFish d7f45f5873696f9ce5669dcbf3be2600f293b021
_AT_ zipzapdat/opensudoku-android c45e5c5d4f8225349b2fd61ad6569f289ebdc930

# ma.bash OEF
