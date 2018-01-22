# create categories

categories_list = [{ name: 'General' }, { name: 'Dev Tools' }, { name: 'Ruby' }, { name: 'C#' }, { name: 'Javascript' }]

new_count = upd_count = 0
categories_list.each do |cat| 
    new_cat = Category.create(cat)
    new_cat.new_record? ? new_count += 1 : upd_count += 1
end

puts "Seeding categories: #{new_count} new, #{upd_count} updated"



