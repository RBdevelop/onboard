require 'rufus-scheduler'
scheduler = Rufus::Scheduler.new


buzzwords = ['API Engineer', 'Tech Star', 'Marketing Guru', 'Growth Hacker', 'Data Scientist', 'Front-End Engineer', 'Rails Engineer'] 
buzzword_counts = Hash.new({ value: 0 })

SCHEDULER.every '2s' do
  random_buzzword = buzzwords.sample
  buzzword_counts[random_buzzword] = { label: random_buzzword, value: (buzzword_counts[random_buzzword][:value] + 1) % 30 }
  
  send_event('buzzwords', { items: buzzword_counts.values })
end