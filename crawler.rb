require 'fileutils'
require 'relaton_ietf'

FileUtils.rm_rf("data")
FileUtils.rm Dir.glob("index*")

RelatonIetf::DataFetcher.fetch("ietf-rfcsubseries")

system "zip index-v1.zip index-v1.yaml"
system "git add index-v1.zip index-v1.yaml"
