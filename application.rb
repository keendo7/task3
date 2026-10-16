require 'sinatra'

get '/m_szczupak3_gmail_com' do
    x = params['x'].to_i || 0
    y = params['y'].to_i || 0
    
   return "NaN" if(x <= 0 || y <= 0)

    nww(x,y).to_s
end

private

def nww(x, y)
    (x * y) / nwd(x, y)
end

def nwd(x,y)
    while(y != 0) do
        rem = x % y
        x = y
        y = rem
    end
    x
end
