RSpec.describe Scheduler do
  describe 'スケジューラー設定オブジェクトを作成する' do
    context '0時 0分 0秒 を与える' do
      let(:scheduler){ Scheduler.new(hour: 0, min: 0, sec: 0) }

      it '設定オブジェクトが正常に作成される' do
        expect{ scheduler }.not_to raise_error
      end
    end

    context '引数をを与えない' do
      let(:scheduler){ Scheduler.new() }

      it '設定オブジェクトの作成で例外が発生する' do
        expect{ scheduler }.to raise_error(ArgumentError)
      end
    end
  end
end