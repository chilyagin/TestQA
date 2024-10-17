﻿#language: ru

@tree

Функционал: Проверка проверяем расчет суммы заказа при изменении цени и количества

Как Менеджер я хочу
проверить расчетт суммы заказа при изменении цены и количества 
чтобы убедиться, что сумма документа расчитывается правильно  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверяем расчет суммы заказа
И В командном интерфейсе я выбираю "Продажи" "Заказы"
Тогда открылось окно "Заказы товаров"
И в таблице 'Список' я перехожу к строке:
	| "Номер"     | 
	| "000000019" | 
И в таблице 'Список' я активизирую поле с именем 'Номер'
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ * от *"
* Изменяю в таблицы количество и цену
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "1,00"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "1"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка сумма заказа
	И реквизиты формы имеют значение:
		| 'Имя'                  | 'Значение'           | 'КакИскать' |
		| 'ТоварыИтогСумма'      | "1"                  | ''          |
* Записываю документ в форме		
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ * от * *" в течение 20 секунд


