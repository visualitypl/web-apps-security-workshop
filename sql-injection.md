# SQL Injection

SQL Injection is one of the most popular attacks. It is also very dangerous because in worst scenario it can give you unauthorized access to the application database which means you can get access to data which should be protected, edit data, add new records to the database or even drop some tables or the whole database.

## How does it work?

From OWASP.org site:

> SQL injection errors occur when:
>
> 1. Data enters a program from an untrusted source.
> 2. The data used to dynamically construct a SQL query

Generally it happens when data entered by user in form fields is not verified and escaped. What does it mean? Let's imagine we have following SQL query:

```SQL
SELECT * FROM users WHERE username = 'nyancat';
```

Let's say that we receive a `username` param and pass it to the query. So what will happen if we put something like `nyancat' OR 1=1`  into the input field. Then the query will look like this:

```SQL
SELECT * FROM users WHERE username = 'nyancat' OR 1=1;
```

So as we see the query is now different. It will return **all** users, not only those with nyancat username because `1=1` is always true. This seems to be dangerous, doesn't it? Not really?

So let's enter something like this: `nyancat'; DROP TABLE users;`

Now here's our SQL query:

```SQL
SELECT * FROM users WHERE username = 'nyancat'; DROP TABLE users;
```

Oops. This way we can loose the whole users table \(if the server allows multiple SQL statements separated by semicolons to be executed at once\). Of course an attacker needs to know your table names to drop them but they can just try to guess them - names like `users`, `posts`, `comments`, `products` etc. are very common.

## How to protect from this attack?

First rule: **do not trust your users**. Everything that they enter to any input field on your application can be dangerous and should be validated and escaped. Look at [Sources](#sources) section to find *SQL Injection Prevention Cheat Sheet* provided by OWASP.org.

## Sources

* [OWASP: general injection definition](https://www.owasp.org/index.php/Top_10_2017-A1-Injection)
* [OWASP: SQL Injection](https://www.owasp.org/index.php/SQL_Injection)
* [OWASP: SQL Injection Prevention Cheat Sheet](https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet)



