﻿
Процедура ПередЗаписью(Отказ)
	Если ПустаяСтрока(Наименование) Тогда
		Отказ = Истина;
		Возврат;
	КонецЕсли;
	
	Пользователь = ПользователиИнформационнойБазы.НайтиПоИмени(Наименование);
	Если Пользователь = Неопределено Тогда
		Пользователь = ПользователиИнформационнойБазы.СоздатьПользователя();
		Пользователь.Имя = Наименование;
		Пользователь.ПолноеИмя = Наименование;
	КонецЕсли;
	
	ВыбраннаяРоль = Метаданные.Роли.Найти(Роль);
	Если ВыбраннаяРоль = Неопределено Тогда
		Отказ = Истина;
		Возврат;
	КонецЕсли;
	
	Пользователь.Роли.Добавить(ВыбраннаяРоль);
	Пользователь.Записать();
КонецПроцедуры