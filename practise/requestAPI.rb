def try(title, options = { }, &p)
  ee = '#{e}'
  tried_times = 0
  max_times = options[:max_times] || 3
  exceptions = options[:on] || Exception
  exceptions = [exceptions] if !exceptions.is_a?(Array)
  rescue_text = <<-EOF
      begin
        p.call
      rescue #{exceptions.join(',')} => e
        Rails.logger.info("#{title}发生异常#{ee}")
        if (tried_times += 1) < max_times
          Rails.logger.info("开始重试#{title}--第#{tried_times}次重试")
          retry
        end
        raise e
      end
  EOF
  eval rescue_text
end

try('某某api', :max_times => 2, :on => [Net::HTTPBadResponse, Timeout::Error]) do
  open(api_url)
end