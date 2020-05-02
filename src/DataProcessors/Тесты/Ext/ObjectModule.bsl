﻿// BSLLS-off
#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ПрограммныйИнтерфейс

// Возвращает список тестов
//
Функция ПолучитьСписокТестов() Экспорт

	Тесты = Новый Массив;
	Тесты.Добавить("Тест_РазобратьURLСоЗнакомРавноВЗначенииПараметраЗапроса");
	Тесты.Добавить("Тест_РазобратьURLСПараметромЗапросаБезЗначения");
	Тесты.Добавить("Тест_РазобратьURLСЯвноЗаданнымПортом");
	Тесты.Добавить("Тест_РазобратьURLСПараметрамиЗапросаСНесколькимиЗначениями");
	Тесты.Добавить("Тест_РазобратьURLСФрагментом");
	Тесты.Добавить("Тест_РазобратьURLСХостомВФорматеIPv6");
	Тесты.Добавить("Тест_РазобратьПростойURL");
	
	Тесты.Добавить("Тест_HMAC");
	
	Если ТестироватьСоединениеЧерезПрокси Тогда
		Тесты.Добавить("Тест_СоединениеЧерезПрокси");
	КонецЕсли;
	Если ТестироватьПолучениеСпискаРелизовВСайта1С Тогда
		Тесты.Добавить("Тест_ПолучениеСпискаРелизовВСайта1С");
	КонецЕсли;
	Тесты.Добавить("Тест_ПараметрыЗаписиJson");
	Тесты.Добавить("Тест_URLБезСхемы");
	Тесты.Добавить("Тест_ПередачаПараметровВСтрокуЗапроса");
	Тесты.Добавить("Тест_ПередачаПараметровВСтрокуЗапросаКомбинированный");	
	Тесты.Добавить("Тест_РезультатКакJsonGet");
	Тесты.Добавить("Тест_РезультатКакJsonPost");
	Тесты.Добавить("Тест_РезультатКакДвоичныеДанные");
	Тесты.Добавить("Тест_РезультатКакТекст");
	Тесты.Добавить("Тест_ПередачаПроизвольныхЗаголовков");	
	Тесты.Добавить("Тест_ОтправкаДанныхФормы");
	Тесты.Добавить("Тест_ОтправкаJson");
	Тесты.Добавить("Тест_Таймаут");
	Тесты.Добавить("Тест_BasicAuth");
	Тесты.Добавить("Тест_DigestAuth");
#Если Не МобильноеПриложениеСервер Тогда
	Тесты.Добавить("Тест_ОтправитьGZip");
	Тесты.Добавить("Тест_ПолучитьGZip");
	Тесты.Добавить("Тест_УпаковатьGZip");
	Тесты.Добавить("Тест_РаспаковатьGZip");
#КонецЕсли
	Тесты.Добавить("Тест_GetJson");
	Тесты.Добавить("Тест_PostJson");
	Тесты.Добавить("Тест_PostИРедирект");
	Тесты.Добавить("Тест_GetJsonСтруктура");
	Тесты.Добавить("Тест_PutJson");
	Тесты.Добавить("Тест_DeleteJson");
	Тесты.Добавить("Тест_GetУспешныйРедиректОтносительныйАдрес");
	Тесты.Добавить("Тест_GetУспешныйРедиректАбсолютныйАдрес");
	Тесты.Добавить("Тест_GetЗацикленныйРедирект");
	Тесты.Добавить("Тест_GetОтключенныйРедирект");
	Тесты.Добавить("Тест_РедиректСУказаниемURL");
	Тесты.Добавить("Тест_Ошибка404");
	Тесты.Добавить("Тест_РаботаССессиями");	
	Тесты.Добавить("Тест_Options");
	Тесты.Добавить("Тест_Head");
	Тесты.Добавить("Тест_Delete");
	Тесты.Добавить("Тест_Patch");
	Тесты.Добавить("Тест_ПроизвольныйМетод");
	Тесты.Добавить("Тест_УстановкаCookies");
	Тесты.Добавить("Тест_ОтправитьCookies");
	Тесты.Добавить("Тест_POST_MultipartFormData_ТолькоФайл");
	Тесты.Добавить("Тест_POST_MultipartFormData_ФайлыИПоляФормы");
	Тесты.Добавить("Тест_ПараметрыЗапросаТолькоКлюч");
	Тесты.Добавить("Тест_ОтправкаXml");
	Тесты.Добавить("Тест_СложныеПараметрыЗапроса");
	Тесты.Добавить("Тест_PostПустойJson");
	Если ТестироватьАутентификациюAWS4_HMAC_SHA256 Тогда
		Тесты.Добавить("Тест_АутентификацияAWS4_HMAC_SHA256");
	КонецЕсли;
	
	Тесты.Добавить("Тест_АутентификацияAWS4_HMAC_SHA256_ПутоеТелоПортНеУказан");
	Тесты.Добавить("Тест_АутентификацияAWS4_HMAC_SHA256_ПутоеТелоУказанСтандартныйПорт");
	Тесты.Добавить("Тест_АутентификацияAWS4_HMAC_SHA256_ПутоеТелоУказанНеСтандартныйПорт");
	
	Возврат Тесты;
	
КонецФункции

// Запускает прогон тестов
//
Функция ВыполнитьТестыНаСервере(Тесты) Экспорт

	Для Каждого СтрокаТаблицы Из Тесты Цикл
		Если Не СтрокаТаблицы.Использование Тогда
			Продолжить;
		КонецЕсли;
		
		Попытка
			Выполнить(СтрокаТаблицы.Тест + "()");
			СтрокаТаблицы.Результат = "OK";
			СтрокаТаблицы.Ошибка = "";
		Исключение
			СтрокаТаблицы.Результат = "FAIL";
			СтрокаТаблицы.Ошибка = ПодробноеПредставлениеОшибки(ИнформацияОбОшибке());
		КонецПопытки;
	КонецЦикла;
	
	Возврат Тесты;
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#Область Тесты

