require 'fileutils'
require 'yaml'


def timestamps
  (Time.now.to_f * 1000).to_i
end

def save_evidence(scenario)
  evidence_dir = "evidence/#{Time.now.strftime('%F')}/#{ENV['CUCUMBER_MOBILE_EXECUTION']}"
  FileUtils::mkdir_p evidence_dir unless Dir.exist? evidence_dir
  screenshot_embed({:prefix=>evidence_dir, :name=>"#{timestamp}_#{scenario.feature.name}_#{scenario.name}_#{scenario.failed? ? 'Fail' : 'Pass'}.png"})
  rescue
    puts "Fail screenshot"
end

#function for evidence general
def save_evidence_execution_1
  evidence_dir = "evidence/#{Time.now.strftime('%F')}/#{ENV['CUCUMBER_MOBILE_EXECUTION']}"
  FileUtils::mkdir_p evidence_dir unless Dir.exist? evidence_dir
  screenshot_embed({:prefix=>evidence_dir, :name=>"#{timestamp}_evidence.png"})
end

def save_evidence_execution
save_screenshot("evidence/#{Time.now.strftime('%F')}/#{(Time.now.to_f * 1000).to_i}_#{$url}.png")
end

