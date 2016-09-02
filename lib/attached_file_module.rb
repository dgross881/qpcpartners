module AttachedFileModule
  extend ActiveSupport::Concern
  module ClassMethods
    def attached_file_module(name, url_path, shared_options = {})
      if Rails.env.production? || Rails.env.staging?
      production_options = {
        storage: :s3,
        # s3_host_name: ENV['AWS_HOST_NAME'],
        s3_protocol: :https,
        s3_credentials: {
          bucket: ENV['AWS_S3_BUCKET'],
          access_key_id: ENV['AWS_ACCESS_KEY_ID'],
          secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
        },
        s3_region: ENV['AWS_S3_REGION'],
        url: ':s3_alias_url', # ':s3_domain_url', ':s3_path_url'
        path: "/#{Rails.env}/:class/:attachment/:id_partition/:style/:filename",
        # s3_headers: { 'Cache-Control' => 'max-age=315576000', 'Expires' => 10.years.from_now.httpdate },
        convert_options: { all: '-strip -auto-orient -colorspace sRGB -quality 80' }
      }

      has_attached_file name, production_options.merge(shared_options)
      else
        dev_options = { url: url_path, path: ":rails_root/public#{url_path}" }

        has_attached_file name, dev_options.merge(shared_options)
      end
    end
  end
end
