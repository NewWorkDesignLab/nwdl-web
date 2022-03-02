# Load Custom Parts for Spina
Rails.application.reloader.to_prepare do
  Spina::Part.register(Spina::Parts::Lable)
  Spina::Part.register(Spina::Parts::Article)
  Spina::Part.register(Spina::Parts::User)
  Spina::Part.register(Spina::Parts::Datetime)
  Spina::Part.register(Spina::Parts::Editor)
end
