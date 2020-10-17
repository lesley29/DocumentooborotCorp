﻿Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	
	ИмяПользователя = ИмяПользователя();
	
	Если ПустаяСтрока(ИмяПользователя) Тогда
		Возврат;
	КонецЕсли;
	
	ТекПользователь = Справочники.Пользователи.НайтиПоРеквизиту("Идентификатор", ИмяПользователя);
	
	Если ТекПользователь.Пустая() Тогда
		НовПользователь = Справочники.Пользователи.СоздатьЭлемент();
		НовПользователь.Наименование = ПолноеИмяПользователя();
		НовПользователь.Идентификатор = ИмяПользователя();
		НовПользователь.Записать();
		ТекПользователь = НовПользователь.Ссылка;
	КонецЕсли;
	
	ПараметрыСеанса.ТекущийПользователь = ТекПользователь;
	
КонецПроцедуры