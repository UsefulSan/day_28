from requests import db_connect, handler, get_name, full_table, get_price, get_town, get_name_price


def main():
    connection = db_connect()
    cursor = connection.cursor()
    while True:
        user_input = input('\nВыберите действие:\n'
                           '1. Отобразить всю таблицу\n'
                           '2. Отобразить таблицу конкретных авторов\n'
                           '3. Отобразить таблицу книг с диапазоном цен\n'
                           '4. Отобразить таблицу для конкретного города\n'
                           '5. Отобразить таблицу с конкретным автором и ценой\n'
                           '6. Завершить программу\n'
                           '>>> ')

        match user_input:
            case '1':
                [print(data) for data in handler(cursor, full_table())]
            case '2':
                name = input('Введите имя пользователя \n')
                [print(data) for data in handler(cursor, get_name(name))]
            case '3':
                price_min, price_max = input('Введите диапазон цен от '), input('до \n')
                [print(data) for data in handler(cursor, get_price(price_min, price_max))]
            case '4':
                town = input('Введите название города \n')
                [print(data) for data in handler(cursor, get_town(town))]
            case '5':
                name, price = input('Введите имя пользователя \n'), input('Введите цену \n')
                [print(data) for data in handler(cursor, get_name_price(name, price))]
            case '6':
                cursor.close()
                connection.close()
                break


if __name__ == '__main__':
    main()
