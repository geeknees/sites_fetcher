require "sites_fetcher/version"
require 'open-uri'
require 'nkf'

module SitesFetcher
  def self.fetch(url, regexp)
    open(url) do |f|
      f.read.scan(regexp) {|m| puts NKF.nkf('-w', m.join)}
    end
  end
end
