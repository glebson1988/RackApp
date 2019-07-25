# RackApp
TimeFormatter <br>
Минималистичное Rack-приложение, возвращает время в заданном формате.<br>
Запуск: команда `rackup` в консоли.<br>
Примеры верных запросов:<br>
1:<br>
`curl --url "http://localhost:9292/time?format=year%2Cmonth%2Cday%2Chour" -i`<br>
2:<br>
`curl --url "http://localhost:9292/time?format=hour%2Cminute%2Csecond" -i`<br>
3:<br>
`curl --url "http://localhost:9292/time?format=year%2Cmonth%2Cday%2Chour%2Cminute%2Csecond" -i`<br>
Пример неверного запроса, вернет ответ с кодом статуса 404:<br>
`curl --url "http://localhost:9292/date?format=year%2Cmonth%2Cday%2Chour" -i`<br>
Незвестный формат, вернет "Unknown time format [epoch, age]":<br>
`curl --url "http://localhost:9292/time?format=year%2Cmonth%2Cday%2Chr" -i`<br>