Процедура Тест_РазобратьURLСоЗнакомРавноВЗначенииПараметраЗапроса() Экспорт
	
	СтруктураURL = КоннекторHTTP.РазобратьURL(
		"https://httpbin.org/anything?jql=worklogDate >= 2017-04-01 AND worklogDate <= 2017-05-01&j&i=2");
	
	УтверждениеВерно(СтруктураURL.Схема, "https");
	УтверждениеВерно(СтруктураURL.Сервер, "httpbin.org");
	УтверждениеВерно(СтруктураURL.Путь, "/anything");
	УтверждениеВерно(СтруктураURL.Порт, 0);
	УтверждениеВерно(СтруктураURL.Фрагмент, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пользователь, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пароль, "");
	УтверждениеВерно(СтруктураURL.ПараметрыЗапроса["jql"], "worklogDate >= 2017-04-01 AND worklogDate <= 2017-05-01");
	УтверждениеВерно(СтруктураURL.ПараметрыЗапроса["j"], Неопределено);
	УтверждениеВерно(СтруктураURL.ПараметрыЗапроса["i"], "2");
	
КонецПроцедуры

Процедура Тест_РазобратьURLСПараметромЗапросаБезЗначения() Экспорт
	
	СтруктураURL = КоннекторHTTP.РазобратьURL("https://httpbin.org/get?key");
	
	УтверждениеВерно(СтруктураURL.Схема, "https");
	УтверждениеВерно(СтруктураURL.Сервер, "httpbin.org");
	УтверждениеВерно(СтруктураURL.Путь, "/get");
	УтверждениеВерно(СтруктураURL.Порт, 0);
	УтверждениеВерно(СтруктураURL.Фрагмент, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пользователь, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пароль, "");
	УтверждениеВерно(СтруктураURL.ПараметрыЗапроса["key"], Неопределено);
	
КонецПроцедуры

Процедура Тест_РазобратьURLСЯвноЗаданнымПортом() Экспорт
	
	СтруктураURL = КоннекторHTTP.РазобратьURL("https://httpbin.org:443/get?key");
	
	УтверждениеВерно(СтруктураURL.Схема, "https");
	УтверждениеВерно(СтруктураURL.Сервер, "httpbin.org");
	УтверждениеВерно(СтруктураURL.Путь, "/get");
	УтверждениеВерно(СтруктураURL.Порт, 443);
	УтверждениеВерно(СтруктураURL.Фрагмент, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пользователь, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пароль, "");
	УтверждениеВерно(СтруктураURL.ПараметрыЗапроса["key"], Неопределено);
	
КонецПроцедуры

Процедура Тест_РазобратьURLСПараметрамиЗапросаСНесколькимиЗначениями() Экспорт
	
	СтруктураURL = КоннекторHTTP.РазобратьURL("http://httpbin.org/anything?i=v1&j=w1&j=w2&i=v2&i=v3");
	
	УтверждениеВерно(СтруктураURL.Схема, "http");
	УтверждениеВерно(СтруктураURL.Сервер, "httpbin.org");
	УтверждениеВерно(СтруктураURL.Путь, "/anything");
	УтверждениеВерно(СтруктураURL.Порт, 0);
	УтверждениеВерно(СтруктураURL.Фрагмент, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пользователь, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пароль, "");
	УтверждениеВерно(СтрСоединить(СтруктураURL.ПараметрыЗапроса["i"], ", "), "v1, v2, v3");
	УтверждениеВерно(СтрСоединить(СтруктураURL.ПараметрыЗапроса["j"], ", "), "w1, w2");
	
КонецПроцедуры

Процедура Тест_РазобратьURLСФрагментом() Экспорт
	
	СтруктураURL = КоннекторHTTP.РазобратьURL("https://en.wikipedia.org/wiki/1C_Company#Products");
	
	УтверждениеВерно(СтруктураURL.Схема, "https");
	УтверждениеВерно(СтруктураURL.Сервер, "en.wikipedia.org");
	УтверждениеВерно(СтруктураURL.Путь, "/wiki/1C_Company");
	УтверждениеВерно(СтруктураURL.Порт, 0);
	УтверждениеВерно(СтруктураURL.Фрагмент, "Products");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пользователь, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пароль, "");
	УтверждениеВерно(СтруктураURL.ПараметрыЗапроса.Количество(), 0);
	
КонецПроцедуры

Процедура Тест_РазобратьURLСХостомВФорматеIPv6() Экспорт
	
	СтруктураURL = КоннекторHTTP.РазобратьURL("http://[2001:0db8:11a3:09d7:1f34:8a2e:07a0:765d]:8080/test");
	
	УтверждениеВерно(СтруктураURL.Схема, "http");
	УтверждениеВерно(СтруктураURL.Сервер, "[2001:0db8:11a3:09d7:1f34:8a2e:07a0:765d]");
	УтверждениеВерно(СтруктураURL.Путь, "/test");
	УтверждениеВерно(СтруктураURL.Порт, 8080);
	УтверждениеВерно(СтруктураURL.Фрагмент, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пользователь, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пароль, "");
	УтверждениеВерно(СтруктураURL.ПараметрыЗапроса.Количество(), 0);
	
КонецПроцедуры

Процедура Тест_РазобратьПростойURL() Экспорт
	
	СтруктураURL = КоннекторHTTP.РазобратьURL("http://1c.ru");
	
	УтверждениеВерно(СтруктураURL.Схема, "http");
	УтверждениеВерно(СтруктураURL.Сервер, "1c.ru");
	УтверждениеВерно(СтруктураURL.Путь, "/");
	УтверждениеВерно(СтруктураURL.Порт, 0);
	УтверждениеВерно(СтруктураURL.Фрагмент, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пользователь, "");
	УтверждениеВерно(СтруктураURL.Аутентификация.Пароль, "");
	УтверждениеВерно(СтруктураURL.ПараметрыЗапроса.Количество(), 0);
	
КонецПроцедуры

