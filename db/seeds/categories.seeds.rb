file = Psych.load_file("db/seeds/categories.yml")
file["categories"].each do |params|
  Category.find_or_create_by(params)
end
