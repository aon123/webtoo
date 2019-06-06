# yael-autoencrypt

Encrypt and write a file during development, then read and decrypt it during production.

## Installation

```
npm install yael-autoencrypt
```

## Use Case

Say you have a config file called 'secrets.txt' with all the secret API keys for all your server application.
You need to distribute the secrets to your server via source control, possibly because you have a git 'push' based deploy mechanism,
or you just have so many secrets that using separate environment variables for each API key is too much work.
However, you don't and want those secrets stored in the clear, either in source control or on your server, because your server or source code repo could get hacked.
Rather than add another step into your build chain, this library helps you encrypt your secrets in a file AND keep that file up-to-date.

## Example

This example code lets you keep a master `plaintext_file` on your development box.
(Be sure to add it to .gitignore so you don't ever upload it by mistake!)
When your application runs, it will automatically save an encrypted version of the file as `encrypted_file`, which you can add to source control.
On the production server or on other developer's boxes where `plaintext_file` is absent, it will notice that and try to use `encrypted_file` instead.
From the code's perspective the library usage is the exact same, so the code is identical in both cases.

```
autoencrypt = require('yael-autoencrypt');
config = autoencrypt({
  password: process.env.CONFIG_PASSWORD,
  plaintext_file: 'secrets.txt',
  encrypted_file: 'encrypted.txt'
})
console.log config
```
Whenever you run your application on a computer where `plaintext_file` is present, it will check that the contents match the decrypted contents of `encrypted_file`.
If the contents differ, it will overwrite `encrypted_file` with the updated content.

## Caching and using multiple files

For convenience, the module caches the `password`, `plaintext_file`, and `encrypted_file` values in memory.
This means that once you have called `autoencrypt` with the options, elsewhere in your code you can leave out the options:

```
autoencrypt = require('yael-autoencrypt')
config = autoencrypt()
```

This makes sense if you have one central encrypted config file.
However this causes a problem if you need to work with *multiple* encrypted config files.
To get around this, you can add a `cache: false` option:

```
autoencrypt = require('yael-autoencrypt');
config = autoencrypt({
  cache: false,
  password: process.env.CONFIG_PASSWORD2,
  plaintext_file: 'other-secrets.txt',
  encrypted_file: 'other-encrypted.txt'
})
```
