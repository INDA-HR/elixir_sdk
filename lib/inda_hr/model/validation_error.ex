# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.ValidationError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :loc,
    :msg,
    :type
  ]

  @type t :: %__MODULE__{
    :loc => [inda_hr.Model.LocationInner.t],
    :msg => String.t,
    :type => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ValidationError do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:loc, :list, inda_hr.Model.LocationInner, options)
  end
end

