class CommentPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def show?
    true
  end
  
  def create?
    true
  end

  def update?
    user == comment.author
  end
  
  def edit?
    user == comment.author
  end

  def destroy?
    user == comment.author
  end
end
