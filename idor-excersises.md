# IDOR Excersises


## 1. Hack the application

Normally you're not allowed to see a details of a book created by someone else. You can only see a details of a book which you created before by clicking "Details & stats" button. However the app is of course vulnerable to this attack so you can try to see the detailed info of any book in the system, doesn't matter if you're a creator of it or not.

Try to see details of some book which which is not created by you, for example "The Sound and the Fury". You should be able to see a bit more data than if you click "Show". If you manage to do it, it's done.

Btw, because of the same issue of the code you can edit a details of a book created by someone else. Normally it should be allowed only for a person who created that book in the system.

## 2. Fix it!

Now you know that the app is not safe. Let's fix it then! Go to the source code and find the cause of the problem and fix it. Prove that the issue is resolved by trying to do the same thing as you did when hacking the application.
