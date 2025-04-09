

//usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
|email               |string  |null false,unique true
|encrypted_password  |string  |null false
|name                |string  |null false
|profile             |text    |null false
|occupation          |text    |null false
|position            |text    |null false

has_many :prototypes
has_many :comments



//prototypesテーブル
| Column      | Type      | Options     |
| ------------| ------    | ----------- |
|title        |string     |null false
|catch_copy   |text       |null false
|concept      |text       |null false
|user         |references |null false

belongs_to :user
has_many :comments



//commentsテーブル
| Column      | Type      | Options     |
| ------------| ------    | ----------- |
|content      |test       |null false
|prototypes   |references |null false
|user         |references |null false

belongs_to :user
belongs_to :comments
