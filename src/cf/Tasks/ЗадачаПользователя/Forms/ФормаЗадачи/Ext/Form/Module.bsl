﻿&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Если НЕ РольДоступна("Администратор") Тогда
		Элементы.ДатаФактическогоВыполнения.Доступность = Ложь;
	КонецЕсли;
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьТекущегоПользователя()
	Возврат РаботаСТекущимПользователемПолныеПрава.ПолучитьТекущегоПользователя();
КонецФункции

&НаКлиенте
Процедура ПередВыполнением(Отказ)
	Объект.ДатаФактическогоВыполнения = ТекущаяДата();
	Объект.ФактическиеИсполнитель = ПолучитьТекущегоПользователя();
КонецПроцедуры
