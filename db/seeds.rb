# create admin user
admin_user = { email: 'admin@forumapp', name: 'Administrator', password: 'pass@word' }
if User.all.size == 0
    user1 = User.create(admin_user)
    puts 'User admin successfully created!'
end


# create categories
categories_list = [
    { name: 'General' }, 
    { name: 'Dev Tools' }, 
    { name: 'Ruby' }, 
    { name: 'C#' }, 
    { name: 'Javascript' }
]
new_count = upd_count = 0
categories_list.each do |category| 
    category1 = Category.where(name: category[:name]).first_or_create(category)
    category1.new_record? ? new_count += 1 : upd_count += 1
end

puts "Seeding categories: #{new_count} new, #{upd_count} updated (reseted)!"


# create sample post
first_post = {
    category_id: Category.where(name: 'General').first.id,
    author_id: User.where(email: 'admin@forumapp').first.id,
    title: 'This is a sample post',
    post_body: 'Please, edit or delete this post. This is just a sample to check setup',
}
if Post.all.size == 0 
    post1 = Post.create(first_post)
    puts 'First post (sample) successfully created!'
end



