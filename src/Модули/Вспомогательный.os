Функция ШаблонКонфигурацииДляХранилища() Экспорт
	
	ПутьКШаблону = "./src/Модули/additional/createDepot.txt";
	Содержимое = СодержимоеИзФайла(ПутьКШаблону);
	Возврат Содержимое;
	
КонецФункции

Функция ХешированныйПароль(Знач ВходящееЗначение) Экспорт
	Данные = ПолучитьДвоичныеДанныеИзСтроки(ВходящееЗначение, КодировкаТекста.UTF16, Ложь);
	ХешированиеДанных = Новый ХешированиеДанных(ХешФункция.MD5);
	ХешированиеДанных.Добавить(Данные);
	Возврат НРег(ПолучитьHexСтрокуИзДвоичныхДанных(ХешированиеДанных.ХешСумма));
КонецФункции

Функция СодержимоеИзФайла(ПутьКФайлу)
	ТекстовыйДокумент = Новый ТекстовыйДокумент;
	ТекстовыйДокумент.Прочитать(ПутьКФайлу, КодировкаТекста.UTF8);
	Текст = ТекстовыйДокумент.ПолучитьТекст();
	ТекстовыйДокумент = Неопределено;
	Возврат Текст;
КонецФункции