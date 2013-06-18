# config/unicorn.rb
worker_processes 4 # amount of unicorn workers to spin up
                   # increasing this, within reason, can improve performance
timeout 60         # restarts workers that hang for 30 seconds