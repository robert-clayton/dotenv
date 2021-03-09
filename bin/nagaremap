#!/bin/bash
remote_ids=$(
  xinput list |
  sed -n 's/.*Naga.*id=\([0-9]*\).*keyboard.*/\1/p'
)
[ "$remote_ids" ] || exit

mkdir -p /tmp/xkb/symbols
cat >/tmp/xkb/symbols/custom <<\EOF
xkb_symbols "remote" {
    key <AE01>   {      [KP_1, KP_1]       };
    key <AE02>   {      [KP_2, KP_2]       };
    key <AE03>   {      [KP_3, KP_3]       };
    key <AE04>   {      [KP_4, KP_4]       };
    key <AE05>   {      [KP_5, KP_5]       };
    key <AE06>   {      [KP_6, KP_6]       };
    key <AE07>   {      [KP_7, KP_7]       };
    key <AE08>   {      [KP_8, KP_8]       };
    key <AE09>   {      [KP_9, KP_9]       };
    key <AE10>   {      [KP_0, KP_0]       };
    key <AE11>   {      [0xffd4]       };
    key <AE12>   {      [0xffd5]       };
};
EOF

for id in $remote_ids; do
  setxkbmap -device $id -print | sed 's/\(xkb_symbols.*\)"/\1+custom(remote)"/' | xkbcomp -I/tmp/xkb -i $id -synch - $DISPLAY 2>/dev/null
done