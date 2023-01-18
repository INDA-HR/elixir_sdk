# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.GetCompanyResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Data,
    :Metadata
  ]

  @type t :: %__MODULE__{
    :ID => String.t,
    :Data => inda_hr.Model.CompanyCommonData.t,
    :Metadata => inda_hr.Model.PublicMetadataModel.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.GetCompanyResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :struct, inda_hr.Model.CompanyCommonData, options)
    |> deserialize(:Metadata, :struct, inda_hr.Model.PublicMetadataModel, options)
  end
end

