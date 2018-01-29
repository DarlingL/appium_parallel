#rakefile
class Device
  def self.one
    {
      udid: 'emulator-5554',
      platformName: 'ANDROID',
      platformVersion: '8.0.0',
      deviceName: 'emulator-5554',
      app: File.join(File.dirname(__FILE__), 'calculadora.apk'),
      wdaLocalPort: 8100
      
    }
  end

  def self.two
    {
      udid: 'emulator-5556',
      platformName: 'ANDROID',
      platformVersion: '7.1.1',
      deviceName: 'emulator-5556',
      app: File.join(File.dirname(__FILE__), 'calculadora.apk'),
      wdaLocalPort: 8200
      
    }
  end
end

desc 'Run tests with parallel thread'
task :paralelo do
  require 'thread'
  require_relative 'teste.rb'
  

  threads = []
  [Device.one, Device.two].each do |capability|
    threads << Thread.new do
      TestParallelRunThread.new(capability).test_run
    end
  end

  threads.each(&:join)
end

