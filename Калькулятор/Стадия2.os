
#Использовать "src/Ядро"
// Подключил классы команд
#Использовать "src/КомандныйИнтерфейс"
#Использовать autumn
#Использовать autumn-cli

Поделка = Новый Поделка();

Поделка.ПросканироватьКаталог(ОбъединитьПути(ТекущийСценарий().Каталог, "src", "Ядро"));

// подгрузил желуди команд
Поделка.ПросканироватьКаталог(ОбъединитьПути(ТекущийСценарий().Каталог, "src", "КомандныйИнтерфейс"));

Поделка.ЗапуститьПриложение();

