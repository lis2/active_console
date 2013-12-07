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

Aliases
-------

```ruby
User.w(name: "test").o("name").li(1).f
# User.where(name: "test").order("name").limit(1).first
```

Similar
-------

```ruby
user = User.last
#<User id: 2, name: "John", email: "test@mailinator.com">
user.similar(:name, :email)
# User.where(name: "John", email: "test@mailinator.com")
```

