class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request
  end

  def create?
    true
  end

  def show?
    # user == photo.owner || !photo.owner.private? || photo.owner.followers.include?(user)
    true
  end

  def update?
    user == follow_request.recipient || user == follow_request.sender
  end

  def destroy?
    user == follow_request.recipient || user == follow_request.sender
  end
end
