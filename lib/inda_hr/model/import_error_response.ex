# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.ImportErrorResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :InternalID,
    :Error
  ]

  @type t :: %__MODULE__{
    :InternalID => inda_hr.Model.Internalid.t,
    :Error => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ImportErrorResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:InternalID, :struct, inda_hr.Model.Internalid, options)
  end
end

