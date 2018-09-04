def auto_build
  return Time.now.strftime("%d/%m/%Y %H:%M")
end

def run_tests(platform, browser, version, build)
  system("platform=\"#{platform}\" browserName=\"#{browser}\" version=\"#{version}\" build=\"#{build}\" parallel_split_test spec")
end 

task :windows_10_chrome_latest do
  run_tests('Windows 10', 'chrome', 'latest', auto_build)
end

task :windows_10_firefox_latest do
  run_tests('Windows 10', 'firefox', 'latest', auto_build)
end

task :os_x_10_11_chrome_latest do
  run_tests('OS X 10.11', 'chrome', 'latest', auto_build)
end

task :win7_chrome do
  run_tests('Windows 7', 'chrome', '58', auto_build)
end

task :win_10_ff_old do
  run_tests('Windows 10', 'firefox', '52', auto_build)
end

task :mac_safari do
  run_tests('OS X 10.12', 'safari', 'latest', auto_build)
end

task :mac_safari_new do
  run_tests('OS X 10.13', 'safari', 'latest', auto_build)
end

task :win10_edge do
  run_tests('Windows 10', 'MicrosoftEdge', '17.17134', auto_build)
end

task :win10_edge_old do
  run_tests('Windows 10', 'MicrosoftEdge', '16.16299', auto_build)
end

task :win7_ie11 do
  run_tests('Windows 7', 'internet explorer', '11.0', auto_build)
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

