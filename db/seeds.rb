# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "blog post #{blog}",
    body: "some content some content some content some content some content some content
     some content some content some content some content some content some content some 
     content some content some content some content some content some content some content 
     some content some content some content some content some content some content some 
     content some content some content some content some content"
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Briefcase.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My service",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque imperdiet mauris 
      eget elit hendrerit tincidunt et quis lacus. Sed vitae venenatis est. Quisque vel neque a 
      nulla hendrerit congue. Aenean pretium, orci ultrices placerat accumsan, tellus ante tincidunt 
      tellus, nec hendrerit massa neque porttitor tellus. Curabitur metus velit, ultricies sed 
      imperdiet placerat, pharetra vel ante. Maecenas vitae rutrum nunc, at pellentesque massa. 
      Suspendisse sapien lacus, pharetra eget leo ac, posuere sodales leo. Nulla cursus tellus vitae 
      sapien pharetra, in porta orci aliquet.",
    main_image: "https://place-hold.it/600x400",
    thumb_image: "https://place-hold.it/300x200"
  )
end

puts "9 portfolio_items created"
