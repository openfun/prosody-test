# Prosody testing

/!\ This project is a POC

This repos contains a docker-compose project running a [prosody](https://prosody.im/) server.
This configuration is not working for now, it's a POC to find the good configuration.

## What we want to test

We want to configure the prosody server to do the following tasks:

- [ ] Create a public virtual host accessible anonymously and bosh activated on
- [ ] Create a private virtual host accessible with a registered account
- [ ] Configure a MUC component:
  - [ ] Only an admin can create a room.
  - [ ] Room is accessible only once configured.
  - [ ] Anonymous users can access to created and configured room.
- [ ] create an admin user activated on the private virtual host
- [ ] connect to this stack using a known XMPP client like [pidgin](https://www.pidgin.im/) or [gajim](https://gajim.org/)

### Public virtual host

The public virtual host is named `marsha` and has the `bosh` module activated.
To access it using bosh: http://localhost:8061/http-bind
Otherwise, edit your `/etc/hosts` file and add `127.0.0.1 marsha` in it.

### Private virtual host

The private virtual host is name `private.marsha`.
To access it, edit your `/etc/hosts` file and add `127.0.0.1 private.marsha` in it.
The user created is `marsha@private.marsha` and its password is `mar$ha`

### MUC component

The MUC component is accessible at `conference.marsha` and is not exposed.
Only admin can create a room and should not be usable before configuring it.
