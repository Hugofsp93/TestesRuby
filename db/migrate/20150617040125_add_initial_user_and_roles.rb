class AddInitialUserAndRoles < ActiveRecord::Migration[4.2]
  def up
  	Role.create name: :admin unless Role.find_by_name(:admin)

    if (User.where(email: "crystian@roadmaps.com.br").count == 0)
      u = User.new(email: "crystian@roadmaps.com.br", password: "lklklklk", name: "Crystian Leão")
      u.save(validate: false)
      u.add_role :admin
    end
  end

  def down
  end
end
