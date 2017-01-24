Dir[File.join(Rails.root, 'db', 'seeds', '*.seeds.rb')].sort.each { |seed| load seed }
