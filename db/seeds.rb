 require 'random_data'
 
 # Create Wiki Posts
 50.times do
   Wiki.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 
  puts "Seed finished"
 puts "#{Wiki.count} Wiki posts created"