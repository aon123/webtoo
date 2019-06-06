# secret-config
A Node.js module for managing a multi-environment encrypted config file.

This module uses my other module, [yael-autoencrypt](https://www.npmjs.com/package/yael-autoencrypt),
to read and write to an encrypted config file. You should read the README for that module first.

This module is a convenience wrapper. It basically just takes a YAML formatted file with
entries grouped by environment, and returns the correct configuration based on the current NODE_ENV.

## Installation
```
npm install secret-config
```

## Example usage
```javascript
// First use
secrets = require('secret-config')(
  password: process.env.ENCRYPTION_PASSPHRASE
  plaintext_file: 'secrets.yaml'
  encrypted_file: 'secrets.encrypted'
)

// Subsequent use in other files can use cached results
secrets = require('secret-config')();

// If you do not want to cache results, useful if loading a second file
secrets = require('secret-config')(
  cache: false,
  password: process.env.ENCRYPTION_PASSPHRASE2
  plaintext_file: 'other-secrets.yaml'
  encrypted_file: 'other-secrets.encrypted'
)
```

## Config file
It can read YAML or JSON and returns a JavaScript object.
What configuration it returns depends on `process.env.NODE_ENV`.
Each environment gets its own top-level key.
Settings common to all environments can be placed in the 'common' key.
Any values in the environment keys will override or be added to the values in 'common'.

Example file:

```yaml
common:
  session:
    secret: 'express session secret'
  auth:
    user: 'test'
    pass: 'test'
development:
  mongo:
    db_uri: 'mongodb://localhost:27017/users'
production:
  auth:
    user: 'admin'
    pass: 'very long secure password'
  mongo:
    db_uri: 'mongodb://user:password@my.domain.com:27017/users'
  google_analytics:
    WebPropertyID: 'UA-12345678-9'
```

When run with NODE_ENV=development, `secrets` would equal:
```javascript
{
  session: {
    secret: 'express session secret'
  },
  auth: {
    user: 'test',
    pass: 'test'
  },
  mongo: {
    db_uri: 'mongodb://localhost:27017/users'
  }
}
```

But when run with NODE_ENV=production, `secrets` would equal instead:
```javascript
{
  session: {
    secret: 'express session secret'
  },
  auth: {
    user: 'admin',
    pass: 'very long secure password'
  },
  mongo: {
    db_uri: 'mongodb://user:password@my.domain.com:27017/users'
  },
  google_analytics: {
    WebPropertyID: 'UA-12345678-9'
  }
}
```
