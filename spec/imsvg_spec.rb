require "spec_helper"

describe Imsvg do 
	subject { Imsvg.new }

	describe '#convert' do
		let (:output) { subject.convert() }

		it 'get sample output' do
			expect(output).to eq "hello world!"
		end
	end
end