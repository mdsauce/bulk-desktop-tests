def run_tests(platform, browser, version)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" parallel_split_test spec")
end

def run_504_tests(platform, browser, version)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" parallel_split_test spec/504/test4_spec.rb")
end

task :windows_10_chrome_latest do
  run_tests('Windows 10', 'chrome', 'latest')
end

task :windows_10_firefox_latest do
  run_tests('Windows 10', 'firefox', 'latest')
end

task :os_x_10_11_chrome_latest do
  run_tests('OS X 10.11', 'chrome', 'latest')
end

task :win7_chrome do
  run_tests('Windows 7', 'chrome', '58')
end

task :win_10_ff_old do
  run_tests('Windows 10', 'firefox', '52')
end

task :mac10_12 do
  run_tests('OS X 10.12', 'chrome', 'latest')
end

task :mac_safari_new do
  run_tests('OS X 10.13', 'safari', 'latest')
end

task :win10_edge do
  run_tests('Windows 10', 'MicrosoftEdge', '17.17134')
end

task :win10_edge_old do
  run_tests('Windows 10', 'MicrosoftEdge', '16.16299')
end

task :win7_ie11 do
  run_tests('Windows 7', 'internet explorer', '11.0')
end

multitask :start => [
    :windows_10_chrome_latest,
    :windows_10_firefox_latest,
    :os_x_10_11_chrome_latest,
    :win7_chrome,
    :win_10_ff_old,
    :mac10_12,
    :mac_safari_new,
    :win10_edge,
    :win10_edge_old,
    :win7_ie11
  ] do
end

task :'504_win10_edge' do
  run_504_tests('Windows 10', 'MicrosoftEdge', '17.17134')
end

task :'504_mac_safari_new' do
  run_504_tests('OS X 10.13', 'safari', 'latest')
end

task :'504_win10_chrome' do
  run_504_tests('Windows 10', 'chrome', 'latest')
end

task :'504_win10_ff' do
  run_504_tests('Windows 10', 'firefox', 'latest')
end

multitask :test504 => [
  :'504_win10_edge',
  :'504_mac_safari_new',
  :'504_win10_chrome',
  :'504_win10_ff'
]