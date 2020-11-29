﻿
Процедура Печать(ТабДок, Ссылка) Экспорт
	//{{_КОНСТРУКТОР_ПЕЧАТИ(Печать)
	Макет = Справочники.ВнутренниеДокументы.ПолучитьМакет("Печать");
	Запрос = Новый Запрос;
	Запрос.Текст =
	"ВЫБРАТЬ
	|	ВнутренниеДокументы.Код КАК Код,
	|	ВнутренниеДокументы.Наименование КАК Наименование,
	|	ВнутренниеДокументы.Организация.ИНН КАК ИННОрганизации,
	|	ВнутренниеДокументы.Организация.Представление КАК Организация,
	|	ВнутренниеДокументы.Автор.Представление КАК Автор,
	|	ВнутренниеДокументы.Автор.Подразделение.Руководитель.Представление КАК РуководительПодразделенияАвтора
	|ИЗ
	|	Справочник.ВнутренниеДокументы КАК ВнутренниеДокументы
	|ГДЕ
	|	ВнутренниеДокументы.Ссылка В(&Ссылка)";
	Запрос.Параметры.Вставить("Ссылка", Ссылка);
	Выборка = Запрос.Выполнить().Выбрать();

	ОбластьЗаголовок = Макет.ПолучитьОбласть("Заголовок");
	Шапка = Макет.ПолучитьОбласть("Шапка");
	ТабДок.Очистить();

	ВставлятьРазделительСтраниц = Ложь;
	Пока Выборка.Следующий() Цикл
		Если ВставлятьРазделительСтраниц Тогда
			ТабДок.ВывестиГоризонтальныйРазделительСтраниц();
		КонецЕсли;

		ТабДок.Вывести(ОбластьЗаголовок);

			Шапка.Параметры.Заполнить(Выборка);
		ТабДок.Вывести(Шапка, Выборка.Уровень());

		ВставлятьРазделительСтраниц = Истина;
	КонецЦикла;
	//}}
КонецПроцедуры
