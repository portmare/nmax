RSpec.describe Nmax do
  let(:argv_with_3) { %w[3] }
  let(:argv_with_100) { %w[100] }

  it 'has a version number' do
    expect(Nmax::VERSION).not_to be nil
  end

  context 'output' do
    let(:sample_data) { (0..9).map { |x| x.to_s * (1000 + x) } }

    before :each do
      allow(STDIN).to receive(:each_line).and_return(sample_data)
    end

    it 'has correct count of numbers' do
      expect(Nmax.run(argv_with_3).size).to eq(3)
    end

    it 'has correct max number' do
      expect(Nmax.run(argv_with_3).max).to eq(('9' * 1000).to_i)
    end

    it 'has correct min number' do
      expect(Nmax.run(argv_with_100).min).to eq(0)
    end
  end

  context 'output has empty array' do
    let(:sample_data_2) { %w[AAA BBB CCC DDD EEE FFF] }
    let(:sample_data_3) { [] }

    it 'for data without numbers' do
      allow(STDIN).to receive(:each_line).and_return(sample_data_2)
      expect(Nmax.run(argv_with_3)).to eq([])
    end

    it 'for empty input data' do
      allow(STDIN).to receive(:each_line).and_return(sample_data_3)
      expect(Nmax.run(argv_with_3)).to eq([])
    end
  end

  context 'raise ArgumentError' do
    let(:argv_empty) { [] }
    let(:argv_with_2_arguments) { %w[1 2] }
    let(:argv_with_text) { %w[count] }

    it 'if arguments count is wrong' do
      expect { Nmax.run(argv_with_2_arguments) }.to raise_error(ArgumentError, 'wrong number of arguments (given 2, expected 1)')
      expect { Nmax.run(argv_empty) }.to raise_error(ArgumentError, 'wrong number of arguments (given 0, expected 1)')
    end

    it 'if arguments is a String' do
      expect { Nmax.run(argv_with_text) }.to raise_error(ArgumentError, 'argument must be a Integer')
    end
  end
end
