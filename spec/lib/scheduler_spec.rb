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

    context '23時59分59秒を与える' do
      let(:scheduler){ Scheduler.new(hour: 23, min: 59, sec: 59) }

      it '文字列表現は文字列 "59 59 23" となる' do
        expect(scheduler.to_s).to eq '59 59 23'
      end
    end
  end

  describe '時刻が一致するかを判断する' do
    context 'スケジューラー設定を18時9分32秒で生成する' do
      let(:scheduler){ Scheduler.new(hour: 18, min: 9, sec: 32) }

      it '時刻は18時9分32秒と一致する' do
        expect(scheduler.match?(hour: 18, min: 9, sec: 32)).to eq true
      end

      it '時刻は8時7分15秒と一致しない' do
        expect(scheduler.match?(hour: 8, min: 7, sec: 15)).to eq false
      end
    end
  end
end