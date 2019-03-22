# IDOR: Insecure Direct Object Reference

This vulnerability is often not treated as a serious one but in fact it is. It can cause that the attacker may be able to bypass authorization and access the data by modifying the request params.

## How does it work?

Often there are some variables in URLs, for example:

```
http://yourwebsite.com/users/24
```

```
http://yourwebsite.com/customers/32545/invoices
```

```
http://yourwebsite.com/userdetails.php?id=2353
```

So basically the attacker can replace those ids with different ones and try to access the data which doesn't belong to his account. We can imagine how simple is to write a bot which would automatically iterate and scrap the data from the website. Often there can be sensitive data under the vulnerable part of the app, like invoices with address and financial details of companies, users' details (address, phone, full name, etc.)

## How to protect from this attack?

The best way is to go analyze any part of your code and make sure that the data, which should be accessible for only one/part of users, is in fact hidden for the rest of users. For web applications with most of the data stored in the SQL databases the developer should check if the id of the database record is related to the currently signed in user.

What shoud be obvious but it's also worth adding, all endpoints under `/admin` (or similar) paths should be accessible for admins only which means that in web applications the class which controlls the flow (most probably a controller class) should black any request that comes from a non-admin user.

## Sources

* [OWASP: Insecure Direct Object Reference](https://www.owasp.org/index.php/Top_10_2007-Insecure_Direct_Object_Reference)
* [OWASP: Insecure Direct Object Reference Prevention Cheat Sheet](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Insecure_Direct_Object_Reference_Prevention_Cheat_Sheet.md)

