Send text file to stepic.org treminal.

Отсылает текст из файла в открытый терминал stepic.org в браузере Firefox.

Перед запуском убедитесь, что:
- Запущен Firefox.
- В нем открыт stepic.org и запущен терминал (можно вводить команды).
- Включена английская раскладка клавиатуры.
- Имя файла 'temp.cpp' в текущей директории терминала свободно.

<b>Предупреждение: скрипт тупо читатет из файла символы и эмулирует нажатия на клавиши, поэтому, если вы переключитесь в другое окно, то эффек может оказаться разрушительным. Не трогайте компьютер после начала работы скрипта, до полявления надписи "Finish".
Если что-то пошло не так, то можно остановить работу нажав Ctrl-Shift-x (при этом должна быть включена английская раскладка клавиатуры).</b>


Как работает:
- открывает диалог выбора файла;
- пользователь выбирает файл;
- пользователь переходит в firefox c уже открытым и готовым к работе терминалом;
- скрипт запускает vim, открывает файл и посимвольно копирует его в vim, после этого выходит с сохранением файла;
- файл сохраняется с именем 'temp.cpp';
- по окончании выводит сообщение "Finish".
