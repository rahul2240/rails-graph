class GitapiController < ApplicationController
include HTTParty

  def index

        @a = Hash.new(0)

        a = 1
        stop = 0
        while(stop==0)
        @link = HTTParty.get('https://api.github.com/users/kunalvishnoi/repos?page='+ a.to_s)
        if @link.count<30
          stop=1
        end

        @link.each do |lin|
          if lin['language']!=nil
            x = lin['language'].downcase

            @a[x] += 1
          end
         end
         a+=1
       end
  end
end