Процедура Тест_HMAC() Экспорт
	
	Ключ = ПолучитьДвоичныеДанныеИзСтроки("Секретный ключ", КодировкаТекста.UTF8, Ложь);
	КлючБольше64 = ПолучитьДвоичныеДанныеИзСтроки(
		"1234567890123456789012345678901234567890123456789012345678901234567890", КодировкаТекста.UTF8, Ложь);
	
	ПустыеДанные = ПолучитьДвоичныеДанныеИзСтроки("", КодировкаТекста.UTF8, Ложь);
	Данные = ПолучитьДвоичныеДанныеИзСтроки("Какие-то данные", КодировкаТекста.UTF8, Ложь);
	
	УтверждениеВерно(
		КоннекторHTTP.HMAC(Ключ, ПустыеДанные, ХешФункция.MD5), 
		ПолучитьДвоичныеДанныеИзHexСтроки("1b1ec4166a11c03b3afefaea442e7709"));
	УтверждениеВерно(
		КоннекторHTTP.HMAC(КлючБольше64, Данные, ХешФункция.MD5), 
		ПолучитьДвоичныеДанныеИзHexСтроки("ed5b2d6b9f573cd46e8f8d1d1e8b70e3"));
		
	УтверждениеВерно(
		КоннекторHTTP.HMAC(Ключ, ПустыеДанные, ХешФункция.SHA1), 
		ПолучитьДвоичныеДанныеИзHexСтроки("355aa0587050d711f4ca9af6930c736363a88d34"));
	УтверждениеВерно(
		КоннекторHTTP.HMAC(КлючБольше64, Данные, ХешФункция.SHA1), 
		ПолучитьДвоичныеДанныеИзHexСтроки("7e8f9d7ebbe81e508a39f410e157fc6e714b3371"));
		
	УтверждениеВерно(
		КоннекторHTTP.HMAC(Ключ, ПустыеДанные, ХешФункция.SHA256),
		ПолучитьДвоичныеДанныеИзHexСтроки("70907d03476d72b7276897718590a49f6ce56991112fb5a0e9ed41652b2aab6c"));
	УтверждениеВерно(
		КоннекторHTTP.HMAC(КлючБольше64, Данные, ХешФункция.SHA256),
		ПолучитьДвоичныеДанныеИзHexСтроки("80be8107de7879f028c8bfe97e10b859785530dd19dfc41a4d6962ce4c2fc130"));

КонецПроцедуры

Процедура Тест_СоединениеЧерезПрокси() Экспорт
	
	Прокси = Новый ИнтернетПрокси;
	Прокси.Установить("http", ПроксиСервер, ПроксиПорт);
	КоннекторHTTP.GetJson("http://httpbin.org/headers", Неопределено, Новый Структура("Прокси", Прокси));

КонецПроцедуры

Процедура Тест_ПараметрыЗаписиJson() Экспорт
	
	ПараметрыЗаписиJSON = Новый Структура("ПереносСтрок", ПереносСтрокJSON.Нет);
	Json = Новый Структура;
	Json.Вставить("field", "value");
	Json.Вставить("field2", "value2");
	Результат = КоннекторHTTP.PostJson("http://httpbin.org/anything", Json, Новый Структура("ПараметрыЗаписиJSON", ПараметрыЗаписиJSON));
	УтверждениеВерно(Результат["data"], "{""field"":""value"",""field2"":""value2""}");
	
КонецПроцедуры

Процедура Тест_URLБезСхемы() Экспорт
	
	Ответ = КоннекторHTTP.Get("httpbin.org/get");
	КоннекторHTTP.КакJson(Ответ);
 	УтверждениеВерно(Ответ.URL, "http://httpbin.org/get");
	
КонецПроцедуры

Процедура Тест_ПередачаПараметровВСтрокуЗапроса() Экспорт
	
	ПараметрыЗапроса = Новый Структура;
	ПараметрыЗапроса.Вставить("name", СтрРазделить("Иванов,Петров", ","));
	ПараметрыЗапроса.Вставить("salary", Формат(100000, "ЧГ="));
	ПараметрыЗапроса.Вставить("time", "01:47");
	
	Ответ = КоннекторHTTP.Get("https://httpbin.org/anything/params", ПараметрыЗапроса);	
	Результат = КоннекторHTTP.КакJson(Ответ);
	
	УтверждениеВерно(Ответ.URL, "https://httpbin.org/anything/params?name=%D0%98%D0%B2%D0%B0%D0%BD%D0%BE%D0%B2&name=%D0%9F%D0%B5%D1%82%D1%80%D0%BE%D0%B2&salary=100000&time=01%3A47");
	УтверждениеВерно(Результат["url"], "https://httpbin.org/anything/params?name=Иванов&name=Петров&salary=100000&time=01%3A47");
	УтверждениеВерно(Результат["args"]["salary"], "100000");
	УтверждениеВерно(СтрСоединить(Результат["args"]["name"], ","), "Иванов,Петров");
	УтверждениеВерно(Результат["args"]["time"], "01:47");
	
КонецПроцедуры

Процедура Тест_ПередачаПараметровВСтрокуЗапросаКомбинированный() Экспорт
	
	ПараметрыЗапроса = Новый Структура;
	ПараметрыЗапроса.Вставить("name", СтрРазделить("Иванов,Петров", ","));
	ПараметрыЗапроса.Вставить("salary", Формат(100000, "ЧГ="));
	
	Результат = КоннекторHTTP.GetJson("https://httpbin.org/anything/params?post=Программист", ПараметрыЗапроса);	
	
	УтверждениеВерно(Результат["args"]["salary"], "100000");
	УтверждениеВерно(Результат["args"]["post"], "Программист");
	УтверждениеВерно(СтрСоединить(Результат["args"]["name"], ","), "Иванов,Петров");
	
КонецПроцедуры

Процедура Тест_РезультатКакJsonGet() Экспорт
	
	Результат = КоннекторHTTP.GetJson("https://httpbin.org/get");
	УтверждениеВерно(Результат["url"], "https://httpbin.org/get");
	
КонецПроцедуры

Процедура Тест_РезультатКакJsonPost() Экспорт
	
	Результат = КоннекторHTTP.КакJson(КоннекторHTTP.Post("https://httpbin.org/post"));
	УтверждениеВерно(Результат["url"], "https://httpbin.org/post");
	
КонецПроцедуры

