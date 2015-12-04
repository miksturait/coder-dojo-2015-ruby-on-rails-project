# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Coworker.delete_all
Kudo.delete_all

[
    %w(Irek Skrobiś i.skrobis@selleo.com http://selleo.com/wp-content/uploads/2014/04/is_headshot_selleo-1.jpg),
    %w(Michał Czyż m.czyz@selleo.com http://selleo.com/wp-content/uploads/2014/03/mc_headshot.png),
    %w(Tomek Noworyta t.noworyta@selleo.com http://selleo.com/wp-content/uploads/2014/04/is_headshot_selleo-1.jpg),
    %w(Wojtek Ryrych w.ryrych@selleo.com http://selleo.com/wp-content/uploads/2014/03/wr_headshot.png),
    %w(Tomasz Dudzik t.dudzik@selleo.com http://selleo.com/wp-content/uploads/2014/04/tommy-1.png)
].each do |first_name, last_name, email, avatar_url|
  Coworker.create(first_name: first_name, last_name: last_name, email: email, avatar_url: avatar_url).tap do |coworker|
    (rand(5)+1).times do
      coworker.kudos.create(value: rand(5)+1, comment: (':-) ' * rand(8)))
    end
  end
end
