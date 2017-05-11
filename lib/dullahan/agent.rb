class Dullahan::Agent
  attr_reader :session

  def initialize
    @session = Capybara::Session.new(:dullahan)
  end

  def ss(file_name, save_dir: '.', ext: :png, imgkit_options: {})
    session.save_screenshot
    # FileUtils.mkdir_p save_dir
    #
    # options = {quality: 70, "disable-smart-width": true, "width": 1280}.merge(imgkit_options)
    # File.open("#{save_dir}/#{file_name}.#{ext}", "wb") do |f|
    #   f.write IMGKit.new(session.body, options).to_img(ext.to_sym)
    # end
  end

  def finish!
    session.driver.quit
  end

  def method_missing(sym, *args)
    if session.respond_to?(sym)
      session.public_send(sym, *args)
    else
      super
    end
  end
end
