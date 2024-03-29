# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalResumeSalary do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Amount,
    :Currency,
    :Frequency,
    :Type
  ]

  @type t :: %__MODULE__{
    :Amount => inda_hr.Model.RangeFloat.t | nil,
    :Currency => inda_hr.Model.Currency.t | nil,
    :Frequency => inda_hr.Model.Frequency.t | nil,
    :Type => inda_hr.Model.BaseSalariesType.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalResumeSalary do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Amount, :struct, inda_hr.Model.RangeFloat, options)
    |> deserialize(:Currency, :struct, inda_hr.Model.Currency, options)
    |> deserialize(:Frequency, :struct, inda_hr.Model.Frequency, options)
    |> deserialize(:Type, :struct, inda_hr.Model.BaseSalariesType, options)
  end
end

