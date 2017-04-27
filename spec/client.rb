class Client < Dullahan::Agent
  def crawl
    visit('http://yanmaga.jp/contents/demichanhakataritai/')
    ss('screen_shot_1', save_dir: 'tmp/ss')
  end
end
