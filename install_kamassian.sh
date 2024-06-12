#!/bin/sh
# Copyleft 2024 Efenstor
#-------------------------------------------------------------------------------
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------

# For those willing to modify this installer to make your own variant of a
#   keyboard layout, you probably may (like myself) get stuck with the
#   "key <LABL> { [ KEYSYM1, KEYSYM2, KEYSYM3, KEYSYM4 ] }" line.
# So here it is:
# 1. Get an X11 keycode with "xev -event keyboard"
# 2. See the LABL value for the keycode in /usr/share/X11/xkb/keycodes/evdev
# 3. See the needed KEYSYM values in /usr/include/X11/keysymdef.h
#    (remove "XK_" from the KEYSYM definition)
# include "ru(winkeys)" means that the basic layout is inherited from the
#   "ru(winkeys)" group.
# The FOUR_LEVEL_ALPHABETIC group means that four modifier levels can be used:
#   KEYSIM1: no modifiers
#   KEYSIM2: Shift (ISO_Level2_Shift)
#   KEYSIM3: AltGr (ISO_Level3_Shift)
#   KEYSIM4: AltGr+Shift (ISO_Level3_Shift+Shift)
# include "level3(ralt_switch)" means that the special characters are typed
#   using the Right Alt key.

version="06.2024.1-Debian/Ubuntu"
layout_file="/usr/share/X11/xkb/symbols/ru"
rules_file="/usr/share/X11/xkb/rules/evdev.xml"
update_xkb_cache="dpkg-reconfigure xkb-data"
config_xkb="dpkg-reconfigure keyboard-configuration"
reinstall_xkb="apt install --reinstall xkb-data"

layout_test="xkb_symbols *\"kam\" *{"
rules_test="<description>Kamassian</description>"
layout_uninstall_sed="/^\/\/ Kamassian language layout \[BEGIN\]/,/\[END\]$/!p"
layout='// Kamassian language layout [BEGIN]
// Copyleft Efenstor, 2024
// row E: ` - accent
//        1 - modifier letter apostrophe
//        Shift+1 - modifier letter reversed comma
//        2 - double acute accent
//        3 - modifier letter double apostrophe
//        Shift+3 - modifier letter turned comma
//        4 - ӄ
//        5 - ҳ
//        6 - ң
//        7 - ʔ
//        9 - left half ring
//        0 - right half ring non-combining
//        Shift+0 - right half ring combining
//        - macron
//        Shift+- ˣ
//        = diaeresis
// row D: у - ӱ, к - қ, н - ӈ, г - ғ, х - ӽ, ъ - ɂ
// row C: ы - ө, в - ў, а - ӓ, о - ӧ, л - ԓ, д - ҷ, ж - җ, э - ә, \ - ҳ
// row B: ч - ӌ, c - ҫ, и - і, т - ҭ, ю - ү, . - ұ
// row A: space - narrow no-break space
partial alphanumeric_keys
xkb_symbols "kam" {

    include "ru(winkeys)"
    name[Group1]= "Kamassian";

    key.type[group1]="FOUR_LEVEL_ALPHABETIC";

    key <TLDE> { [ Cyrillic_io, Cyrillic_IO, combining_acute ] };
    key <AE01> { [ 1, exclam, U02BC, U02BD ] };
    key <AE02> { [ 2, quotedbl, U030B ] };
    key <AE03> { [ 3, numerosign, U02EE, U02BB ] };
    key <AE04> { [ 4, semicolon, U04C4, U04C3 ] };
    key <AE05> { [ 5, percent, Cyrillic_ha_descender, Cyrillic_HA_descender ] };
    key <AE06> { [ 6, colon, Cyrillic_en_descender, Cyrillic_EN_descender ] };
    key <AE07> { [ 7, question, U0294 ] };
    key <AE09> { [ 9, parenleft, U0351 ] };
    key <AE10> { [ 0, parenright, U02BE, U0357 ] };
    key <AE11> { [ minus, underscore, U0304, U02E3 ] };
    key <AE12> { [ equal, plus, U0308 ] };
    key <AD03> { [ Cyrillic_u, Cyrillic_U, U04F1, U04F0 ] };
    key <AD04> { [ Cyrillic_k, Cyrillic_K, Cyrillic_ka_descender, Cyrillic_KA_descender ] };
    key <AD06> { [ Cyrillic_en, Cyrillic_EN, U04C8, U04C7 ] };
    key <AD07> { [ Cyrillic_ghe, Cyrillic_GHE, Cyrillic_ghe_bar, Cyrillic_GHE_bar ] };
    key <AD11> { [ Cyrillic_ha, Cyrillic_HA, U04FD, U04FC ] };
    key <AD12> { [ Cyrillic_hardsign, Cyrillic_HARDSIGN, U0242, U0241 ] };
    key <AC02> { [ Cyrillic_yeru, Cyrillic_YERU, Cyrillic_o_bar, Cyrillic_O_bar ] };
    key <AC03> { [ Cyrillic_ve, Cyrillic_VE, Byelorussian_shortu, Byelorussian_SHORTU ] };
    key <AC04> { [ Cyrillic_a, Cyrillic_A, U04D3, U04D2 ] };
    key <AC07> { [ Cyrillic_o, Cyrillic_O, U04E7, U04E6 ] };
    key <AC08> { [ Cyrillic_el, Cyrillic_EL, U0513, U0512 ] };
    key <AC09> { [ Cyrillic_d, Cyrillic_D, Cyrillic_che_descender, Cyrillic_CHE_descender ] };
    key <AC10> { [ Cyrillic_zhe, Cyrillic_ZHE, Cyrillic_zhe_descender, Cyrillic_ZHE_descender ] };
    key <AC11> { [ Cyrillic_e, Cyrillic_E, Cyrillic_schwa, Cyrillic_SCHWA ] };
    key <BKSL> { [ backslash, slash, Cyrillic_ha_descender, Cyrillic_HA_descender ] };
    key <AB02> { [ Cyrillic_che, Cyrillic_CHE, U04CC, U04CB ] };
    key <AB03> { [ Cyrillic_es, Cyrillic_ES, U04AB, U04AA ] };
    key <AB05> { [ Cyrillic_i, Cyrillic_I, Ukrainian_i, Ukrainian_I ] };
    key <AB06> { [ Cyrillic_t, Cyrillic_T, U04AD, U04AC ] };
    key <AB09> { [ Cyrillic_yu, Cyrillic_YU, Cyrillic_u_straight, Cyrillic_U_straight ] };
    key <AB10> { [ period, comma, Cyrillic_u_straight_bar, Cyrillic_U_straight_bar ] };
    key <SPCE> { [ space, nobreakspace, U202F ] };

    include "level3(ralt_switch)"
};
// Kamassian language layout [END]'

