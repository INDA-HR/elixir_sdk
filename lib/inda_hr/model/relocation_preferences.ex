# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.RelocationPreferences do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Details,
    :RelocationDate
  ]

  @type t :: %__MODULE__{
    :Details => inda_hr.Model.RelocationBoolBaseModel.t | nil,
    :RelocationDate => inda_hr.Model.RangeDatetime.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RelocationPreferences do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Details, :struct, inda_hr.Model.RelocationBoolBaseModel, options)
    |> deserialize(:RelocationDate, :struct, inda_hr.Model.RangeDatetime, options)
  end
end

