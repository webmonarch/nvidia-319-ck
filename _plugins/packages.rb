module Arch
  class DirectoryPage < Jekyll::Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'directory_listing.html')
    end 
  end
  class Packages < Jekyll::Generator
    def generate(site)
      dirs = Dir.glob('packages/**')
      dirs << 'packages'

      dirs.each do |d|
        p = Arch::DirectoryPage.new(site, site.source, d, 'index.html') 
        p.data['files'] = []

        Dir.new(File.dirname(p.path)).each do |f|
          path = File.join('.', p.dir, f)
          p.data['files'] << { 'name' => f, 'size' => File.size(path), 'modified' => File.mtime(path) }
        end

        p.data['files'].sort! { |a,b| a['name'] <=> b['name'] }
        p.data['title'] = "#{File.dirname p.path}"
        p.data['dir'] = File.dirname p.path

        site.pages << p
      end

      site.pages.each do |page|
        lvl = page.path.split('/').length
        page.data['relative'] = (lvl == 1) ? '.' : '.' + ('/..' * (lvl-1))
      end
    end
  end
end
