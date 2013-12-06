activeconsole
=============

Improvements and shortcuts for Rails console

Usage
=======

Agrep
-----

```ruby
User.last.agrep "oh"
# {"name"=>"John"}

User.last.agrep "mail"
# {"email"=>"test@mailinator.com"}
```
