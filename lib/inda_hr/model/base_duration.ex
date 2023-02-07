# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.BaseDuration do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Details,
    :Value
  ]

  @type t :: %__MODULE__{
    :Details => IndaHr.Model.SlimBaseDetails.t | nil,
    :Value => integer() | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.BaseDuration do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Details, :struct, IndaHr.Model.SlimBaseDetails, options)
  end
end
