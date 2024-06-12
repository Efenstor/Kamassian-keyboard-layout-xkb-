# Kamassian-keyboard-layout

Linux shell script that installs the Kamassian keyboard layout (Cyrillic characters). The layout also includes characters for the existing Cyrillic alphabets of various other Uralic and Turkic languages.

Does install, uninstall and test install. Requires *xmlstarlet*. Hopefully Bourne Shell-compatible.

The CLI is in Russian but everything else, including internal comments, is in English, so it is easily translatable and may be used as a template for those who wish to make their own custom keyboard layout installer.

---

**install_kamassian.sh** - это шелл-скрипт для Линукс, который устанавливает раскладку клавиатуры для камасинского языка (кириллическая транскрипция). Соответствующая раскладке камасинская азбука описана в прилагаемой работе (см. директорию "docs"). Раскладка также включает знаки для существующих алфавитов множества других уральских и тюркских языков.

Скрипт способен установить, удалить раскладку или проверить наличие уже установленной. Из внешних утилит требуется только *xmlstarlet*. Теоретически совместим с Bourne Shell.

Скрипт можно использовать как заготовку для изготовления установщиков собственных раскладок подобного типа.

Раскладка полностью соответствует обычной русской и может быть использована вместо неё, т.к. все дополнительные знаки получаются при удержании правой клавиши Alt (для заглавных букв, соответственно, правый Alt + Shift).

- *1-й ряд*:
    - **`** - ударение
    - **1** - апостроф (модификатор)
    - **Shift+1** - обратная кавычка (модификатор)
    - **2** - двойной акут
    - **3** - двойной апостроф (модификатор)
    - **Shift+3** - перевёрнутая кавычка (модификатор)
    - **4** - қ
    - **5** - ҳ
    - **6** - ң
    - **7** - верхняя точка
    - **Shift+7** - ʔ
    - **8** - бреве
    - **Shift+8** - ₽
    - **9** - карон
    - **Shift+9** - левый полукруг
    - **0** - правый полукруг (некомбинируемый)
    - **Shift+0** - правый полукруг
    - **-** макрон
    - **Shift+-** ˣ
    - **=** диерезис
- *2-й ряд*: **у** - ӱ, **к** - ӄ, **е** - є, **н** - ӈ, **г** - ғ, **ш** - ӷ, **щ** - ӌ, **з** - ӡ, **х** - ӽ, **ъ** - ɂ
- *3-й ряд*: **ы** - ө, **в** - ў, **а** - ӓ, **р** - њ, **о** - ӧ, **л** - ԓ, **д** - ӆ, **ж** - җ, **э** - ә, **\\** - ҳ
- *4-й ряд*: **ч** - ҷ, **c** - ҫ, **и** - і, **т** - ҭ, **ь** - ҍ, **б** - љ, **ю** - ү, **.** - ұ
- *5-й ряд*: **пробел** - узкий неразрывный пробел

![screenshot](https://github.com/Efenstor/Kamassian-keyboard-layout/assets/11175574/fe96ac36-6236-4658-94ec-cd701477c1cf)
