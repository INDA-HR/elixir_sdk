# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.RemoteWorkingFrequencyRange do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Range"
  ]

  @type t :: %__MODULE__{
    :"Range" => inda_hr.Model.RangeModelFloat.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RemoteWorkingFrequencyRange do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Range", :struct, inda_hr.Model.RangeModelFloat, options)
  end
end
