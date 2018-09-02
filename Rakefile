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
multitask :test_sauce => [
    :windows_10_chrome_latest,
    :windows_10_firefox_latest,
    :os_x_10_11_chrome_latest
  ] do
end

