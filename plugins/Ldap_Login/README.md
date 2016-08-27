# Ldap_Login
LDAP authentication plugin for piwigo with user-group support

## Exmaple-Config for an M$-AD:

#### LDAP-Serververbindung
**LDAP-Server**: srv.emxample.com</br>
(x) **Secure connection** _(--> remember that the LDAPS-Server certificate must be imported on your piwigo server)_</br>
**LDAP-Port**: 636</br>

#### LDAP Attribute
**Base DN wo LDAP-Benutzer gefunden werden sollen (zB.: ou=users,dc=example,dc=com):**: cn=Users,dc=example,dc=com</br>
**Attribute entsprechend des Benutzernamens**: sAMACcountName</br>
**DN of group for membership-check (memberOf)**: dn=piwigo_users,cn=Users,dc=example,dc=com</br>

#### LDAP-Verbindungsreferenzen
**Bind DN im LDAP-Style (zB.: cn=admin,dc=example,dc=com).**: cn=binduser,cn=Users,dc=exmaple,dc=com</br>
**Bind passwort**: mysecret123</br>
</br>
_--> SAVE and enjoy :)_
