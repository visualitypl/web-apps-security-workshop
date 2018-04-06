# SQL Injection Excersises


## 1. Hack the application

Try to find SQL Injection vulnerability in the application and hack it. Somewhere in the app there is an input which *probably* can be used to hack the app :)

You can try to guess database table's names or you can also use [SQLMap](http://sqlmap.org/) tool to find table's names.  This tool is really powerful and worth to check.

What you can do:

- try to add a new book without logging in
- delete all books from the "List of books"

If you're having any troubles with this you can decode tips below (but please **don't do it unless you really don't know how to hack the website**):

```
UGxheSB3aXRoICJTZWFyY2ggYnkgbmFtZSIgc2VhcmNoIGlucHV0IG9uICJMaXN0IG9mIGJvb2tzIiBwYWdlIG5hZCB0cnkgdG8gcHV0IHNvbWUgU1FMIHF1ZXJpZXMgdGhlcmUuIA0KDQpUaGUgZGF0YWJhc2UgdGFibGUgd2hpY2ggY29udGFpbnMgYWxsIGJvb2tzIGlzIG9idmlvdXNseSAiYm9va3Mi
```


## 2. Fix it!

Now you know that the app is not safe. Let's fix it then! Go to the source code and find the cause of the problem and fix it. Prove that the issue is resolved by trying to do the same thing as you did when hacking the application.
