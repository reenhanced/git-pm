desc 'Setup your GitHub repo to use GitPM'
command :init do |c|
  c.desc 'sets up your GitHub repo to use GitPM'
  c.action do |global_options, options, args|
    puts "Setting up GitHub connection"
    GitReflow.setup
    puts "Adding project to Git-PM"
    puts "Current path #{Dir.pwd}"
  end
end
