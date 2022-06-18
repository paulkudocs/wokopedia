---
id: 2n3xj
name: Documentation
file_version: 1.0.2
app_version: 0.8.5-0
file_blobs:
  app/models/user.rb: fbf1aa3e4d528bec50276aeef6be26aea00708f8
---

Initialize Roles
<!-- NOTE-swimm-snippet: the lines below link your snippet to Swimm -->
### 📄 app/models/user.rb
```ruby
⬜ 36     class User < ApplicationRecord
⬜ 37       devise :masqueradable, :database_authenticatable, :confirmable, :registerable, :trackable, :recoverable,
⬜ 38              :rememberable, :validatable, :omniauthable
🟩 39       # Roles, add other roles as required
🟩 40       enum role: {
🟩 41         user: 0,
🟩 42         member: 1
🟩 43       }, _prefix: true
🟩 44     
🟩 45       after_initialize :set_default_role, if: :new_record?
🟩 46       def set_default_role
🟩 47         self.role ||= :user
🟩 48       end
🟩 49     
⬜ 50       # Validations, Names, Avatars
⬜ 51       validates :email, presence: true
⬜ 52       validates :email, uniqueness: true
```

<br/>

Other Roles
<!-- NOTE-swimm-snippet: the lines below link your snippet to Swimm -->
### 📄 app/models/user.rb
```ruby
⬜ 57       has_many :notifications, as: :recipient
⬜ 58       has_many :services, dependent: :destroy
⬜ 59     
🟩 60       # Example role set method
🟩 61       def set_alt_role
🟩 62         case role.to_sym
🟩 63         when :member
🟩 64           self.role = :member
🟩 65         else
🟩 66           self.role = :user
🟩 67         end
🟩 68       end
🟩 69     end
⬜ 70     
```

<br/>

This file was generated by Swimm. [Click here to view it in the app](https://app.swimm.io/repos/Z2l0aHViJTNBJTNBcmFpbHMtNy1yYWNrLWF0dGFjayUzQSUzQXhob3N0Y29td2Vi/docs/2n3xj).