  desc "Remaking data"
  task remake_data: :environment do
    puts "Creating admin"
    Rake::Task["create_admin"].invoke
    puts "create category"
    Rake::Task["create_category"].invoke     
  end
  desc "Creating admin"
  task create_admin: :environment do
    Rake::Task["db:migrate:reset"].invoke
    User.create name: "Admin", email: "admin@gmail.com",
      password: "12345678", password_confirmation: "12345678", role: 1
  end
  desc "create category"
  task create_category: :environment do
    Rake::Task["db:migrate:reset"].invoke
    Category.create title: "food", parent_id: nil
    Category.create title: "drink", parent_id: nil
  end
