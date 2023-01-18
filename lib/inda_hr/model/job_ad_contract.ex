# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.JobAdContract do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Type,
    :Duration,
    :StartDate,
    :EndDate
  ]

  @type t :: %__MODULE__{
    :Type => inda_hr.Model.ContractType.t,
    :Duration => inda_hr.Model.ValueModelInt.t | nil,
    :StartDate => inda_hr.Model.ValueModelDatetime.t | nil,
    :EndDate => inda_hr.Model.ValueModelDatetime.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobAdContract do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Type, :struct, inda_hr.Model.ContractType, options)
    |> deserialize(:Duration, :struct, inda_hr.Model.ValueModelInt, options)
    |> deserialize(:StartDate, :struct, inda_hr.Model.ValueModelDatetime, options)
    |> deserialize(:EndDate, :struct, inda_hr.Model.ValueModelDatetime, options)
  end
end

