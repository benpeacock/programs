class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    raise Pundit::NotAuthorizedError, "Must be logged in" unless user
    @user = user
    @record = record
  end

  def index?
    user.present? && user.role?(:user)
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    user.present? && user.role?(:admin)
  end

  def new?
    create?
  end

  def update?
    user.present? && user.role?(:admin)
  end

  def edit?
    update?
  end

  def destroy?
    # Leave this default for all objects.  Only admins can destroy.
    user.present? && user.role(:admin)
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end
end

