&Деталька(Значение = "Калькулятор.ИмяФайла", ЗначениеПоУмолчанию = "history.log")
Перем ИмяФайла;

&Желудь
&Прозвище("ОбработчикРезультата")
Процедура ПриСозданииОбъекта()
КонецПроцедуры

Процедура Зафиксировать(Аргумент1, Аргумент2, Результат) Экспорт
	
	Текст = СтрШаблон("%4: Зафиксированы: Аргумент1=%1, Аргумент2=%2, Результат=%3", 
						Аргумент1, Аргумент2, Результат, ТекущаяДата());

	ТекстовыйДокумент = Новый ТекстовыйДокумент();

	Если Новый Файл(ИмяФайла).Существует() Тогда
		ТекстовыйДокумент.Прочитать(ИмяФайла);
	КонецЕсли;
	ТекстовыйДокумент.ДобавитьСтроку(Текст);
	ТекстовыйДокумент.Записать(ИмяФайла);

КонецПроцедуры

