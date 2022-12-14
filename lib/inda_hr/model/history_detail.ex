# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.HistoryDetail do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Indexname",
    :"Datetime",
    :"StatusCode",
    :"Advanced",
    :"Price",
    :"APICall"
  ]

  @type t :: %__MODULE__{
    :"Indexname" => String.t,
    :"Datetime" => String.t,
    :"StatusCode" => integer(),
    :"Advanced" => boolean(),
    :"Price" => float(),
    :"APICall" => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.HistoryDetail do
  def decode(value, _options) do
    value
  end
end

