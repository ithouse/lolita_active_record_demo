Fabricator(:article) do
  title { Faker::Lorem.words.join(" ") }
  content { Faker::Lorem.sentences(10) }
  publication_date { rand(10.days).ago }
  draft false
  slug "MyString"
end
