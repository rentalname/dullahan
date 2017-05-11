class Client < Dullahan::Agent
  def crawl
    visit('https://railsguides.jp/')
    ss('screen_shot_1', save_dir: 'tmp/ss')
  end
end
