defmodule Mix.Tasks.MixConsumirApi do
    
    use Mix.Task

    def run(_) do
        ConsumirApi.bitcoin
    end

end