Процедура Тест_РезультатКакДвоичныеДанные() Экспорт
	
	Результат = КоннекторHTTP.КакДвоичныеДанные(КоннекторHTTP.Get("http://httpbin.org/image/png"));
	
	УтверждениеВерно(ТипЗнч(Результат), Тип("ДвоичныеДанные"));
	УтверждениеВерно(ПосчитатьMD5(Результат), "5cca6069f68fbf739fce37e0963f21e7");
	
КонецПроцедуры

Процедура Тест_РезультатКакТекст() Экспорт
	
	Результат = КоннекторHTTP.КакТекст(КоннекторHTTP.Get("http://httpbin.org/encoding/utf8"));
	УтверждениеВерно(СтрНайти(Результат, "Зарегистрируйтесь сейчас на Десятую Международную"), 3931);
	
КонецПроцедуры

Процедура Тест_ПередачаПроизвольныхЗаголовков() Экспорт
	
	Заголовки = Новый Соответствие;
	Заголовки.Вставить("X-My-Header", "Hello");
	Результат = КоннекторHTTP.GetJson("http://httpbin.org/headers", Неопределено, Новый Структура("Заголовки", Заголовки));
	
	УтверждениеВерно(Результат["headers"]["X-My-Header"], "Hello");
	
КонецПроцедуры

Процедура Тест_ОтправкаДанныхФормы() Экспорт
	
	Данные = Новый Структура;
	Данные.Вставить("comments", "Постучать в дверь");
	Данные.Вставить("custemail", "vasya@mail.ru");
	Данные.Вставить("custname", "Вася");
	Данные.Вставить("custtel", "112");
	Данные.Вставить("delivery", "20:20");
	Данные.Вставить("size", "medium");
	Данные.Вставить("topping", СтрРазделить("bacon,mushroom", ","));
	
	Ответ = КоннекторHTTP.Post("http://httpbin.org/post", Данные);
	УтверждениеВерно(Ответ.URL, "http://httpbin.org/post");
	Результат = КоннекторHTTP.КакJson(Ответ);
	УтверждениеВерно(Результат["form"]["size"], "medium");
	УтверждениеВерно(Результат["form"]["comments"], "Постучать в дверь");
	УтверждениеВерно(Результат["form"]["custemail"], "vasya@mail.ru");
	УтверждениеВерно(Результат["form"]["delivery"], "20:20");
	УтверждениеВерно(Результат["form"]["custtel"], "112");	
	
КонецПроцедуры

Процедура Тест_ОтправкаJson() Экспорт
	
	Json = Новый Структура;
	Json.Вставить("Сотрудник", "Иванов Иван Петрович");
	Json.Вставить("Должность", "Разнорабочий");
	
	Результат = КоннекторHTTP.PostJson("http://httpbin.org/post", Json);
	
	УтверждениеВерно(Результат["json"]["Сотрудник"], "Иванов Иван Петрович");
	УтверждениеВерно(Результат["json"]["Должность"], "Разнорабочий");
	
	Результат = КоннекторHTTP.PutJson("http://httpbin.org/put", Json);
	УтверждениеВерно(Результат["json"]["Сотрудник"], "Иванов Иван Петрович");
	УтверждениеВерно(Результат["json"]["Должность"], "Разнорабочий");
	
КонецПроцедуры

Процедура Тест_Таймаут() Экспорт
	
	Попытка
		КоннекторHTTP.Get("https://httpbin.org/delay/10", Неопределено, Новый Структура("Таймаут", 1));
	Исключение
		ВерноеИсключение(ИнформацияОбОшибке(), СтрРазделить("Превышено время ожидания|Timeout exceeded", "|"));
	КонецПопытки;
	
КонецПроцедуры

Процедура Тест_ПолучитьGZip() Экспорт
	
	Результат = КоннекторHTTP.GetJson("http://httpbin.org/gzip");
	УтверждениеВерно(Результат["gzipped"], Истина);
	
КонецПроцедуры

Процедура Тест_ОтправитьGZip() Экспорт
	
	Json = Новый Структура;
	Json.Вставить("field", "value");
	Json.Вставить("field2", "value2");
	Заголовки = Новый Соответствие;
	Заголовки.Вставить("Content-Encoding", "gzip");
	Результат = КоннекторHTTP.PostJson("http://httpbin.org/anything", Json, Новый Структура("Заголовки", Заголовки));
	
	ТелоЗапроса = ПолучитьДвоичныеДанныеИзBase64Строки(СтрРазделить(Результат["data"], ",")[1]);
	ИсходноеЗначение = КоннекторHTTP.JsonВОбъект(КоннекторHTTP.ПрочитатьGZip(ТелоЗапроса));
	
	УтверждениеВерно(Результат["headers"]["Content-Encoding"], "gzip");
	УтверждениеВерно(ИсходноеЗначение["field"], Json["field"]);
	УтверждениеВерно(ИсходноеЗначение["field2"], Json["field2"]);
	
КонецПроцедуры

Процедура Тест_BasicAuth() Экспорт
	
	Результат = КоннекторHTTP.GetJson("https://user:pass@httpbin.org/basic-auth/user/pass");
	УтверждениеВерно(Результат["authenticated"], Истина);
	УтверждениеВерно(Результат["user"], "user");

	Аутентификация = Новый Структура("Пользователь, Пароль", "user", "pass");
	Результат = КоннекторHTTP.GetJson(
		"https://httpbin.org/basic-auth/user/pass",
		Неопределено,
		Новый Структура("Аутентификация", Аутентификация));
	УтверждениеВерно(Результат["authenticated"], Истина);
	УтверждениеВерно(Результат["user"], "user");

	Аутентификация = Новый Структура("Пользователь, Пароль, Тип", "user", "pass", "Basic");
	Результат = КоннекторHTTP.GetJson(
		"https://httpbin.org/basic-auth/user/pass",
		Неопределено,
		Новый Структура("Аутентификация", Аутентификация));
	УтверждениеВерно(Результат["authenticated"], Истина);
	УтверждениеВерно(Результат["user"], "user");
	
КонецПроцедуры

