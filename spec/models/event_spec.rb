require 'rails_helper'

describe Event do
	describe '#rails?' do
		context '#name が "Rails勉強会" のとき' do
			it 'true を返すこと' do
				event = create(:event, name: 'Rails勉強会')
				expect(event.rails?).to eq true
			end
		end

		context '#name が "Ruby勉強会" のとき' do
			it 'false を返すこと' do
				event = create(:event, name: 'Ruby勉強会')
				expect(event.rails?).to eq false
			end
		end
	end
end
