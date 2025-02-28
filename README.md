# powershell-epoch
function to convert datetime to epoch


with the function loaded in your pssession, you can convert the current datetime to epoch to simply use the parameters, or parse the datetime object to the function. 

like: 
```powershell
get-epoch -year 2025 -month 1 -day 1 -hour 00 -minute 00 -second 00 -millisecond 00
```
or 
```powershell
get-date 1-1-2025 | get-epoch
```
or 
```powershell
get-date 17:00 | get-epoch
```
