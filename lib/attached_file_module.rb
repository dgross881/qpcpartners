module AttachedFileModule
  extend ActiveSupport::Concern
  module ClassMethods
    def attached_file_module(name, url_path, shared_options = {})
     # if Rails.env.production? || Rails.env.staging?
        production_options = { 
                                path: "production#{url_path}",
                                storage:  'fog',
                                fog_credentials: {
                                    provider: 'Google',
                                    google_storage_access_key_id: ENV['GOOGLE_ID'],
                                    google_storage_secret_access_key: ENV['GOOGLE_KEY']
                                  },
                                 fog_directory: "qpcpartners",
                                 headers: { 
                                  'Cache-Control' => 'max-age=315576000', 
                                  'Expires' => 10.years.from_now.httpdate 
                                }
                            }

        has_attached_file name, production_options.merge(shared_options)
    #  else
        #dev_options = { url: url_path, path: ":rails_root/public#{url_path}" }

        #has_attached_file name, dev_options.merge(shared_options)
      #end
    end
  end
end
