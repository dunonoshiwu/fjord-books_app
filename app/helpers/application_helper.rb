# frozen_string_literal: true

module ApplicationHelper
  def name_or_email(user_id)
    user = User.find(user_id)
    user.name.presence || user.email
  end
end
