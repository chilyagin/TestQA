﻿#language: ru

@tree

Функционал: Проверка ввода количества в строке с услугой

Как Менеджер я хочу
проверить возможность ввода количества в строку с услугой 
чтобы убедиться, что ввод не возможен   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка ввода количества в строке с услугой
И В командном интерфейсе я выбираю "Продажи" "Заказы"
Тогда открылось окно "Заказы товаров"
И в таблице 'Список' я перехожу к строке:
| 'Номер'     |
| '000000020' |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ 000000020 от 09.06.2023 *"
Когда открылось окно "Заказ * от * *"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000037" | "Доставка"     |
И в таблице 'Список' я выбираю текущую строку
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "1"
И в таблице 'Товары' я завершаю редактирование строки





