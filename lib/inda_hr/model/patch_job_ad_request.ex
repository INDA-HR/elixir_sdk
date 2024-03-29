# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.PatchJobAdRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Data,
    :Metadata
  ]

  @type t :: %__MODULE__{
    :Data => inda_hr.Model.JobadCommonOptionalData.t,
    :Metadata => inda_hr.Model.RequestMetadata.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.PatchJobAdRequest do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :struct, inda_hr.Model.JobadCommonOptionalData, options)
    |> deserialize(:Metadata, :struct, inda_hr.Model.RequestMetadata, options)
  end
end

