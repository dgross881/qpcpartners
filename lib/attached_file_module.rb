module AttachedFileModule
  extend ActiveSupport::Concern
  module ClassMethods
    def attached_file_module(name, url_path, shared_options = {})
      if Rails.env.production? || Rails.env.staging?
        production_options = { 
                                :path =>"#{Rails.env}#{url_path}",
                                :storage => :fog,
                                :fog_credentials => "#{Rails.root}/config/gce.yml",
                                :fog_directory => "qpcpartners"
                            }

        has_attached_file name, production_options.merge(shared_options)
      else
        dev_options = { url: url_path, path: ":rails_root/public#{url_path}" }

        has_attached_file name, dev_options.merge(shared_options)
      end
    end
  end
end
