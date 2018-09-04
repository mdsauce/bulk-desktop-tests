def run_tests(platform, browser, version)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" parallel_split_test spec")
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

task :mac_safari do
  run_tests('OS X 10.12', 'safari', 'latest')
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
    :mac_safari,
    :mac_safari_new,
    :win10_edge,
    :win10_edge_old,
    :win7_ie11
  ] do
end

