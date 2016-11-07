Paperclip.interpolates(:asset_host) do |attachment, style|
  "#{Rails.application.config.action_controller.asset_host.call}/#{attachment.path(style).sub(%r{\A/}, "".freeze)}"
end
