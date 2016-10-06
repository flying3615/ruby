# used as a timer

def with_timing
  start = Time.now
  if block_given?
    yield
    puts "do yield task has been taken time by #{Time.now-start} seconds"
  end
end

def run_operation_1
  sleep 1
end

def run_operation_2; end

#output all time costs
with_timing do
  run_operation_1
  run_operation_2
end

# used as a transaction wrapper

class Database
  def transaction
    start_transaction
    begin
      yield
    rescue DBError =>e
      rollback_transaction
      log_error e.message
    end
    commit_transaction
  end
end

DB = Database.new
DB.transaction do
  #update multiple records
end