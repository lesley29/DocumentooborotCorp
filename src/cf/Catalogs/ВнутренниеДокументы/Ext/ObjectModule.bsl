﻿
Процедура ОбработкаЗаполнения(ДанныеЗаполнения, ТекстЗаполнения, СтандартнаяОбработка)
	Автор = РаботаСТекущимПользователемПолныеПрава.ПолучитьТекущегоПользователя();
КонецПроцедуры

Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	Если Вид.ЯвляетсяДоговором Тогда
		ПроверяемыеРеквизиты.Добавить("Контрагент");
		ПроверяемыеРеквизиты.Добавить("КонтактноеЛицоКонтрагента");
	КонецЕсли;
КонецПроцедуры
