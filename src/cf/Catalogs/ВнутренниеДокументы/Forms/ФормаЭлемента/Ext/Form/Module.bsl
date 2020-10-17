﻿
&НаКлиенте
Процедура ВидПриИзменении(Элемент)
	УстановитьОбязательностьПолей();
КонецПроцедуры

&НаКлиенте
Процедура УстановитьОбязательностьПолей()
	
	Если Объект.Вид = ПредопределенноеЗначение("Справочник.ВидыДокументов.Договор") Тогда
		Элементы.Контрагент.АвтоОтметкаНезаполненного = Истина;
		Элементы.КонтактноеЛицоКонтрагента.АвтоОтметкаНезаполненного = Истина;
	Иначе
		Элементы.Контрагент.АвтоОтметкаНезаполненного = Ложь;
		Элементы.КонтактноеЛицоКонтрагента.АвтоОтметкаНезаполненного = Ложь;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	УстановитьОбязательностьПолей();
КонецПроцедуры
