class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request 
  end 

  def create?
    true
  end 

  def update?
    true
  end

  def destroy
    true
  end

end
