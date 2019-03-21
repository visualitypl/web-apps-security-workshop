# CSRF - Cross-Site Request Forgery

From OWASP.org site:

> CSRF is an attack that tricks the victim into submitting a malicious request. It inherits the identity and privileges of the victim to perform an undesired function on the victim's behalf. For most sites, browser requests automatically include any credentials associated with the site, such as the user's session cookie, IP address, Windows domain credentials, and so forth. Therefore, if the user is currently authenticated to the site, the site will have no way to distinguish between the forged request sent by the victim and a legitimate request sent by the victim.

## How does it work?

Let's imagine following case: you're a fanatic of fishing and you're a user of a forum for people like you called 'Catfish Forum' :) You don't want to log in each time you visit this site so you marked 'Remember me' checkbox when logging in. This way every time you visit this site you're logged in.

Ok, so then you need to find some file in the internet and you found a website which contains a 'Download' link to this file. You want to download the file so you click the button. But instead of downloading the website makes a request to the 'Catfish Forum'. It doesn't need to have your login, password or cookie to make the request because you're alredy logged in to it. This way the script can get some data about you (login, email, full name, maybe even address etc.) or even try to change the email or password and get access to your account.

## How to protect from this attack?

There are 2 things which we should do to protect our website and our users:

#### 1. Check request headers to verify the request is same origin.
We can compare the source origin and the target origin. If they matches, it's ok :) If not then the request should not be processed.

#### 2. Add and verify CSRF token
The general idea is to add additional hidden field to each form with a token. This token is sent together with the form data and then verified by the server. If it's not valid then the request won't be processed.

More details about both above ways of securing your application are in *OWASP: CSRF Prevention Cheat Sheet* in [Sources](#sources) section.

## Sources

- [OWASP: Cross-Site Request Forgery (CSRF)](https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF))
- [OWASP: CSRF Prevention Cheat Sheet](https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)_Prevention_Cheat_Sheet)
