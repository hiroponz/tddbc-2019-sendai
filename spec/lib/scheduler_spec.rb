RSpec.describe Scheduler do
  describe '0時 0分 0秒 をあたえて、スケジューラー設定オブジェクトを作成する' do
    let(:scheduler){ Scheduler.new(hour: 0, min: 0, sec: 0) }

    it do
      expect{ scheduler }.not_to raise_error
    end
  end
end