# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalRequiredAndPreferredSeniorityValue do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Required,
    :Preferred
  ]

  @type t :: %__MODULE__{
    :Required => inda_hr.Model.SeniorityValue.t | nil,
    :Preferred => inda_hr.Model.SeniorityValue.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalRequiredAndPreferredSeniorityValue do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Required, :struct, inda_hr.Model.SeniorityValue, options)
    |> deserialize(:Preferred, :struct, inda_hr.Model.SeniorityValue, options)
  end
end

