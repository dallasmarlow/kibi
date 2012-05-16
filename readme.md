```ruby

ruby-1.9.3-p0 :001 > require 'kibi'
 => true 
ruby-1.9.3-p0 :005 > file = Pathname.new 'large_file.tgz'
 => #<Pathname:large_file.tgz> 
ruby-1.9.3-p0 :007 > Kibi.humanize file.size
 => [7.912345600314438, :gb]

```
