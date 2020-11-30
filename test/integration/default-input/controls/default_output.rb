control 'default_output' do

    title 'Default module output'
    desc 'Verifies the default module output.'

    describe input('module_output') do
        it { should eq 'default'}
    end
end
