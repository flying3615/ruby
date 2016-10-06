class Probe

  def deploy(deploy_time, return_time)
    puts "Deploying"
  end

  def take_sample
    #do generic sampling
  end

end


class MineralProbe < Probe

  def deploy(deploy_time)
    puts "Preparing sample chamber"
    super(deploy_time,Time.now+2)
  end

  def dock
    puts "dock for MineralProbe"
  end

end

MineralProbe.new.deploy(Time.now)
