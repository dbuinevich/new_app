# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, :all
        can :manage, User
        cannot :create, Offer
      elsif user.id == nil
        can :read, Offer
        cannot :create, Offer
      else
        can :read, Offer
        can :manage, Offer, user_id: user.id
        cannot :manage, Brand
        cannot :manage, Model
        
      end
  end
end
