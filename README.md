# commandlineJS

commandlineJs is a simple commandline program design to calculate the product of two integers. It uses [node.js](https://nodejs.org/en/) to run the program, which can be found in the `app.js` file in the root directory of this repo.

The program has been contenerized using [Docker](https://www.docker.com/) and wrapped around [Wetty](https://github.com/krishnasrinivas/wetty), so that it can be displayed in a browser.

It has been deployed in [Google Cloud Platform](https://cloud.google.com/) (GCP) using [Kubernetes](https://kubernetes.io/). It can be tested at [http://35.205.239.71/](http://35.205.239.71/).

## Testing the deployed instance in GCP

Open any browser and go to the address provided above. There will be a prompt asking to login. Login using the `soflab` account, and the password `soflab`. While typing the password, be aware that it will not be displayed in the screen. Just type it and press enter.

```
commandline-app-deployment-2688294819-dk6rq login: soflab
Password: 
```

You will login to the command line of a Debian machine:
```
commandline-app-deployment-2688294819-dk6rq login: soflab
Password: 
Last login: Thu Dec  7 08:03:08 UTC 2017 on pts/1
Linux commandline-app-deployment-2688294819-dk6rq 4.4.64+ #1 SMP Wed Aug 30 20:27:36 PDT 2017 x86_64
The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.
Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
soflab@commandline-app-deployment-2688294819-dk6rq:~$
```

Type `ls` to disply the contents of the home directory of the machine.
There you should see the following content:

```
soflab@commandline-app-deployment-2688294819-dk6rq:~$ ls
app.js  wetty
```

If you type `cat app.js`, you should be able to see the algorithm for multiplication written in Java Script:

```
soflab@commandline-app-deployment-2688294819-dk6rq:~$ cat app.js 
const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
rl.question('Podaj pierwszą liczbę ', (liczba_1) => {
    console.log(`X= ${liczba_1}`);
    rl.question('Podaj drugą liczbę ', (liczba_2) => {
        console.log(`Y= ${liczba_2}`);
        var wynik = liczba_1 * liczba_2;
        console.log(`Wynik obliczenia  X*Y = ${wynik}`);
        rl.close()
    })
})
soflab@commandline-app-deployment-2688294819-dk6rq:~$ 
```

Its only dependency is [readline.js](https://nodejs.org/api/readline.html).

To run the program, type `node app.js`:

```
soflab@commandline-app-deployment-2688294819-dk6rq:~$ node app.js
Podaj pierwszą liczbę 
```

Type an integer at the first prompt, and another one at the second one:

```
soflab@commandline-app-deployment-2688294819-dk6rq:~$ node app.js
Podaj pierwszą liczbę 50
X= 50
Podaj drugą liczbę 60
Y= 60
Wynik obliczenia  X*Y = 3000
```

If you make a mistake along the way, just refresh the browser and start over.

## Running the addition program from the command line

Install [node.js](https://nodejs.org/) in your local machine.

Download the source code of this repo. You could use a tool like [Git](https://git-scm.com/), or simply click the "Clone or download" button, choose to download it as a zip, and extract it in your local machine.

After the source code is downloaded, open the command line and go to the directory containing it using the `cd` command:

```
C:\Users\my_user_name>cd C:\Users\my_user_name\Downloads\commandlineJS-master\commandlineJS-master

C:\Users\my_user_name\Downloads\commandlineJS-master\commandlineJS-master>
```

Then just type `node app.js`:

```
C:\Users\my_user_name\Downloads\commandlineJS-master\commandlineJS-master>node app.js
Podaj pierwszą liczbę 1
X= 1
Podaj drugą liczbę 4
Y= 4
Wynik obliczenia  X*Y = 4
```




