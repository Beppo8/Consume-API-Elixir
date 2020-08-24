defmodule ConsumirApi do
 
  def bitcoin do
    HTTPotion.start

    request("https://api.coinmarketcap.com/v1/ticker/bitcoin/")
    |> body
    |> parse_body_to_tuple
    |> get_list_per_tuple
    |> get_map_to_list
    |> create_message
    |> show_message
  end

  defp request(url) do
    HTTPotion.get url
  end

  defp body(response) do
    response.body
  end

  defp parse_body_to_tuple(body) do
    Poison.Parser.parse body
  end

  defp get_list_per_tuple(tuple) do
    elem(tuple, 1)
  end

  defp get_map_to_list(list) do
    list |> Enum.at 0
  end

  defp create_message(map) do
    "> #{map["name"]} #{map["symbol"]} tiene un precio actual de #{map["price_usd"]}"
  end

  defp show_message(message) do
    IO.puts message
  end

end
