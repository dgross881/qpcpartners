class ApplicationController < ActionController::Base
  prepend_before_filter :set_user_language
  protect_from_forgery with: :exception

  def default_url_options(options={})
    { locale: I18n.locale }.merge(options)
  end

  def set_user_language
    I18n.locale = \
      if params[:locale] && Rails.application.config.i18n.available_locales.include?(params[:locale])
        params[:locale]
      elsif respond_to?(:config_locale, true) && !config_locale.blank?
        config_locale
      else
        Rails.application.config.i18n.default_locale || I18n.default_locale
      end
  end
end
