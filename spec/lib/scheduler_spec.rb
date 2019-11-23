RSpec.describe Scheduler do
  describe 'スケジューラー設定オブジェクトを作成する' do
    context '0時 0分 0秒 を与える' do
      let(:scheduler){ Scheduler.new(hour: 0, min: 0, sec: 0) }

      it '設定オブジェクトが正常に作成される' do
        expect{ scheduler }.not_to raise_error
      end
    end

    context '引数をを与えない' do
      let(:scheduler){ Scheduler.new }

      it '設定オブジェクトの作成で例外が発生する' do
        expect{ scheduler }.to raise_error(ArgumentError)
      end
    end
  end

  describe 'スケジューラーの文字列表現を取得する' do
    context '18時9分32秒を与える' do
      let(:scheduler){ Scheduler.new(hour: 18, min: 9, sec: 32) }

      it '文字列表現は文字列 "32 9 18" となる' do
        expect(scheduler.to_s).to eq '32 9 18'
      end
    end
  end
end