rules_variantList="/xkbConfigRegistry/layoutList/layout[configItem/name='ru']/variantList"
rules_name="kam"
rules_description="Kamassian"

script_name=$(basename "$0")
if [ ! $NO_COLOR ] && [ $TERM != "dumb" ]; then
  RED="\033[1;31m"
  GREEN="\033[1;32m"
  CYAN="\033[1;36m"
  YELLOW="\033[1;33m"
  BLUE="\033[1;34m"
  BR="\033[1m"
  NC="\033[0m"
fi

#-------------------------------------------------------------------------------

# Check if a tool is installed
check_tool () {
  if [ -z $(which $tool) ]; then
    printf "Не найдена утилита ${CYAN}$tool${NC}. Пожалуйста установите.\n"
    exit 99
  fi
}

# Check writable
check_writable () {
  if [ ! -e "$layout_file" ]; then
    printf "Файл ${CYAN}$layout_file${NC} не найден.\n"
    printf "Запустите \"$config_xkb\" и установите русскую раскладку.\n"
    exit 100
  fi
  if [ ! -e "$rules_file" ]; then
    printf "Файл ${CYAN}$rules_file${NC} не найден.\n"
    printf "Что-то повреждено? Запустите \"$reinstall_xkb\".\n"
    exit 101
  fi
  if [ ! -w "$layout_file" ]; then
    printf "Файл ${CYAN}$layout_file${NC} не доступен для записи.\n"
    printf "Запустите скрипт с правами суперпользователя: ${YELLOW}sudo $script_name${NC}\n"
    exit 102
  fi
  if [ ! -w "$rules_file" ]; then
    printf "Файл ${CYAN}$rules_file${NC} не доступен для записи.\n"
    printf "Запустите скрипт с правами суперпользователя: ${YELLOW}sudo $script_name${NC}\n"
    exit 103
  fi
}

