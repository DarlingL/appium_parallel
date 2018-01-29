# test file
require 'appium_lib'


def des_server_caps
  {
      debug: true,
      server_url: "#{ENV['appium_server'] ||= 'http://127.0.0.1:4723'}/wd/hub",
      wait: 25,
      wait_timeout: 20,
      wait_interval: 0.3
  }
end

class TestParallelRunThread
  def initialize(capability)
    @capability = capability
  end

  def setup
    @appium = Appium::Driver.new({ caps: @capability, appium_lib: des_server_caps }, false)
    @appium.start_driver
  end

  def teardown
    @appium.quit_driver
    puts "finish: #{@capability}"
  end

  def test_run
    setup
    @appium.find_element(id: 'et_nota1').send_keys('8')
    @appium.find_element(id: 'et_nota2').send_keys('8')
    @appium.find_element(id: 'et_nota3').send_keys('8')
    @appium.back
    @appium.scroll_to_exact('CALCULAR')
    @appium.find_element(id: 'button').click
    @appium.scroll_to_exact('Nota 1:')
    @appium.find_element(:xpath, "//*[@text='Aprovado']").displayed?
    teardown 
end
end