Процедура Тест_DigestAuth() Экспорт
	
	Аутентификация = Новый Структура("Пользователь, Пароль, Тип", "user", "pass", "Digest");
	Результат = КоннекторHTTP.GetJson(
		"https://httpbin.org/digest-auth/auth/user/pass",
		Неопределено,
		Новый Структура("Аутентификация", Аутентификация));
	УтверждениеВерно(Результат["authenticated"], Истина);
	УтверждениеВерно(Результат["user"], "user");
	
	Аутентификация = Новый Структура("Пользователь, Пароль, Тип", "guest", "guest", "Digest");
	Результат = КоннекторHTTP.Get(
		"https://jigsaw.w3.org/HTTP/Digest/",
		Неопределено,
		Новый Структура("Аутентификация", Аутентификация));
	УтверждениеВерно(Результат.КодСостояния, 200);
	
КонецПроцедуры

Процедура Тест_GetJson() Экспорт
	
	Результат = КоннекторHTTP.GetJson("https://httpbin.org/get");
	УтверждениеВерно(Результат["url"], "https://httpbin.org/get");
	
КонецПроцедуры

Процедура Тест_GetJsonСтруктура() Экспорт
	
	ПараметрыПреобразованияJSON = Новый Структура("ПрочитатьВСоответствие", Ложь);
	Результат = КоннекторHTTP.GetJson(
		"http://httpbin.org/json", Неопределено, Новый Структура("ПараметрыПреобразованияJSON", ПараметрыПреобразованияJSON));
	УтверждениеВерно(Результат.slideshow.author, "Yours Truly");
	УтверждениеВерно(Результат.slideshow.date, "date of publication");
	УтверждениеВерно(Результат.slideshow.slides.Количество(), 2);
	УтверждениеВерно(Результат.slideshow.title, "Sample Slide Show");
	
КонецПроцедуры

Процедура Тест_PostJson() Экспорт
	
	ПараметрыПреобразованияJSON = Новый Структура;
	ПараметрыПреобразованияJSON.Вставить("ИменаСвойствСоЗначениямиДата", "Дата");
	
	Json = Новый Структура;
	Json.Вставить("Дата", '20190121002400');
	Json.Вставить("Число", 5);
	Json.Вставить("Булево", True);
	Json.Вставить("Строка", "Привет");
		
	Результат = КоннекторHTTP.PostJson(
		"https://httpbin.org/post", 
		Json, 
		Новый Структура("ПараметрыПреобразованияJSON", ПараметрыПреобразованияJSON));
	УтверждениеВерно(Результат["url"], "https://httpbin.org/post");
	УтверждениеВерно(Результат["json"]["Дата"], '20190121002400');
	УтверждениеВерно(Результат["json"]["Число"], 5);
	УтверждениеВерно(Результат["json"]["Булево"], True);
	УтверждениеВерно(Результат["json"]["Строка"], "Привет");
	
КонецПроцедуры

Процедура Тест_PostИРедирект() Экспорт
	
	Ответ = КоннекторHTTP.Get("https://httpbin.org/redirect-to?url=https%3A%2F%2Fya.ru&status_code=301");
	УтверждениеВерно(Ответ.КодСостояния, 200);
	
	Ответ = КоннекторHTTP.Post("https://httpbin.org/redirect-to?url=https%3A%2F%2Fya.ru&status_code=301");
	УтверждениеВерно(Ответ.КодСостояния, 403);
	
КонецПроцедуры

Процедура Тест_PutJson() Экспорт
	
	Результат = КоннекторHTTP.PutJson("https://httpbin.org/put", Новый Структура("Название", "КоннекторHTTP"));
	УтверждениеВерно(Результат["url"], "https://httpbin.org/put");
	УтверждениеВерно(Результат["json"]["Название"], "КоннекторHTTP");
	
КонецПроцедуры

Процедура Тест_DeleteJson() Экспорт
	
	Результат = КоннекторHTTP.DeleteJson("https://httpbin.org/delete", Новый Структура("Название", "КоннекторHTTP"));
	УтверждениеВерно(Результат["url"], "https://httpbin.org/delete");
	УтверждениеВерно(Результат["json"]["Название"], "КоннекторHTTP");
	
КонецПроцедуры

Процедура Тест_GetУспешныйРедиректОтносительныйАдрес() Экспорт
	
	Ответ = КоннекторHTTP.Get("https://httpbin.org/relative-redirect/6");
	Результат = КоннекторHTTP.КакJson(Ответ);
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	УтверждениеВерно(Результат["url"], "https://httpbin.org/get");
	
КонецПроцедуры

Процедура Тест_GetУспешныйРедиректАбсолютныйАдрес() Экспорт
	
	Ответ = КоннекторHTTP.Get("http://httpbin.org/absolute-redirect/6");
	Результат = КоннекторHTTP.КакJson(Ответ);
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	УтверждениеВерно(Результат["url"], "http://httpbin.org/get");
	
КонецПроцедуры

Процедура Тест_GetЗацикленныйРедирект() Экспорт
	
	Попытка
		КоннекторHTTP.КакJson(КоннекторHTTP.Get("http://httpbin.org/redirect/31"));
	Исключение
		ВерноеИсключение(ИнформацияОбОшибке(), "СлишкомМногоПеренаправлений");
	КонецПопытки;
	
КонецПроцедуры

Процедура Тест_GetОтключенныйРедирект() Экспорт
	
	Параметры = Новый Структура("РазрешитьПеренаправление", Ложь);
	Ответ = КоннекторHTTP.Get(
		"http://httpbin.org/redirect-to?url=http%3A%2F%2Fhttpbin.org%2Fget&status_code=307",
		Неопределено,
		Параметры);
	
	УтверждениеВерно(Ответ.КодСостояния, 307);
	
КонецПроцедуры

Процедура Тест_РедиректСУказаниемURL() Экспорт
	
	ПараметрыЗапроса = Новый Структура;
	ПараметрыЗапроса.Вставить("url", "https://httpbin.org:443/anything");
	ПараметрыЗапроса.Вставить("status_code", "307");

	Ответ = КоннекторHTTP.Get("http://httpbin.org:80/redirect-to", ПараметрыЗапроса);
	КоннекторHTTP.КакJson(Ответ);

	УтверждениеВерно(Ответ.КодСостояния, 200);
	УтверждениеВерно(Ответ.URL, "https://httpbin.org:443/anything");
	
