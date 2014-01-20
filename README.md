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

Association
------------

This helper will show the Activerecord relations for a given AR model

```
<Class>.rels
```

will return a relation hash array

```ruby
class User < ActiveRecord::Base
  has_many :roles
end

class Role < ActiveRecord::Base
  belongs_to :user
end

User.rels #=> [{:has_many=>:roles}]
```


Display columns
------------------

This helper will display all the columns of an AR object

```
<Class>.cols
```

with options
  
  comma seperated list of column names

```
<Class>.cols "name" #=> name is the column we are searching for
```

```
<Class>.cols name, emai #=> columns , which has the name 'name' and starting with ema
```

```ruby
# columns -> name
#         -> age
class User < ActiveRecord::Base

end

User.cols #=> [{"name"=>"varchar(255)"}, {"age" => "INTEGER"}]
User.cols name #=> [{"name"=>"varchar(255)"}
User.cols name,ag #=> [{"name"=>"varchar(255)"}, {"age" => "INTEGER"}]
```
