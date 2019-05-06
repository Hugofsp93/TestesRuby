# require 'ability_admin'

class Ability
  include CanCan::Ability

  def initialize(user)

    can [:new, :create], User

    if (user)
      if (user.has_role? :admin)
        merge Abilities::Admin.new(user)
      end

      can [:index, :mark_read, :mark_all_read], Notification, user_id: user.id
      
      if user.roles.blank?
        can :manage, ProductList, user_id: user.id
        cannot [:index, :edit, :new], ProductName
        can [:create, :update, :destroy], ProductName
        can [:edit, :update], GlobalSetting, user_id: user.id
      end
    end
  end
end