КонецПроцедуры

Процедура Тест_Ошибка404() Экспорт
	
	Ответ = КоннекторHTTP.Get("http://httpbin.org/status/404");
	
	УтверждениеВерно(Ответ.КодСостояния, 404);
	
КонецПроцедуры

Процедура Тест_РаботаССессиями() Экспорт
	
	Сессия = КоннекторHTTP.СоздатьСессию();
	
	КоннекторHTTP.Get("https://httpbin.org/cookies/set/key/value", Неопределено, Неопределено, Сессия);
	Результат = КоннекторHTTP.GetJson("https://httpbin.org/cookies", Неопределено, Неопределено, Сессия);
	
	УтверждениеВерно(Результат["cookies"]["key"], "value"); 
	
КонецПроцедуры

Процедура Тест_ПолучениеСпискаРелизовВСайта1С() Экспорт
	
	Сессия = КоннекторHTTP.СоздатьСессию();
	Ответ = КоннекторHTTP.Get("https://releases.1c.ru/total", Неопределено, Неопределено, Сессия);
	
	Данные = Новый Структура;
	Данные.Вставить("execution", ИзвлечьExecution(Ответ));
	Данные.Вставить("username", Логин);
	Данные.Вставить("password", Пароль);
	Данные.Вставить("_eventId", "submit");
	Данные.Вставить("geolocation", "");
	Данные.Вставить("submit", "Войти");
	Данные.Вставить("rememberMe", "on");
	
	Ответ = КоннекторHTTP.Post(Ответ.URL, Данные, Неопределено, Сессия);
	
	УтверждениеВерно(Ответ.URL, "https://releases.1c.ru/total");
	УтверждениеВерно(Ответ.КодСостояния, 200);
	
КонецПроцедуры

Процедура Тест_Options() Экспорт
	
	Ответ = КоннекторHTTP.Options("http://httpbin.org/anything");
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	
КонецПроцедуры

Процедура Тест_Head() Экспорт
	
	Ответ = КоннекторHTTP.Head("http://httpbin.org/anything");
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	
КонецПроцедуры

Процедура Тест_Delete() Экспорт
	
	Ответ = КоннекторHTTP.Delete("http://httpbin.org/delete");
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	
КонецПроцедуры

Процедура Тест_Patch() Экспорт
	
	Ответ = КоннекторHTTP.Patch("http://httpbin.org/patch");
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	
КонецПроцедуры

Процедура Тест_ПроизвольныйМетод() Экспорт
	
	Ответ = КоннекторHTTP.ВызватьМетод("PATCH", "http://httpbin.org/patch");
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	
КонецПроцедуры

Процедура Тест_УстановкаCookies() Экспорт
	
	Результат = КоннекторHTTP.GetJson(
		"http://httpbin.org/cookies/set?PHPSESSID=72a68cc1e55&cookie1=1&cookie2=2&other=test");
	
	УтверждениеВерно(Результат["cookies"]["PHPSESSID"], "72a68cc1e55");
	УтверждениеВерно(Результат["cookies"]["cookie1"], "1");
	УтверждениеВерно(Результат["cookies"]["cookie2"], "2");
	УтверждениеВерно(Результат["cookies"]["other"], "test");
	
КонецПроцедуры

Процедура Тест_ОтправитьCookies() Экспорт
	
	Cookies = Новый Массив;
	Cookies.Добавить(Новый Структура("Наименование,Значение", "k1", Строка(Новый УникальныйИдентификатор)));
	Cookies.Добавить(Новый Структура("Наименование,Значение", "k2", Строка(Новый УникальныйИдентификатор)));
	Ответ = КоннекторHTTP.Get("http://httpbin.org/cookies",, Новый Структура("Cookies", Cookies));
	Результат = КоннекторHTTP.КакJson(Ответ);
	
	УтверждениеВерно(Результат["cookies"]["k1"], Cookies[0].Значение);
	УтверждениеВерно(Результат["cookies"]["k2"], Cookies[1].Значение);
	
КонецПроцедуры

Процедура Тест_POST_MultipartFormData_ТолькоФайл() Экспорт
	
	Файлы = Новый Структура;
	Файлы.Вставить("Имя", "f1");
	Файлы.Вставить("ИмяФайла", "file1.txt");
	Файлы.Вставить("Данные", Base64Значение("0J/RgNC40LLQtdGCLCDQnNC40YA="));
	Файлы.Вставить("Тип", "text/plain");
	
	Результат = КоннекторHTTP.PostJson("https://httpbin.org/post", Неопределено, Новый Структура("Файлы", Файлы));
	
	УтверждениеВерно(Результат["files"]["f1"], "Привет, Мир");
	
КонецПроцедуры

Процедура Тест_POST_MultipartFormData_ФайлыИПоляФормы() Экспорт
	
	Файлы = Новый Массив;
	Файлы.Добавить(Новый Структура("Имя,Данные,ИмяФайла", "f1", Base64Значение("ZmlsZTE="), "file1.txt"));
	Файлы.Добавить(Новый Структура("Имя,Данные,ИмяФайла", "f2", Base64Значение("ZmlsZTI="), "file2.txt"));
	
	Данные = Новый Структура("field1,field2", "value1", "Значение2");
	
	Результат = КоннекторHTTP.PostJson("https://httpbin.org/post", Неопределено, Новый Структура("Файлы,Данные", Файлы, Данные));
	
	УтверждениеВерно(Результат["files"]["f1"], "file1");
	УтверждениеВерно(Результат["files"]["f2"], "file2");
	УтверждениеВерно(Результат["form"]["field1"], "value1");
	УтверждениеВерно(Результат["form"]["field2"], "Значение2");
	
КонецПроцедуры

Процедура Тест_ПараметрыЗапросаТолькоКлюч() Экспорт

	Результат = КоннекторHTTP.GetJson("https://httpbin.org/get?key");
	УтверждениеВерно(Результат["args"]["key"], "");
	
КонецПроцедуры

