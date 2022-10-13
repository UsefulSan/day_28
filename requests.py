from typing import Any

import psycopg2
from psycopg2 import Error
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT


def db_connect():
    """
    Соединяется с БД
    """
    try:
        # Подключение к существующей базе данных
        connection = psycopg2.connect(user="postgres",
                                      password="postgres",
                                      host="127.0.0.1",
                                      port="5432",
                                      database="day_26")
        connection.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
        return connection
    except Error as error:
        print('Connection FAILED', error)
        return False


def handler(cursor: Any, request: Any):
    try:
        cursor.execute(request)
        return cursor.fetchall()
    except Error as err:
        print('request FAILED', err)


def full_table() -> str:
    """
    Обрабатывает все таблицы и объединяет в одну
    :return: возвращает обработанную таблицу
    """
    request = """
    SELECT ads.id, name, author, price, description, addresses, is_published
    FROM ads
    JOIN author ON author.id = ads.id_author
    JOIN addresses ON addresses.id = ads.id_address
    """
    return request


def get_name(name: str) -> str:
    """
    Обрабатывает таблицы и выводит строки с запрошенным автором
    :param name: имя автора
    :return: возвращает обработанную таблицу
    """
    request = f"""
    SELECT name, author, price, description, addresses, is_published
    FROM ads
    JOIN author ON author.id = ads.id_author
    JOIN addresses ON addresses.id = ads.id_address
    WHERE author = '{name}'
    """
    return request


def get_price(price_min: str, price_max: str) -> str:
    """
    Обрабатывает таблицы и выводит строки подходящие под диапазон цен
    :param price_min: минимальная цена
    :param price_max: максимальная цена
    :return: возвращает обработанную таблицу
    """
    request = f"""
    SELECT name, author, price, description, addresses, is_published
    FROM ads
    JOIN author ON author.id = ads.id_author
    JOIN addresses ON addresses.id = ads.id_address
    GROUP BY name, author, price, description, addresses, is_published
    HAVING price > {price_min} and price < {price_max}
    ORDER BY price
    """
    return request


def get_town(town: str) -> str:
    """
    Обрабатывает таблицы и выводит строки отобранные по городу
    :param town: название города
    :return: возвращает обработанную таблицу
    """
    request = f"""
    SELECT name, author, price, description, addresses, is_published
    FROM ads
    JOIN author ON author.id = ads.id_author
    JOIN addresses ON addresses.id = ads.id_address
    WHERE addresses LIKE '{town}%'
    """
    return request


def get_name_price(name: str, price: str) -> str:
    """
    Обрабатывает таблицы и выводит строки отобранные по автору и цене
    :param name: имя автора
    :param price: цена
    :return: возвращает обработанную таблицу
    """
    request = f"""
    SELECT name, author, price
    FROM ads
    JOIN author ON author.id = ads.id_author
    WHERE author = '{name}' AND price = '{price}'
    """
    return request
