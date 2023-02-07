# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.SlimBaseResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Count,
    :Prices,
    :Detail
  ]

  @type t :: %__MODULE__{
    :Count => integer(),
    :Prices => float() | nil,
    :Detail => [IndaHr.Model.HistoryDetail.t] | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.SlimBaseResponse do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Detail, :list, IndaHr.Model.HistoryDetail, options)
  end
end