Процедура Тест_ОтправкаXml() Экспорт
	
	XML = 
	"<?xml version=""1.0"" encoding=""utf-8""?>
	|<soap:Envelope xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" xmlns:xsd=""http://www.w3.org/2001/XMLSchema"" xmlns:soap=""http://schemas.xmlsoap.org/soap/envelope/"">
	|  <soap:Body>
	|    <GetCursOnDate xmlns=""http://web.cbr.ru/"">
	|      <On_date>2019-07-05</On_date>
	|    </GetCursOnDate>
	|  </soap:Body>
	|</soap:Envelope>";
	
	Заголовки = Новый Соответствие;
	Заголовки.Вставить("Content-Type", "text/xml; charset=utf-8");
	Заголовки.Вставить("SOAPAction", "http://web.cbr.ru/GetCursOnDate");
	Ответ = КоннекторHTTP.Post(
		"https://www.cbr.ru/DailyInfoWebServ/DailyInfo.asmx",
		XML, 
		Новый Структура("Заголовки", Заголовки));
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	УтверждениеВерно(Ответ.Заголовки.Получить("Content-Type"), "text/xml; charset=utf-8");
	
КонецПроцедуры

Процедура Тест_СложныеПараметрыЗапроса() Экспорт

	Результат = КоннекторHTTP.GetJson(
		"https://httpbin.org/anything?jql=worklogDate >= 2017-04-01 AND worklogDate <= 2017-05-01&j&i=2");
	УтверждениеВерно(Результат["args"]["jql"], "worklogDate >= 2017-04-01 AND worklogDate <= 2017-05-01");
	УтверждениеВерно(Результат["args"]["j"], "");
	УтверждениеВерно(Результат["args"]["i"], "2");
	
КонецПроцедуры

Процедура Тест_PostПустойJson() Экспорт
	
	Json = Новый Структура;
	Результат = КоннекторHTTP.PostJson("https://httpbin.org/post", Json);
	УтверждениеВерно(Результат["url"], "https://httpbin.org/post");
	УтверждениеВерно(ТипЗнч(Результат["json"]), Тип("Соответствие"));
	
КонецПроцедуры

Процедура Тест_АутентификацияAWS4_HMAC_SHA256() Экспорт
	
	Аутентификация = Новый Структура;
	Аутентификация.Вставить("Тип", "AWS4-HMAC-SHA256");
	Аутентификация.Вставить("ИдентификаторКлючаДоступа", ИдентификаторКлючаДоступа);
	Аутентификация.Вставить("СекретныйКлюч", СекретныйКлюч);
	Аутентификация.Вставить("Регион", Регион);
	Аутентификация.Вставить("Сервис", "sqs");

	URL = СтрШаблон("https://sqs.%1.amazonaws.com:443%2", Регион, Очередь);
	
	ПараметрыЗапроса = Новый Соответствие;
	ПараметрыЗапроса.Вставить("Action", "SendMessage");
	ПараметрыЗапроса.Вставить("MessageBody", "This is a test message");
	ПараметрыЗапроса.Вставить("MessageAttribute.1.Name", "my_attribute_name_1");
	ПараметрыЗапроса.Вставить("MessageAttribute.1.Value.StringValue", "my_attribute_value_1");
	ПараметрыЗапроса.Вставить("MessageAttribute.1.Value.DataType", "String");
	ПараметрыЗапроса.Вставить("MessageAttribute.2.Name", "my_attribute_name_2");
	ПараметрыЗапроса.Вставить("MessageAttribute.2.Value.StringValue", "my_attribute_value_2");
	ПараметрыЗапроса.Вставить("MessageAttribute.2.Value.DataType", "String");
	ПараметрыЗапроса.Вставить("Expires", "2020-05-05T22%3A52%3A43PST");
	ПараметрыЗапроса.Вставить("Version", "2012-11-05");
	
	ДополнительныеПараметры = Новый Структура;
	ДополнительныеПараметры.Вставить("Аутентификация", Аутентификация);
	Ответ = КоннекторHTTP.Get(URL, ПараметрыЗапроса, ДополнительныеПараметры);
	
	УтверждениеВерно(Ответ.КодСостояния, 200);
	
КонецПроцедуры

Процедура Тест_УпаковатьGZip() Экспорт
	
	ИсходныеДанные = ПолучитьДвоичныеДанныеИзСтроки("Привет, Мир!", КодировкаТекста.UTF8, Ложь);
	СжатыеДанные = ПолучитьДвоичныеДанныеИзBase64Строки("H4sIAAAAAAAA/wEVAOr/0J/RgNC40LLQtdGCLCDQnNC40YAhilS6PhUAAAA=");
	
	УтверждениеВерно(КоннекторHTTP.ЗаписатьGZip(ИсходныеДанные), СжатыеДанные);

КонецПроцедуры

Процедура Тест_РаспаковатьGZip() Экспорт
	
	СжатыеДанные = ПолучитьДвоичныеДанныеИзBase64Строки("H4sIAAAAAAAA/wEVAOr/0J/RgNC40LLQtdGCLCDQnNC40YAhilS6PhUAAAA=");
	Данные = КоннекторHTTP.ПрочитатьGZip(СжатыеДанные);
	
	УтверждениеВерно(ПолучитьСтрокуИзДвоичныхДанных(Данные, КодировкаТекста.UTF8), "Привет, Мир!");
	
КонецПроцедуры

Процедура Тест_АутентификацияAWS4_HMAC_SHA256_ПутоеТелоПортНеУказан() Экспорт
	
	URL = "https://sqs.eu-north-1.amazonaws.com/123456789101/test";
	
	Аутентификация = Новый Структура;
	Аутентификация.Вставить("Тип", "AWS4-HMAC-SHA256");
	Аутентификация.Вставить("ИдентификаторКлючаДоступа", "ACCESS_KEY");
	Аутентификация.Вставить("СекретныйКлюч", "SECRET_KEY");
	Аутентификация.Вставить("Регион", "eu-north-1");
	Аутентификация.Вставить("Сервис", "sqs");

	Заголовки = Новый Соответствие;
	Заголовки.Вставить("x-amz-date", "20200426T122000Z");
	
	Сессия = КоннекторHTTP.СоздатьСессию();
	Сессия.Заголовки = Заголовки;
	Сессия.Аутентификация = Аутентификация;
	
	ПодготовленныйЗапрос = КоннекторHTTP.ПодготовитьЗапрос(Сессия, "GET", URL, Новый Структура);
	
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["x-amz-date"], "20200426T122000Z");
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["x-amz-content-sha256"], "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855");
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["Authorization"], "AWS4-HMAC-SHA256 Credential=ACCESS_KEY/20200426/eu-north-1/sqs/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date, Signature=ad98a02ef5df6b5337128ccdac1e5a279846c0d1c4b409e713a75dae0c9e4cb3");
	
