require 'spec_helper'

listen_port = 80

#複数パッケージ（git、gcc）のインストール確認
%w{git gcc}.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

#yarn、nodeのバージョン確認
describe command('yarn -v') do
  let(:disable_sudo) {true}
  its(:stdout) { should match /1\.22\.19/ }
end

describe command('node -v') do
  let(:disable_sudo) {true}
  its(:stdout) { should match /17\.9\.1/ }
end

#nginxのインストール確認
describe package('nginx') do
  it { should be_installed }
end

#nginxとpumaの自動実行、現実行確認
describe service('nginx') do
    it { should be_enabled }
    it { should be_running }
end

describe service('puma') do
    it { should be_enabled }
    it { should be_running }
end

#80ポートが繋げるかの確認
describe port(listen_port) do
  it { should be_listening }
end

#接続確認
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
