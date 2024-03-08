class LikePolicy < ApplicationPolicy
  attr_reader :user, :like

  def initialize(user, like)
    @user = user
    @like = like
  end
  def create?
    true
  end
  def show?
    user == 
  end
end
