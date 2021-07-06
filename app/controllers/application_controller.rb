# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  # URLパラメータにロケール情報を渡すという処理
  def default_url_options
    { locale: I18n.locale }
  end

  # リンクの多言語化に対応する
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
