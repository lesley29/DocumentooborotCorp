﻿
Процедура ПередЗаписью(Отказ)
	Если Автор <> Неопределено Тогда
		Автор = РаботаСТекущимПользователемПолныеПрава.ПолучитьТекущегоПользователя();
	КонецЕсли;
КонецПроцедуры