# Test if layout is already installed
test_installed () {
  installed_layout=

  if cat "$layout_file" | grep "$layout_test" > /dev/null; then
    # Installed in the layout file
    installed_layout=1
  fi

  if xmlstarlet sel -Q -t -c \
      "$rules_variantList/variant[configItem/name='$rules_name']" \
      "$rules_file" > /dev/null; then
    if [ $installed_layout ]; then
      # Installed everywhere
      return 1
    else
      # Only in the rules file
      return 2
    fi
  fi

  if [ $installed_layout ]; then
    # Installed only in the layout file
    return 3
  else
    # Not installed
    return 0
  fi
}

# Uninstall layout
uninstall_layout () {
  # Remove layout
  cat "$layout_file" | sed -n "$layout_uninstall_sed" > "$layout_file".new
  mv -f "$layout_file".new "$layout_file"
  # Remove rules
  xmlstarlet ed -L -d \
    "$rules_variantList/variant[configItem/name='$rules_name']" \
    "$rules_file"
  # Test
  test_installed
  return $?
}

# Install layout
install_layout () {
  # Add layout
  echo "$layout" >> "$layout_file"
  # Add rules
  xmlstarlet ed -L \
    -s "$rules_variantList" -t elem -n "variantNEW" \
    -s "//variantNEW" -t elem -n "configItem" \
    -s "//variantNEW/configItem" -t elem -n "name" -v "$rules_name" \
    -s "//variantNEW/configItem" -t elem -n "description" -v "$rules_description" \
    -r "//variantNEW" -v "variant" \
    "$rules_file"
  # Test
  test_installed
  return $?
}

#-------------------------------------------------------------------------------

# Show help
#if [ $# -lt 1 ] || [ "$1" = "-h" ] || [ "$1" = "-?" ]; then
#  show_help
#fi

# Test if xmlstarlet is installed
tool=xmlstarlet
check_tool

# Options
optstr="hiutq"
while getopts $optstr opt; do
  if [ ! $? -eq 0 ]; then
    exit
  fi
  case "$opt" in

    i) # Install
      check_writable
      test_installed
      if [ $? -ne 0 ]; then
        if [ ! $quiet ]; then
          echo "Раскладка уже установлена. Удаляем старую..."
        fi
        uninstall_layout
        if [ $? -eq 0 ]; then
          if [ ! $quiet ]; then
            echo "Успешно удалена."
          fi
        fi
      fi
      echo "Установка раскладки..."
      install_layout
      if [ $? -eq 1 ]; then
        if [ ! $quiet ]; then
          echo "Успешно установлена."
        fi
        exit 0
      fi
      exit 0
      ;;

    u) # Uninstall
      check_writable
      test_installed
      if [ $? -eq 0 ]; then
        if [ ! $quiet ]; then
          echo "Раскладка не установлена. Удалять нечего."
        fi
        exit 0
      fi
      echo "Удаление раскладки..."
      uninstall_layout
      if [ $? -eq 0 ]; then
        if [ ! $quiet ]; then
          echo "Успешно удалена."
        fi
        exit 0
      else
        if [ ! $quiet ]; then
          echo "Удаление не удалось."
        fi
        exit 1
      fi
      exit 0
      ;;

    t) # Test
      echo "Проверка наличия уже установленной раскладки..."
      test_installed
      xc=$?
      if [ ! $quiet ]; then
        if [ $xc -eq 1 ]; then
          echo "Раскладка установлена."
        elif [ $xc -eq 2 ]; then
          echo "Раскладка установлена частично (только в файле правил)."
        elif [ $xc -eq 3 ]; then
          echo "Раскладка установлена частично (только в файле раскладок)."
        else
          echo "Раскладка не установлена."
        fi
      fi
      exit $xc
      ;;

    # Options
    q) quiet=1 ;;

    \?) # Illegal option
      exit 1 ;;
  esac
done

# Show help
printf "
${CYAN}Установщик раскладки клавиатуры для камасинского языка (для GNU Linux)${NC}
Copyleft Efenstor. Версия $version\n
${YELLOW}Использование:${NC} $script_name [опции] <команда>
  ${GREEN}<команда>:${NC}
    -i: установить/обновить
    -u: удалить
    -t: проверить наличие уже установленной раскладки
  ${GREEN}[опции]:${NC}
    -q: не выводить дополнительных сообщений\n
${RED}ВНИМАНИЕ: после установки ищите раскладку в настройках клавиатуры, в списке
  раскладок для России (в средах GNOME, MATE, Cinnamon)${NC}
\n"
exit 10