КонецПроцедуры

Процедура Тест_АутентификацияAWS4_HMAC_SHA256_ПутоеТелоУказанСтандартныйПорт() Экспорт
	
	URL = "https://sqs.eu-north-1.amazonaws.com:443/123456789101/test";
	
	Аутентификация = Новый Структура;
	Аутентификация.Вставить("Тип", "AWS4-HMAC-SHA256");
	Аутентификация.Вставить("ИдентификаторКлючаДоступа", "ACCESS_KEY");
	Аутентификация.Вставить("СекретныйКлюч", "SECRET_KEY");
	Аутентификация.Вставить("Регион", "eu-north-1");
	Аутентификация.Вставить("Сервис", "sqs");

	Заголовки = Новый Соответствие;
	Заголовки.Вставить("x-amz-date", "20200426T122000Z");
	
	Сессия = КоннекторHTTP.СоздатьСессию();
	Сессия.Заголовки = Заголовки;
	Сессия.Аутентификация = Аутентификация;
	
	ПодготовленныйЗапрос = КоннекторHTTP.ПодготовитьЗапрос(Сессия, "GET", URL, Новый Структура);
	
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["x-amz-date"], "20200426T122000Z");
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["x-amz-content-sha256"], "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855");
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["Authorization"], "AWS4-HMAC-SHA256 Credential=ACCESS_KEY/20200426/eu-north-1/sqs/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date, Signature=ad98a02ef5df6b5337128ccdac1e5a279846c0d1c4b409e713a75dae0c9e4cb3");
	
КонецПроцедуры

Процедура Тест_АутентификацияAWS4_HMAC_SHA256_ПутоеТелоУказанНеСтандартныйПорт() Экспорт
	
	URL = "https://sqs.eu-north-1.amazonaws.com:444/123456789101/test";
	
	Аутентификация = Новый Структура;
	Аутентификация.Вставить("Тип", "AWS4-HMAC-SHA256");
	Аутентификация.Вставить("ИдентификаторКлючаДоступа", "ACCESS_KEY");
	Аутентификация.Вставить("СекретныйКлюч", "SECRET_KEY");
	Аутентификация.Вставить("Регион", "eu-north-1");
	Аутентификация.Вставить("Сервис", "sqs");

	Заголовки = Новый Соответствие;
	Заголовки.Вставить("x-amz-date", "20200426T122000Z");
	
	Сессия = КоннекторHTTP.СоздатьСессию();
	Сессия.Заголовки = Заголовки;
	Сессия.Аутентификация = Аутентификация;
	
	ПодготовленныйЗапрос = КоннекторHTTP.ПодготовитьЗапрос(Сессия, "GET", URL, Новый Структура);
	
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["x-amz-date"], "20200426T122000Z");
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["x-amz-content-sha256"], "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855");
	УтверждениеВерно(ПодготовленныйЗапрос.Заголовки["Authorization"], "AWS4-HMAC-SHA256 Credential=ACCESS_KEY/20200426/eu-north-1/sqs/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date, Signature=96df4fab493e08b8a72965acf7a6d2fd651a883a2766a2b0e4c0cd113dea7d8c");
	
КонецПроцедуры

#КонецОбласти

Функция ИзвлечьExecution(Ответ)
	
	HTML = КоннекторHTTP.КакТекст(Ответ);
	
	Начало = СтрНайти(HTML, "name=""execution""");
	Конец = СтрНайти(HTML, ">", НаправлениеПоиска.СНачала, Начало);
	КороткаяСтрока = Сред(HTML, Начало, Конец - Начало);
	
	Начало = СтрНайти(КороткаяСтрока, "value=""") + СтрДлина("value=""");
	Конец = СтрНайти(КороткаяСтрока, """", НаправлениеПоиска.СНачала, Начало); 
	
	Возврат Сред(КороткаяСтрока, Начало, Конец - Начало);
	
КонецФункции

Функция ПосчитатьMD5(Данные)
	
	Хеширование = Новый ХешированиеДанных(ХешФункция.MD5);
	Хеширование.Добавить(Данные);
	
	Возврат НРег(ПолучитьHexСтрокуИзДвоичныхДанных(Хеширование.ХешСумма));
	
КонецФункции

Процедура УтверждениеВерно(ЛевоеЗначение, ПравоеЗначение, Пояснение = "")
	
	Если ЛевоеЗначение <> ПравоеЗначение Тогда
		ВызватьИсключение(СтрШаблон("<%1> не равно <%2>: %3", ЛевоеЗначение, ПравоеЗначение, Пояснение));
	КонецЕсли;
	
КонецПроцедуры

Процедура ВерноеИсключение(ИнформацияОбОшибке, ОжидаемоеИсключение)
	
	ТекстИсключения = ПодробноеПредставлениеОшибки(ИнформацияОбОшибке);
	Если ТипЗнч(ОжидаемоеИсключение) = Тип("Массив") Тогда
		ТекстНайден = Ложь;
		Для Каждого Элемент Из ОжидаемоеИсключение Цикл
			Если СтрНайти(ТекстИсключения, Элемент) Тогда
				ТекстНайден = Истина;
				Прервать;
			КонецЕсли;
		КонецЦикла;
		
		Если Не ТекстНайден Тогда
			ВызватьИсключение(ТекстИсключения);
		КонецЕсли		
	Иначе
		Если Не СтрНайти(ТекстИсключения, ОжидаемоеИсключение) Тогда
			ВызватьИсключение(ТекстИсключения);
		КонецЕсли;
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#КонецЕсли
