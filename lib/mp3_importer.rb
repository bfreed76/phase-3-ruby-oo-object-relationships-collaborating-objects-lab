require "pry"

class Mp3_importer

    def initialize(path)
        @path = path
    end

    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    end

    def Mp3_import
        files.each{|f| Song.new_by_filename(f)}
    end

end