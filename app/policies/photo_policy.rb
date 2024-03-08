class PhotoPolicy < ApplicationPolicy
  attr_reader :user, :photo

  def initialize(user, photo)
    @user = user
    @photo = photo
  end

  def create?
    true
  end

  def show?
    user == photo.owner || (photo.owner.followers.include?(user) && !photo.owner.pending_received_follow_requests.exists?(sender_id: user.id))
  end

  def update?
    user == photo.owner 
  end

  def destroy?
    user == photo.owner
  end
end
