
&Пластилин(Значение = "ОбработчикРезультата", Тип = "Массив")
Перем ОбработчикиРезультата;

&Пластилин
Перем Складыватель;

&Пластилин
Перем Вычитатель;

&Желудь
Процедура ПриСозданииОбъекта()
	
КонецПроцедуры

Процедура Сложить(Аргумент1, Аргумент2) Экспорт
	Результат = Складыватель.Расчитать(Аргумент1, Аргумент2);
	ОбработатьРезультат(Аргумент1, Аргумент2, Результат);
КонецПроцедуры

Процедура Вычесть(Аргумент1, Аргумент2) Экспорт
	Результат = Вычитатель.Расчитать(Аргумент1, Аргумент2);
	ОбработатьРезультат(Аргумент1, Аргумент2, Результат);
КонецПроцедуры

Процедура ОбработатьРезультат(Аргумент1, Аргумент2, Результат)
	Для Каждого ОбработчикРезультата Из ОбработчикиРезультата Цикл
		ОбработчикРезультата.Зафиксировать(Аргумент1, Аргумент2, Результат);
	КонецЦикла;
КонецПроцедуры

