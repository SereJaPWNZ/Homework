# 1) Создать переменную типа String
a = 'a'
print(type(a))
# 2) Создать переменную типа Integer
a = 21
print(type(a))
# 3) Создать переменную типа Float
a = 21.12
print(type(a))
# 4) Создать переменную типа Bytes
a = bytes(21)
print(type(a))
# 5) Создать переменную типа List
a = [21, 'sds', 434]
print(type(a))
# 6) Создать переменную типа Tuple
a = (21, 'sds', 434)
print(type(a))
# 7) Создать переменную типа Set
a = {21, 'sds', 434}
print(type(a))
# 8. Создать переменную типа Frozen set
a = {21, 'sds', 434}
a = frozenset(a)
print(type(a))
# 9) Создать переменную типа Dict
a = {'asd': 23,
    'dfs': 'AFG'}
print(type(a))
# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
# Вывел)
# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
a = 'a'
d = 'd'
c = a + d
print(a + d)
print(type(c))
# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
a = 'ffff'
d = 25
c = a + str(d)
print(a + ',', d)
print(type(c))
# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
a = 'ffff'
d = 25
c = a + str(d)
print(a, '+', d)
print(type(c))
print('Hi')