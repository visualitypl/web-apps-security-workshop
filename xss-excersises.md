# XSS Excersises


## 1. Hack the application

Again, similar case like with SQL Injection. Somewhere in the app there is a place which can be used to perform XSS attack. Try to find and use it.

Things to do:

1. Try to display Javascript alert with any content (can be simple 'hacked!' text) by injecting a piece of code somewhere in the app.
2. If you managed to find a place which is vulnerable to XSS use the same place to paste a Javascript code which will send currently logged in user cookie to another website.

If you're having any troubles with this you can decode tips below (but please **don't do it unless you really don't know how to *hack* the website**):

```
R28gdG8gdGhlIHVzZXIgcHJvZmlsZSBlZGl0aW5nIHBhZ2UgYW5kIHRoaW5rIHdoaWNoIGZpZWxkIGNhbiBiZSB1c2VkIHRvIGluamVjdCBhIEphdmFzY3JpcHQgY29kZQ==
```


## 2. Fix it!

Now you know that the app is not safe. Let's fix it then! Go to the source code and find the cause of the problem and fix it. Prove that the issue is resolved by trying to do the same thing as you did when hacking the application.
