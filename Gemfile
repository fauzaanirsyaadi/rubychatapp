source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Framework
gem 'rails', '~> 7.2', '>= 7.2.1'

# Database
gem 'pg', '>= 1.5'

# App server
gem 'puma', '~> 6.4'

# Assets (Sprockets pipeline)
gem 'sassc-rails'            # SCSS untuk Sprockets
gem 'terser'                 # JS compressor

# Frontend lama (dipertahankan untuk kompatibilitas)
gem 'coffee-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jquery-rails', '>= 4.6'
gem 'bootstrap', '>= 5.0'

# Utilities
gem 'jbuilder', '~> 2.12'
gem 'pusher', '>= 2.0'
# Catatan: Figaro tidak lagi aktif dikembangkan, tapi tetap bisa dipakai.
# Jika tetap ingin, pertahankan:
gem 'figaro', '>= 1.2'
# Alternatif yang lebih modern:
# gem 'dotenv-rails', groups: [:development, :test]

# Windows tzinfo data
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  # Ganti byebug (deprecated) dengan debug
  gem 'debug', '>= 1.9'
end

group :development do
  gem 'web-console', '>= 4.2'
  gem 'listen', '>= 3.8'
  # Spring sudah deprecated/diarsipkan, sebaiknya dihapus
  # gem 'spring'
  # gem 'spring-watcher-listen', '>= 2.1'
  # Opsional untuk percepat boot (aman di Win)
  gem 'bootsnap', '>= 1.18', require: false
  gem 'wdm', '>= 0.1.0', platforms: [:mingw, :mswin, :x64_mingw]
  gem 'fiddle'
end