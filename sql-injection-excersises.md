# SQL Injection Excersises


## 1. Hack the application

Try to find SQL Injection vulnerability in the application and hack it. Somewhere in the app there is an input which *probably* can be used to hack the app :)

You can try to guess database table's names or you can also use [SQLMap](http://sqlmap.org/) tool to find table's names.  This tool is really powerful and worth to check.

Things to do:

1. Get names of database tables used in this app.
2. There is a book which is not yet published. It is normally hidden in the list but stored in the database. Try to list it in the list using SQL Injection.

If you're having any troubles with this you can decode tips below (but please **don't do it unless you really don't know how to hack the website**):

Hint 1:
```
UGxheSB3aXRoICJTZWFyY2ggYnkgbmFtZSIgc2VhcmNoIGlucHV0IG9uICJMaXN0IG9mIGJvb2tzIiBwYWdlIG5hZCB0cnkgdG8gcHV0IHNvbWUgU1FMIHF1ZXJpZXMgdGhlcmUuIA==
```

Hint 2:
```
U2VhcmNoaW5nIG1lY2hhbmlzbSB1c2VzICJuYW1lIExJS0UgJXZhbHVlJSIgdG8gZmlsdGVyIGRhdGFiYXNlIHJlY29yZHM=
```

Hint 3:
```
Oy0tIGF0IHRoZSBlbmQgb2YgcXVlcnkgbWF5IGJlIGhlbHBmdWwgdG8gc2tpcCB0aGUgcmVzdCBvZiBpdA==
```


## 2. Fix it!

Now you know that the app is not safe. Let's fix it then! Go to the source code and find the cause of the problem and fix it. Prove that the issue is resolved by trying to do the same thing as you did when hacking the application.
