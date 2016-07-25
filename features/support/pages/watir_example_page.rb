class WatirExamplePage
    include PageObject

    page_url('http://bit.ly/watir-example')

    text_field(:name, :id => 'entry_1000000')
    text_area(:story, :id => 'entry_1000001')
    radio_button(:tool_watir, :id => 'group_1000002_1')
    radio_button(:tool_selenium, :id => 'group_1000002_2')
    checkbox(:language_ruby, :value => 'Ruby')
    checkbox(:language_java, :value => 'Java')
    checkbox(:language_python, :value => 'Python')
    select_list(:browser, :name => 'entry.1000004')
    button(:submit, :name => 'submit')

    def fill_form
        self.name = 'Eduardo Heinen'
        self.story = 'I rock'
        self.select_tool_watir
        self.check_language_ruby
        self.check_language_python
        self.browser = 'Chrome'
    end

end
