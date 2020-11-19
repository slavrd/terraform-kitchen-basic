control 'user_input' do

    title 'Module output based on user input'
    desc 'Verifies the module output is correct based on a user input.'

    describe input('module_output') do
        it { should eq input('input_user_input')}
    end
end