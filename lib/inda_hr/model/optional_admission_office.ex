# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalAdmissionOffice do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Details,
    :Value
  ]

  @type t :: %__MODULE__{
    :Details => inda_hr.Model.OptionalAdmissionOfficeDetails.t | nil,
    :Value => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalAdmissionOffice do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Details, :struct, inda_hr.Model.OptionalAdmissionOfficeDetails, options)
  end
end

