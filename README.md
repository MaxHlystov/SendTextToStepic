# SendTextToStepic
Send text file to stepic.org treminal.
Отсылает текст из файла в открытый терминал stepic.org в браузере Firefox.

Перед запуском убедитесь, что:
1. Запущен Firefox.
2. В нем открыт stepic.org и запущен терминал (можно вводить команды).
3. Включена английская раскладка клавиатуры.
4. Имя файла 'temp.cpp' в текущей директории терминала свободно.

Как работает:
- открывает диалог выбора файла;
- пользователь выбирает файл;
- пользователь переходит в firefox c уже открытым и готовым к работе терминалом;
- скрипт запускает vim, открывает файл и посимвольно копирует его в vim, после этого выходит с сохранением файла;
- файл сохраняется с именем 'temp.cpp';
- по окончании выводит сообщение "Finish".
- 
