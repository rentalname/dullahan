require "spec_helper"

RSpec.describe Dullahan do
  before do
    Dullahan.setup(bin: '/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary')
  end

  let(:client){ Client.new }

  it "take a screen_shot" do
    client.crawl
  end
end
