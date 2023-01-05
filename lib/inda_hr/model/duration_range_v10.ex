# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.DurationRangeV10 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Range",
    :"Score"
  ]

  @type t :: %__MODULE__{
    :"Range" => inda_hr.Model.Range2.t | nil,
    :"Score" => float()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.DurationRangeV10 do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Range", :struct, inda_hr.Model.Range2, options)
  end
end
