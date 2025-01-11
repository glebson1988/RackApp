# RackApp
TimeFormatter <br>
A minimalist Rack application that returns the current time in a specified format.<br>
Start the application by running the command: `rackup` in your console.<br>
Examples of Valid Requests:<br>
1:<br>
`curl --url "http://localhost:9292/time?format=year%2Cmonth%2Cday%2Chour" -i`<br>
2:<br>
`curl --url "http://localhost:9292/time?format=hour%2Cminute%2Csecond" -i`<br>
3:<br>
`curl --url "http://localhost:9292/time?format=year%2Cmonth%2Cday%2Chour%2Cminute%2Csecond" -i`<br>
Example of Invalid Request, returns a 404 status code:<br>
`curl --url "http://localhost:9292/date?format=year%2Cmonth%2Cday%2Chour" -i`<br>
Unknown format: Returns an error message Unknown time format [epoch, age]":<br>
`curl --url "http://localhost:9292/time?format=year%2Cmonth%2Cday%2Chr" -i`<br>

