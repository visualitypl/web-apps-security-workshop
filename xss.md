# XSS - Cross-site Scripting

Another popular attack which allows you to run some unexpected code is XSS. But, in contrast to SQL Injection, the code is being run on the browser side. It means the attacker can run Javascript code (or any other browser-side code) in user's browser. As a result some serious things can happen, for example the attacker can:

- steal users' cookies (for example session cookies so they can log in as different user),
- run keylogger in users' browsers,
- replace the website content, etc...

## How does it work?

There are 3 subtypes of XSS:

#### 1. Persistent XSS

The script is being put into a `<input>` element in some form on a website. Then **it is stored** (that's why it's called persistent XSS) in the database. Then it's being run each time a user visits the page with injected script. As a good example we can imagine that someone pastes some javascript code in a comment on forum. Then each time anyone visits the topic page the script will be run. This way w would be able to, for example, steal morderator's/admin's cookie and login as moderator/admin and we wouldn't need to know their login or password.

#### 2. Reflected XSS

In this case the code is being put to the URL as a param. For example: we want someone to run javascript code on some website. We can send him a link with `<script>alert('boo!');</script>` script as a param. After converting characters to URL-friendly it'd look like this:

```
http://www.website-to-hack.com/search?q=%3Cscript%3Ealert%28%27boo%21%27%29%3B%3C%2Fscript%3E
```

When the victim opens the link, the website shows a search page with the script embedded. In this case it'll just show 'boo!' alert but we can imagine worse scenarios.

#### 3. DOM Based XSS

We won't use this type of attack during this workshop but there are some cool sources to analyze if you want to know more about it:

- [DOM Based Cross-site Scripting Vulnerability](https://www.netsparker.com/blog/web-security/dom-based-cross-site-scripting-vulnerability/)
- [DOM XSS: An explanation of DOM-based Cross-Site Scripting](https://www.acunetix.com/blog/articles/dom-xss-explained/)

## How to protect from this attack?

Again, as in SQL Injection: don't trust anyone. Any data sent by user should be filtered and/or transformed to a safe string. We can transform special characters to HTML entities:

```
& --> &amp;
< --> &lt;
> --> &gt;
" --> &quot;
' --> &#x27;
/ --> &#x2F;
```

It's also worth to set `HttpOnly` param for session cookies - it should help to protect users from accessing their accounts by stealing cookies.

For more you can check *OWASP: SQL Injection Prevention Cheat Sheet* linked in [Sources](#sources) section.

## Sources

- [OWASP: SQL Injection Prevention Cheat Sheet](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.md)
- [[YouTube] OWASP Top 10: Cross-Site Scripting (XSS)](https://www.youtube.com/watch?v=IuzU4y-UjLw)
