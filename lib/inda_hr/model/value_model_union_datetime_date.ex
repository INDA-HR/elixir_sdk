# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.ValueModelUnionDatetimeDate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Value
  ]

  @type t :: %__MODULE__{
    :Value => inda_hr.Model.Value.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ValueModelUnionDatetimeDate do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Value, :struct, inda_hr.Model.Value, options)
  end
end

