class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def create?
    true
  end

  def update?
   if user == comment.author
    true
   end
  end

  def destroy?
    if user == comment.author
      true
    end
  end
end
