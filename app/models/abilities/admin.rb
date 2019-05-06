module Abilities
	class Admin
	  include CanCan::Ability

	  def initialize(user)
	  	# before_ability(user)

			can :manage, :all
			can :manage, User
			can :manage, ProductList
			can :manage, GlobalSetting
			can :mange, ProductName
	    cannot :manage, Notification
			can :destroy, User
	    
	    # after_ability(user)
	  end
	end
end