# require 'ability_admin'

class Ability
  include CanCan::Ability

  def initialize(user)

    can [:new, :create], User
    
    if (user)
      if (user.has_role? :admin)
        merge Abilities::Admin.new(user)
      end
    end
    
    if user.roles.blank?
      can [:index, :mark_read, :mark_all_read], Notification, user_id: user.id  
      can [:edit, :update], GlobalSetting, user_id: user.id
      can :manage, ProductList, user_id: user.id
      cannot [:index, :edit, :new], ProductName
      can [:create, :update, :destroy], ProductName
    end
  end
end