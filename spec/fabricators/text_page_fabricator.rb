Fabricator(:text_page) do
  title { Faker::Lorem.words.join(" ") }
  content { Faker::Lorem.sentences(10) }
  slug "MyString"
end
